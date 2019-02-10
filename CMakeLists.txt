cmake_minimum_required(VERSION 3.13)
project(compiler_study)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)
include_directories(flex_bison)
include_directories(flex_bison/2)
include_directories(sl0)
include_directories(sl1)
include_directories(step0)
include_directories(step1)
include_directories(step2)
include_directories(step3and4)

add_executable(compiler_study
        flex_bison/1/f1.l
        flex_bison/2/fb1-5.tab.c
        flex_bison/2/fb1-5.tab.h
        flex_bison/2/lex.yy.c
        sl1/sl1.l
        step0/test1
        step0/test1.asm
        step0/test1.c
        step0/test1_O2.asm
        step0/test2
        step0/test2.asm
        step0/test2.s
        step0/test3
        step0/test3.asm
        step0/test3.c
        step1/9cc.c
        step1/Makefile
        step1/test.sh
        step2/9cc.c
        step2/Makefile
        step2/test.sh
        step3and4/9cc.c
        step3and4/9cc.h
        step3and4/Makefile
        step3and4/test.sh
        README.md)
