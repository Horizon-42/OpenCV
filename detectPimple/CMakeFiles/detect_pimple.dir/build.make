# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/horizon/Desktop/OpenCV/workspace/detectPimple

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/horizon/Desktop/OpenCV/workspace/detectPimple

# Include any dependencies generated for this target.
include CMakeFiles/detect_pimple.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/detect_pimple.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/detect_pimple.dir/flags.make

CMakeFiles/detect_pimple.dir/src/detect_pimple.cpp.o: CMakeFiles/detect_pimple.dir/flags.make
CMakeFiles/detect_pimple.dir/src/detect_pimple.cpp.o: src/detect_pimple.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/horizon/Desktop/OpenCV/workspace/detectPimple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/detect_pimple.dir/src/detect_pimple.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/detect_pimple.dir/src/detect_pimple.cpp.o -c /Users/horizon/Desktop/OpenCV/workspace/detectPimple/src/detect_pimple.cpp

CMakeFiles/detect_pimple.dir/src/detect_pimple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detect_pimple.dir/src/detect_pimple.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/horizon/Desktop/OpenCV/workspace/detectPimple/src/detect_pimple.cpp > CMakeFiles/detect_pimple.dir/src/detect_pimple.cpp.i

CMakeFiles/detect_pimple.dir/src/detect_pimple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detect_pimple.dir/src/detect_pimple.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/horizon/Desktop/OpenCV/workspace/detectPimple/src/detect_pimple.cpp -o CMakeFiles/detect_pimple.dir/src/detect_pimple.cpp.s

# Object files for target detect_pimple
detect_pimple_OBJECTS = \
"CMakeFiles/detect_pimple.dir/src/detect_pimple.cpp.o"

# External object files for target detect_pimple
detect_pimple_EXTERNAL_OBJECTS =

detect_pimple: CMakeFiles/detect_pimple.dir/src/detect_pimple.cpp.o
detect_pimple: CMakeFiles/detect_pimple.dir/build.make
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_stitching.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_superres.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_videostab.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_aruco.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_bgsegm.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_bioinspired.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_ccalib.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_dnn_objdetect.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_dpm.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_face.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_fuzzy.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_hdf.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_hfs.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_img_hash.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_line_descriptor.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_optflow.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_reg.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_rgbd.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_saliency.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_sfm.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_stereo.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_structured_light.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_surface_matching.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_tracking.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_xfeatures2d.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_ximgproc.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_xobjdetect.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_xphoto.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_photo.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_shape.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_calib3d.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_phase_unwrapping.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_video.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_datasets.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_plot.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_text.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_dnn.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_features2d.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_flann.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_highgui.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_ml.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_videoio.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_imgcodecs.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_objdetect.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_imgproc.3.4.2.dylib
detect_pimple: /Users/horizon/desktop/OpenCV/opencv-3.4.2/build/lib/libopencv_core.3.4.2.dylib
detect_pimple: CMakeFiles/detect_pimple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/horizon/Desktop/OpenCV/workspace/detectPimple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable detect_pimple"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/detect_pimple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/detect_pimple.dir/build: detect_pimple

.PHONY : CMakeFiles/detect_pimple.dir/build

CMakeFiles/detect_pimple.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/detect_pimple.dir/cmake_clean.cmake
.PHONY : CMakeFiles/detect_pimple.dir/clean

CMakeFiles/detect_pimple.dir/depend:
	cd /Users/horizon/Desktop/OpenCV/workspace/detectPimple && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/horizon/Desktop/OpenCV/workspace/detectPimple /Users/horizon/Desktop/OpenCV/workspace/detectPimple /Users/horizon/Desktop/OpenCV/workspace/detectPimple /Users/horizon/Desktop/OpenCV/workspace/detectPimple /Users/horizon/Desktop/OpenCV/workspace/detectPimple/CMakeFiles/detect_pimple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/detect_pimple.dir/depend
