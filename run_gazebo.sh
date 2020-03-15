clone_dir=~/src
cd $clone_dir/Firmware
git checkout v1.9.0
git submodule init
git submodule update

sed -i '17i#define TRUE true\n/' Tools/sitl_gazebo/include/gazebo_opticalflow_plugin.h
sed -i '26iinclude_directories(/usr/include/gstreamer-1.0 )\n' Tools/sitl_gazebo/CMakeLists.txt
sed -i '26iinclude_directories(/usr/include/glib-2.0)\n' Tools/sitl_gazebo/CMakeLists.txt
sed -i '26iinclude_directories(/usr/lib/x86_64-linux-gnu/glib-2.0/include)\n' Tools/sitl_gazebo/CMakeLists.txt

make px4_sitl gazebo

