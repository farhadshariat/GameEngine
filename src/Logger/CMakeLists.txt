cmake_minimum_required(VERSION 3.25)
project(Test LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED on)

file(GLOB LOGGER_HEADERS *.h *.hpp)
file(GLOB LOGGER_SRC *.c *.cpp)


