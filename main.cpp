#include <bits/stdc++.h>
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;

int num_picture; //输入图片的张数
double EX[30][3][4]; 
double IN[3][3]; //相机的内参
double M[30][3][4]; // M[i] = matIN * matEX[i]
Mat matEX[30];
Mat matIN;
Mat matM[30];   // M[i] = matIN * matEX[i]
int W[210][225][180];//只考虑了鼠标坐标系的范围, 值为 0/1，1表述该点属于鼠标

void init();
void sculpt();
void W2UV(int NO, double Xw, double Yw, double Zw, double &u, double &v);

int main(){
    init();

    
    return 0;
}

void init(){

    //---读入txt文件
    cout<<"input the number of picture:"<<endl;
    cin>>num_picture;
    ifstream fin("after_calibration/obj1/ex_mat.txt");
    for(int i=0; i<num_picture; i++){
        for(int j=0; j<3; j++){
            for(int k=0; k<4; k++){
                fin>>EX[i][j][k]; 
            }
        }
    }
    fin.open("after_calibration/obj1/in_mat.txt");
    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            fin>>IN[3][3];
        }
    }
    fin.close();

    //---接下来，将二维的数组存到Mat当中
    for(int i=0; i<num_picture; i++){
        Mat temp(3, 4, CV_64F,EX[i]);
        temp.copyTo(matEX[i]);
    }
    Mat temp(3,3,CV_64F,IN);
    temp.copyTo(matIN);

    //---接下来生成matM 和 M[][]
    for(int i=0; i<num_picture; i++){
        matM[i] = matIN * matEX[i];
    }
    for(int k=0; k<num_picture; k++){
        for(int i=0; i<3; i++){
            for(int j=0; j<4; j++){
                M[k][i][j] = matM[k].at<double>(i,j);
            }
        }
    }
}

void W2UV(int NO, double Xw, double Yw, double Zw, double &u, double &v){
    /**@brief Converts the coordinate in World space TO the coordinate in UV space
     * @param NO means the number of the picture
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
                W2UV()
            } 
        }
    }

}