#include <bits/stdc++.h>
#include <opencv2/opencv.hpp>
#include <pcl/visualization/cloud_viewer.h>
#include <pcl/io/pcd_io.h>
#include <pcl/io/io.h>

using namespace std;
using namespace cv;


typedef struct SearchWorldSpace{
    int xs, xe;
    int ys, ye;
    int zs, ze;
    SearchWorldSpace(){};
    SearchWorldSpace(int _xs, int _xe, int _ys, int _ye, int _zs, int _ze){
        xs = _xs; xe = _xe;
        ys = _ys; ye = _ye;
        zs = _zs; ze = _ze;
    };
}SWS;
SWS SearchWS;

int num_img; //图片的张数
string path_fold_img; //图片文件夹的路径
double EX[30][3][4];
double IN[3][3]; //相机的内参
double M[30][3][4]; // M[i] = matIN * matEX[i]
int Picture[10][3025][4040];// 值为 0/1，1表述该点属于鼠标
//4032 × 3024
Mat matEX[30];
Mat matIN;
Mat matM[30];   // M[i] = matIN * matEX[i]
Mat matPicture[10];
int W[230][250][250];//只考虑了鼠标坐标系的范围, 值为 0/1，1表述该点属于鼠标
long long preSum[230][250][250];//为W的的积分和

vector<pcl::PointXYZ> surface;



void init();
void sculpt();
void W2UV(int NO, double Xw, double Yw, double Zw, double &u, double &v);
void out();
void visualization();
void findSurface();
// void shade();

void debug();

int main(){
    init();
    sculpt();
    visualization();
    // findSurface();
    // shade();
    return 0;
}

void init(){
    
    //确立在三维空间中的搜索范围
    SearchWorldSpace tempSearchWS(0,220, 20, 250, 0, 175);
    SearchWS = tempSearchWS;

    //---读入txt文件
    num_img = 7;
    path_fold_img = "/Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/after_calibration/obj1/";
    ifstream fin1("/Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/after_calibration/obj1/ex_mat.txt");
    for(int i=0; i<num_img; i++){
        for(int j=0; j<3; j++){
            for(int k=0; k<4; k++){
                fin1>>EX[i][j][k];
            }
        }
    }
    fin1.close();
    ifstream fin2("/Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/after_calibration/obj1/in_mat.txt");
    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            fin2>>IN[i][j];
        }
    }
    fin2.close();
    
    //---接下来，将二维的数组存到Mat当中
    for(int i=0; i<num_img; i++){
        Mat temp(3, 4, CV_64F,EX[i]);
        matEX[i] = temp.clone();
        // cout<<matEX[i]<<endl;
    }
    Mat temp(3,3,CV_64F,IN);
    matIN = temp.clone();
    // cout<<matIN<<endl;
    
    //---接下来生成matM 和 M[][]
    for(int i=0; i<num_img; i++){
        matM[i] = matIN * matEX[i];
        //        cout<<matM[i]<<endl;
    }
    for(int k=0; k<num_img; k++){
        for(int i=0; i<3; i++){
            for(int j=0; j<4; j++){
                M[k][i][j] = matM[k].at<double>(i,j);
            }
        }
    }
    
    //接下来读入二值化的图像,并存成Picture[][][]的形式
    for(int i=0; i<num_img; i++){
        string img_path = path_fold_img + to_string(i+1) + ".jpg";
        matPicture[i] = imread(img_path, 0);
    }
    for(int no=0; no<num_img; no++){
        for(int i=0; i<matPicture[no].rows; i++){
            for(int j=0; j<matPicture[no].cols; j++){
                Picture[no][i][j] = ((int)matPicture[no].at<uchar>(i,j))<100? 1:0; //如果颜色深的话就为鼠标
            }
        }
    }
    
}

void W2UV(int NO, double Xw, double Yw, double Zw, int &u, int &v){
    /**@brief Converts the coordinate in World space TO the coordinate in UV space
     NO means the number of the picture
     */
    
    double su = M[NO][0][0]*((1.0)*Xw) + M[NO][0][1]*((1.0)*Yw) + M[NO][0][2]*((1.0)*Zw) + M[NO][0][3];
    double sv = M[NO][1][0]*((1.0)*Xw) + M[NO][1][1]*((1.0)*Yw) + M[NO][1][2]*((1.0)*Zw) + M[NO][1][3];
    double s = M[NO][2][0]*((1.0)*Xw) + M[NO][2][1]*((1.0)*Yw) + M[NO][2][2]*((1.0)*Zw) + M[NO][2][3];                                         
    u = (int) su/s;
    v = (int) sv/s;
}

