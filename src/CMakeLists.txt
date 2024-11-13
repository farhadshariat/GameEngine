cmake_minimum_required(VERSION 3.25)
project(Test LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED on)

add_subdirectory(Game)
add_subdirectory(Logger)
add_subdirectory(ECS)
add_subdirectory(Systems)

get_directory_property(GAME_SRC DIRECTORY Game DEFINITION GAME_SRC)
get_directory_property(LOGGER_SRC DIRECTORY Logger DEFINITION LOGGER_SRC)
get_directory_property(ECS_SRC DIRECTORY ECS DEFINITION ECS_SRC)
get_directory_property(SYSTEM_SRC DIRECTORY Systems DEFINITION SYSTEM_SRC)

add_library(engine_core STATIC
            ${LOGGER_SRC}
            ${GAME_SRC}
            ${ECS_SRC}
            ${SYSTEM_SRC}
            )
target_include_directories(engine_core PUBLIC src)


