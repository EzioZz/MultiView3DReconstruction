# MultiView3DReconstruction
DIPProject
1.读入相机内参，每张图片的旋转矩阵
2.遍历世界坐标系下，鼠标可能存在范围立方体W内的每个点P。将P变换到7张图片上，如果在7张图片上都在鼠标上。则留下这个点。否则从W中去掉这个点
