sudo apt-get update
sudo apt-get install libgoogle-glog-dev
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get update -qq
sudo apt-get install -qq g++-5
sudo update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-5 90

# cmake
# wget "https://github.com/Kitware/CMake/releases/download/v3.16.2/cmake-3.16.2-Linux-x86_64.tar.gz"
# tar zxvf cmake-3.16.2-Linux-x86_64.tar.gz
# export PATH=`pwd`/cmake-3.16.2-Linux-x86_64/bin:$PATH
