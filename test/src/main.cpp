#include <opencv2/opencv.hpp>
#include "imwriteTest.cpp"
#include <iostream>

using namespace std;
using namespace cv;
int main()
{
    // Mat image;
    // image = imread("/Users/horizon/Desktop/Matlab/exercise/beauty.jpg", 0); //CV_LOAD_IMAGE_ANYDEPTH | CV_LOAD_IMAGE_ANYCOLOR);
    // namedWindow("Beauty", WINDOW_AUTOSIZE);
    // imshow("Beauty", image); //window name & Mat
    // waitKey(0);
    Mat mat(480, 640, CV_8UC4);
    createAlphaMat(mat);

    vector<int> compression_parms;
    compression_parms.push_back(CV_IMWRITE_PNG_COMPRESSION);
    compression_parms.push_back(9);

    namedWindow("Alpha", WINDOW_AUTOSIZE);
    imshow("Beauty", mat); //window name & Mat

    try
    {
        imwrite("Alpha.png", mat, compression_parms);
    }
    catch (runtime_error &ex)
    {
        fprintf(stderr, "图像转换PNG错误：%s\n", ex.what());
        return 1;
    }
    cout << "PNG文件Alpha数据保存完毕！" << endl;

    // 初级图像混合

    Mat beauty = imread("/Users/horizon/Desktop/Matlab/exercise/anotherone.jpg", 42); //>0 三通道 <0 包含alpha通道
    Mat logo = imread("harry.jpg");

    resize(logo, logo, Size(100, 100));

    namedWindow("Beauty");
    imshow("Beauty", beauty);

    namedWindow("logo");
    imshow("logo", logo);

    cout << beauty.cols << " " << beauty.rows << endl;
    cout << logo.cols << " " << logo.rows << endl;

    Mat beautyROI = beauty(Rect(200, 324, logo.cols, logo.rows)); //Region Of Interest

    addWeighted(beautyROI, 0.5, logo, 0.3, 0., beautyROI); //这里说明Mat里的数据是引用传递
    namedWindow("Beauty + Logo");
    imshow("Beauty + Logo", beauty); //这里说明Mat里的数据是引用传递

    imwrite("BeautyHarry.jpg", beauty);

    waitKey(0);
    return 0;
}