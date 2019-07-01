cmake_minimum_required(VERSION 2.8)

project(proc_mem_check)
add_definitions (
    -D_LARGEFILE64_SOURCE
    )
include_directories(libpagemap/include)
add_subdirectory(libpagemap)
add_executable(procmem "./procmem/procmem.c")
target_link_libraries(procmem libpagemap)
add_executable(procrank "./procrank/procrank.c")
target_link_libraries(procrank libpagemap)