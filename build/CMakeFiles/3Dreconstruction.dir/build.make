# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.15.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.15.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/build

# Include any dependencies generated for this target.
include CMakeFiles/3Dreconstruction.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/3Dreconstruction.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/3Dreconstruction.dir/flags.make

CMakeFiles/3Dreconstruction.dir/src/main.cpp.o: CMakeFiles/3Dreconstruction.dir/flags.make
CMakeFiles/3Dreconstruction.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/3Dreconstruction.dir/src/main.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/3Dreconstruction.dir/src/main.cpp.o -c /Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/src/main.cpp

CMakeFiles/3Dreconstruction.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/3Dreconstruction.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/src/main.cpp > CMakeFiles/3Dreconstruction.dir/src/main.cpp.i

CMakeFiles/3Dreconstruction.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/3Dreconstruction.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/src/main.cpp -o CMakeFiles/3Dreconstruction.dir/src/main.cpp.s

# Object files for target 3Dreconstruction
3Dreconstruction_OBJECTS = \
"CMakeFiles/3Dreconstruction.dir/src/main.cpp.o"

# External object files for target 3Dreconstruction
3Dreconstruction_EXTERNAL_OBJECTS =

../bin/3Dreconstruction: CMakeFiles/3Dreconstruction.dir/src/main.cpp.o
../bin/3Dreconstruction: CMakeFiles/3Dreconstruction.dir/build.make
../bin/3Dreconstruction: /usr/local/Cellar/pcl/1.9.1_4/lib/libpcl_visualization.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_stitching.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_superres.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_videostab.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_aruco.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_bgsegm.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_bioinspired.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_ccalib.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_dnn_objdetect.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_dpm.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_face.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_freetype.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_fuzzy.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_hfs.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_img_hash.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_line_descriptor.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_optflow.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_reg.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_rgbd.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_saliency.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_sfm.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_stereo.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_structured_light.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_surface_matching.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_tracking.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_xfeatures2d.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_ximgproc.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_xobjdetect.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_xphoto.3.4.5.dylib
../bin/3Dreconstruction: /usr/lib/libz.dylib
../bin/3Dreconstruction: /usr/lib/libexpat.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkDomainsChemistryOpenGL2-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersFlowPaths-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersGeneric-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersHyperTree-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersParallelImaging-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersPoints-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersProgrammable-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/opt/python/Frameworks/Python.framework/Versions/3.7/lib/libpython3.7.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkPythonInterpreter-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkWrappingTools-8.2.a
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersPython-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersSMP-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersSelection-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersTopology-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersVerdict-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkGUISupportQtSQL-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/lib/libjpeg.dylib
../bin/3Dreconstruction: /usr/local/lib/libpng.dylib
../bin/3Dreconstruction: /usr/local/lib/libtiff.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkGeovisCore-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/lib/libhdf5.dylib
../bin/3Dreconstruction: /usr/local/lib/libsz.dylib
../bin/3Dreconstruction: /usr/lib/libdl.dylib
../bin/3Dreconstruction: /usr/lib/libm.dylib
../bin/3Dreconstruction: /usr/local/lib/libhdf5_hl.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOAMR-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOAsynchronous-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOCityGML-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOEnSight-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/lib/libnetcdf.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOExodus-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOExportOpenGL2-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOExportPDF-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOImport-8.2.1.dylib
../bin/3Dreconstruction: /usr/lib/libxml2.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOInfovis-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOLSDyna-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOMINC-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOMovie-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOPLY-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOParallel-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOParallelXML-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOSegY-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOTecplotTable-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOVeraOut-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOVideo-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkImagingMorphological-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkImagingStatistics-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkImagingStencil-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkInfovisBoostGraphAlgorithms-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkInteractionImage-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkPythonContext2D-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingContextOpenGL2-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingFreeTypeFontConfig-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingImage-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingLOD-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingQt-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingVolumeOpenGL2-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkViewsContext2D-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkViewsQt-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/pcl/1.9.1_4/lib/libpcl_io.dylib
../bin/3Dreconstruction: /usr/local/Cellar/pcl/1.9.1_4/lib/libpcl_search.dylib
../bin/3Dreconstruction: /usr/local/Cellar/pcl/1.9.1_4/lib/libpcl_octree.dylib
../bin/3Dreconstruction: /usr/local/Cellar/pcl/1.9.1_4/lib/libpcl_kdtree.dylib
../bin/3Dreconstruction: /usr/local/Cellar/pcl/1.9.1_4/lib/libpcl_common.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_shape.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_phase_unwrapping.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_dnn.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_video.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_datasets.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_ml.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_plot.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_objdetect.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_calib3d.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_features2d.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_flann.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_highgui.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_videoio.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_imgcodecs.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_photo.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_imgproc.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/opt/opencv@3/lib/libopencv_core.3.4.5.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkDomainsChemistry-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/opt/python/Frameworks/Python.framework/Versions/3.7/lib/libpython3.7.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkverdict-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOSQL-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtksqlite-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/opt/qt/lib/QtSql.framework/QtSql
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkproj-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersAMR-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkpugixml-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOExport-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingGL2PSOpenGL2-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkgl2ps-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/lib/libpng.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtklibharu-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtktheora-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkogg-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersParallel-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkexodusII-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/lib/libnetcdf.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOGeometry-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIONetCDF-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkjsoncpp-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkParallelCore-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOLegacy-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkWrappingPython37Core-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersTexture-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkImagingMath-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkGUISupportQt-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingOpenGL2-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkglew-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkViewsInfovis-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkChartsCore-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingContext2D-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersImaging-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkInfovisLayout-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkInfovisCore-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkViewsCore-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkInteractionWidgets-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersHybrid-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkImagingGeneral-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkImagingSources-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersModeling-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkInteractionStyle-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersExtraction-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersStatistics-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkImagingFourier-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkImagingHybrid-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOImage-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkDICOMParser-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkmetaio-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingAnnotation-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkImagingColor-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingVolume-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkImagingCore-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOXML-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOXMLParser-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkIOCore-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkdoubleconversion-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtklz4-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtklzma-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingLabel-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingFreeType-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkRenderingCore-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkCommonColor-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersGeometry-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersSources-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersGeneral-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkCommonComputationalGeometry-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkFiltersCore-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkCommonExecutionModel-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkCommonDataModel-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkCommonMisc-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkCommonSystem-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtksys-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkCommonTransforms-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkCommonMath-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkCommonCore-8.2.1.dylib
../bin/3Dreconstruction: /usr/local/Cellar/vtk/8.2.0_3/lib/libvtkfreetype-8.2.1.dylib
../bin/3Dreconstruction: /usr/lib/libz.dylib
../bin/3Dreconstruction: /usr/local/opt/qt/lib/QtWidgets.framework/QtWidgets
../bin/3Dreconstruction: /usr/local/opt/qt/lib/QtGui.framework/QtGui
../bin/3Dreconstruction: /usr/local/opt/qt/lib/QtCore.framework/QtCore
../bin/3Dreconstruction: CMakeFiles/3Dreconstruction.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/3Dreconstruction"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/3Dreconstruction.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/3Dreconstruction.dir/build: ../bin/3Dreconstruction

.PHONY : CMakeFiles/3Dreconstruction.dir/build

CMakeFiles/3Dreconstruction.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/3Dreconstruction.dir/cmake_clean.cmake
.PHONY : CMakeFiles/3Dreconstruction.dir/clean

CMakeFiles/3Dreconstruction.dir/depend:
	cd /Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction /Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction /Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/build /Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/build /Users/yanyucheng/OneDrive/codeProjects/3Dreconstruction/build/CMakeFiles/3Dreconstruction.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/3Dreconstruction.dir/depend

