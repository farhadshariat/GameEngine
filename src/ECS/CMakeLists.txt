cmake_minimum_required(VERSION 3.25)
project(Test LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED on)

file(GLOB ECS_HEADERS *.h *.hpp)
file(GLOB ECS_SRC *.c *.cpp)


