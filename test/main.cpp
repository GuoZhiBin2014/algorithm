#include <glog/logging.h>
#include <gtest/gtest.h>
#include <cstdio>
#include <cstdlib>

int main(int argc, char** argv) {
  ::testing::InitGoogleTest(&argc, argv);
  
  // invoke the test.
  return RUN_ALL_TESTS();
}
