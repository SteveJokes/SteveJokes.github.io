# ubuntu下cmake编译调用动态库so
## 编译动态库
以滤波项目为例，只需要简单一句就可以了

```add_library(filter SHARED depth_filter.cpp)```

## 调用动态库
首先根据实际路径添加头文件路径

```
set(filterlib /home/jokes/my_file/py_pro/pcl/filter_sdk/build/libfilter.so)
include_directories(/home/jokes/my_file/py_pro/pcl/filter_sdk/build/src/)
```
然后添加链接库
```
target_link_libraries (${PROJECT_NAME} ${PCL_LIBRARIES} ${DMCAM_LIBRARIES} ${LibUSB_LIBRARIES} ${OpenCV_LIBS} ${filterlib})
```
为保证运行的时候能找到so动态库，需要吧so所在路径加到系统的LD_LIBRARY_PATH里头，一种方法直接拷贝到```/usr/lib```里头
另外一种方法创建软链接：
``` 
sudo ln -s /home/jokes/my_file/py_pro/pcl/filter_sdk/build/libfilter.so /usr/lib/libfilter.so
```
[参考链接]<https://blog.csdn.net/ktigerhero3/article/details/68941252/>