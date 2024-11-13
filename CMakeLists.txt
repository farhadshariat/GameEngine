cmake_minimum_required(VERSION 3.25)
project(2D-game-engine LANGUAGES CXX)

# set(CMAKE_CXX_STANDARD 23)
# set(CMAKE_CXX_STANDARD_REQUIRED on)

add_subdirectory("src")

find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)
find_package(SDL2_ttf REQUIRED)
find_package(SDL2_mixer REQUIRED)
find_package(glm REQUIRED)
find_package(Lua REQUIRED)
#include_directories(SDL2Test ${SDL2_INCLUDE_DIRS})

#reveal compiler Commands
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(gamengine main.cpp)
target_link_libraries(gamengine PUBLIC
    engine_core
    ${SDL2_LIBRARIES} 
    SDL2_image::SDL2_image
    ${SDL2_ttf_LIBRARIES}
    glm::glm
    ${LUA_LIBRARIES}
    )

target_include_directories(gamengine PRIVATE "libs/")

#specify compiler std version
target_compile_features(gamengine PUBLIC cxx_std_23)

target_compile_options(gamengine PRIVATE -Wall -Wextra)
