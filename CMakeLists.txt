cmake_minimum_required(VERSION 2.8)
project(3Dreconstruction)
add_executable(3Dreconstruction src/main.cpp)


set(PCL_DIR "/usr/local/Cellar/pcl/1.9.1_4/share/pcl-1.9")
set(VTK_DIR "/usr/local/Cellar/vtk/8.2.0_3/lib/cmake/vtk-8.2")
find_package(OpenCV REQUIRED)
find_package(PCL 1.9 REQUIRED)
find_package(VTK REQUIRED)
set(CMAKE_BUILD_TYPE Release)
set(EXECUTABLE_OUTPUT_PATH 
${PROJECT_SOURCE_DIR}/bin 
)
set(LIBRARY_OUTPUT_PATH
    ${PROJECT_SOURCE_DIR}/lib
)
include_directories(
    ${PROJECT_SOURCE_DIR}/include
    ${OpenCV_INCLUDE_DIRS}
    ${PCL_INCLUDE_DIRS}
    ${VTK_USE_FILE}
)
link_directories(
    ${OpenCV_LIBRARY_DIRS}
    ${PCL_LIBRARY_DIRS}
    ${VTK_LIBRARY_DIRS}
)
target_link_libraries(${PROJECT_NAME}
    ${PCL_COMMON_LIBRARIES} 
    ${PCL_IO_LIBRARIES} 
    ${OpenCV_LIBS}
    ${VTK_LIBRARIES}
)

