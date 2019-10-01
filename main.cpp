#include <bits/stdc++.h>
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;


int num_img; //图片的张数
string path_fold_img; //图片文件夹的路径
double EX[30][3][4];
double IN[3][3]; //相机的内参
double M[30][3][4]; // M[i] = matIN * matEX[i]
int Picture[10][3022][4033];// 值为 0/1，1表述该点属于鼠标
//4032 × 3024
Mat matEX[30];
Mat matIN;
Mat matM[30];   // M[i] = matIN * matEX[i]
Mat matPicture[10];
int W[210][225][180];//只考虑了鼠标坐标系的范围, 值为 0/1，1表述该点属于鼠标

void init();
void sculpt();
void W2UV(int NO, double Xw, double Yw, double Zw, double &u, double &v);
void out();

int main(){
    init();
    sculpt();
    out();//以三维坐标的形式输出
    return 0;
}

void init(){
    
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
    }
    Mat temp(3,3,CV_64F,IN);
    matIN = temp.clone();
    cout<<matIN<<endl;
    
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
        imshow("matPicture["+to_string(i)+"]", matPicture[i]);
    }
    for(int no=0; no<num_img; no++){
        for(int i=0; i<matPicture[no].rows; i++){
            for(int j=0; j<matPicture[no].cols; j++){
//                cout<<(int)matPicture[no].at<uchar>(i,j)<<endl;
                Picture[no][i][j] = ((int)matPicture[no].at<uchar>(i,j))<100? 1:0; //如果颜色深的话就为鼠标
//                if(Picture[no][i][j]==1) cout<<"!";
            }
        }
    }
//    for(int no=0; no<num_img; no++){
//        Mat out(matPicture[no].size(), matPicture[no].type(), Scalar(255,255,255));
//        for(int i=0; i<matPicture[no].rows; i++){
//            for (int j=0; j<matPicture[no].cols; j++) {
//                if(Picture[no][i][j] == 1)circle(out, Point2i(j,i), 1, Scalar(0,0,0));
//            }
//        }
//        imshow("out", out);
//        waitKey(0);
//    }
}

void W2UV(int NO, double Xw, double Yw, double Zw, int &u, int &v){
    /**@brief Converts the coordinate in World space TO the coordinate in UV space
     NO means the number of the picture
     */
    double su = M[NO][0][0]*Xw + M[NO][0][1]*Yw + M[NO][0][2]*Zw + M[NO][0][3];
    double sv = M[NO][1][0]*Xw + M[NO][1][1]*Yw + M[NO][1][2]*Zw + M[NO][1][3];
    double s = M[NO][2][0]*Xw + M[NO][2][1]*Yw + M[NO][2][2]*Zw + M[NO][2][3];
    u = su/s;
    v = sv/s;
}

void sculpt(){
    memset(W,0,sizeof(W));
    //世界坐标系下鼠标的坐标范围是x:25-200 y:50-225 z:0-175
    for(int i=10; i<230; i++){
        for(int j=30; j<250; j++){
            for(int k=0; k<200; k++){
                int flag=1; int u,v;
                for(int no=0; no<num_img; no++){
                    W2UV(no, i, j, k, u, v);  //找对应UV图上的坐标
                    if(Picture[no][u][v] == 0) {  //如果该点不在物体上
                        flag = 0;
                        break;
                    }
                }
                if(flag) W[i][j][k]=1;
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