void debug(){   //遍历三维空间，变换到标号为no的二维图上。看看变换成了哪些点
    for(int no=0; no<7; no++){
        Mat out(matPicture[no].size(), matPicture[no].type(), Scalar(255,255,255));
        for(int i=0; i<200; i++){
            for(int j=0; j<225; j++){
                for(int k=0; k<175; k++){
                    int u,v;
                    W2UV(no, i, -1*j, -1*k,u,v);  //这里的no是指参数矩阵的编号
                    if(u>0 && v>0 && u<matPicture[no].cols && v<matPicture[no].rows)
                        circle(out, Point2i(u,v), 1, Scalar(0,0,0), 1);
                }
            }
        }
    }
}

void sculpt(){
    memset(W,0,sizeof(W));
    //世界坐标系下鼠标的坐标范围是x:25-200 y:50-225 z:0-175
    for(int i=10; i<200; i++){
        for(int j=30; j<225; j++){
            for(int k=0; k<175; k++){
                int u,v;
                int cnt = 0;
                for(int no=0; no<num_img; no++){
                    W2UV(no, 1.0*i, -1.0*j, -1.0*k, u, v);  //找对应UV图上的坐标
                    if(u>0 && v>0 && u<matPicture[no].cols && v<matPicture[no].rows && Picture[no][v][u] == 1) {  //如果挂点在物体上
                        cnt++;
                    }
                }
                if(cnt>6) W[i][j][k]=1;
            }
        }
    }
}

void out(){
    //世界坐标系下鼠标的坐标范围是x:25-200 y:50-225 z:0-175
    ofstream fout("/Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/out_pcl/obj1.txt");
    for(int i=10; i<230; i++){
        for(int j=30; j<250; j++){
            for(int k=0; k<200; k++){
                if(W[i][j][k]==1) fout<<i<<","<<j<<","<<k<<","<<"255,255,0"<<endl;
            }
        }
    }
}

void visualization(){
    // pcl::visualization::CloudViewer viewer("3DViewer");
    pcl::PointCloud<pcl::PointXYZ> cloud;
    // pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);
    cloud.width = 1000000;
    cloud.height = 3;
    cloud.is_dense = false;
    cloud.points.resize(cloud.width * cloud.height);

    // for(size_t cnt = 0; cnt < cloud.points.size(); cnt++){
    int cnt = 0;
    for(int i=10; i<200; i++){
        for(int j=30; j<225; j++){
            for(int k=0; k<175; k++){
                if(W[i][j][k]==1) {
                    cloud.points[cnt].x = i;
                    cloud.points[cnt].y = j;
                    cloud.points[cnt].z = k;
                    cnt++;
                }
            }
        }
    }
    pcl::io::savePCDFileASCII ("test_pcd.pcd", cloud);
}



// s[i][j][k]=(s[i-1][j][k]+s[i][j-1][k]+s[i][j][k-1])-(s[i-1][j-1][k]+s[i-1][j][k-1]+s[i][j-1][k-1])+s[i-1][j-1][k-1]+a[i][j][k]

void findSurface(){
    
    memset(preSum,0,sizeof(preSum));
    preSum[0][0][0] = W[0][0][0];
    for(int i=1; i<220; i++){
        for(int j=1; j<225; j++){
            for(int k=1; k<175; k++){
                preSum[i][j][k] = preSum[i][j][k-1] + W[i][j][k];
            }
        }
    }
    for(int i=1; i<220; i++){
        for(int j=1; j<225; j++){
            for(int k=1; k<175; k++){
                preSum[i][j][k] += preSum[i][j-1][k];
            }
        }
    }
    for(int i=1; i<220; i++){
        for(int j=1; j<225; j++){
            for(int k=1; k<175; k++){
                preSum[i][j][k] += preSum[i-1][j][k];           
            }
        }
    }//https://www.luogu.org/blog/zhouzikai/ex-prefix

    surface.clear();
    //做三维的查分， 查分方块的大小为5*5*5

    for(int i=2; i<(200-2); i++){
        for(int j=2; j<(225-2); j++){
            for(int k=2; k>(175-2); k++){
                int u = i-2; int v = j-2; int w = k-2;
                int x = i+2; int y = j+2; int z = k+2;
                int cnt = preSum[x][y][z] - (preSum[u][y][z] + preSum[x][v][z] + preSum[x][y][w]) + (preSum[u][v][z] + preSum[u][y][w] + preSum[x][v][w]) - preSum[u][v][w];
                if(cnt < 8) surface.push_back(pcl::PointXYZ(i, j, k));
            }
        }
    }

    pcl::PointCloud<pcl::PointXYZ> cloud;
    cloud.width = surface.size();
    cloud.height = 2;
    cloud.is_dense = false;
    cloud.points.resize(cloud.width * cloud.height);
    cout<<"!?";
    for(auto val : surface){
        cloud.points.push_back(val);
        cout<<"!";
    }
    pcl::io::savePCDFileASCII("surface.pcd", cloud);
    
}
