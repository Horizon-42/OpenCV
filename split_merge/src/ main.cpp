#include <iostream>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <vector>

using namespace std;
using namespace cv;

bool MultiChannelBlending();

int main()
{
    system("color5E"); //调整控制台颜色
    if (MultiChannelBlending())
    {
        cout << endl
             << "Got it!!!" << endl;
    }
    waitKey(0);
    return 0;
}

bool MultiChannelBlending()
{
    Mat srcImage;
    Mat logoImage;
    vector<Mat> channels;
    Mat imageBlueChannel;

    return true;
}