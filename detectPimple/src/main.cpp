#include <iostream>
#include <opencv/cv.h>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <string>

using namespace std;
using namespace cv;

Mat src;
Mat gray;
Mat hsv;
Mat normalizedGray;
Mat subtraction;
Mat binary;

int lowThreshold;
int const max_lowThreshold = 255;

const string window_source = "Source Image";
const string window_gray = "Gray Image";
const string window_norimalizedGray = "normalized Gray Image";
const string window_subtraction = "Subtraction Image";
const string window_binary = "Binary Image";
const string window_hsv = "HSV Image";
const string window_hsv_to_v = "HSV to V Image";
const string window_count_label = "Count and Label Image";
const string imageName = "./res/face1.png";

Scalar whiteColor(255, 255, 255);
Scalar redColor(0, 0, 255);
Scalar greenColor(0, 255, 0);

//此处有函数返回图片像素
// 待实现

void normalizeGray();
void BinaryTest(int, void *);
int main()
{
    src = imread(imageName);

    if (src.empty())
    {
        cout << "<!> Read IMG ERROR!" << endl;
        exit(0);
    }

    hsv = Mat::zeros(src.size(), CV_8UC3);
    gray = Mat::zeros(src.size(), CV_8UC1);
    normalizedGray = Mat::zeros(src.size(), CV_8UC3);
    binary = Mat::zeros(src.size(), CV_8UC1);

    cvtColor(src, hsv, CV_BGR2HSV);
    cvtColor(src, gray, CV_BGR2GRAY);

    normalizeGray();
    Mat hsv_channels[3];
    split(hsv, hsv_channels);

    imshow(window_hsv_to_v, hsv_channels[2]);

    subtract(hsv_channels[2], normalizedGray, subtraction);
    imshow(window_subtraction, subtraction);

    namedWindow(window_binary, CV_WINDOW_AUTOSIZE);
    createTrackbar("Threshold: ", window_binary, &lowThreshold, max_lowThreshold, BinaryTest);

    lowThreshold = 40;
    BinaryTest(lowThreshold, 0);

    imshow(window_source, src);
    imshow(window_gray, gray);
    imshow(window_hsv, hsv);

    waitKey(0);
    return 0;
}

void normalizeGray()
{
    int largestPixelValue = 0;
    int width = gray.size().width;
    int height = gray.size().height;

    for (int i = 0; i < height; i++)
    {
        uchar *rowData = gray.ptr<uchar>(i);
        for (int j = 0; j < width; j++)
        {
            uchar intensity = rowData[j];
            if (largestPixelValue < intensity)
            {
                largestPixelValue = intensity;
            }
        }

        cout << "largestPixelValue: " << largestPixelValue << endl;

        for (int i = 0; i < height; i++)
        {
            uchar *rowData = gray.ptr<uchar>(i);
            uchar *normalizedData = normalizedGray.ptr<uchar>(i);
            for (int j = 0; j < width; j++)
            {
                uchar intensity = rowData[j];
                int newIntensity = ((float)intensity / largestPixelValue) * 255;
                //            cout << "newIntensity: " << newIntensity << endl;
                normalizedData[j] = (uchar)newIntensity;
            }
        }

        imshow(window_norimalizedGray, normalizedGray);
    }
}
void BinaryTest(int, void *)
{
    threshold(subtraction, binary, lowThreshold, 255, CV_THRESH_BINARY);
    imshow(window_binary, binary);

    cout << "Threshold: " << lowThreshold << endl;
    typedef vector<Point> Points;
    vector<Points> contours;
    findContours(binary, contours, CV_RETR_LIST, CV_CHAIN_APPROX_NONE);
    Mat countAndLabelImage = src.clone();
    Rect bounding_rect;

    double area;
    int matchNumber = 0;
    int unmatchNumber = 0;

    for (int i = 0; i < contours.size(); i++)
    {
        area = contourArea(contours[i], false);
        drawContours(countAndLabelImage, contours, i, whiteColor, CV_FILLED);
        bounding_rect = boundingRect(contours[i]);

        if (area < 20 || area > 7000)
        { // 超過或小於就略過
            rectangle(countAndLabelImage, bounding_rect, greenColor, 1, 8, 0);
            unmatchNumber++;
        }
        else
        {
            rectangle(countAndLabelImage, bounding_rect, redColor, 1, 8, 0);
            matchNumber++;
        }
    }

    cout << "Match Number: " << matchNumber << endl;
    cout << "Unmatch Number: " << unmatchNumber << endl;

    imshow(window_count_label, countAndLabelImage);
}
