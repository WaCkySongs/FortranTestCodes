# Note for makefile

makefile文件的显示规则非常简单，形式如下：

Target ... ：prerequisites...
recipe
即 第一行为编译出的目标文件（.o文件或可执行文件）:（英文冒号） 生成目标文件所需的依赖文件(.f90 .mod .o等文件)。第二行 必须用TAB开始编译命令。

1. 获取文件夹中所有.f90文件列表
SRCS = $(wildcard *.f90)
2. 替换.f90后缀为.o后缀 得到.o文件列表
OBJ = $(patsubst %.f90,%.o,$(SRCS))

= 是最基本的赋值
:= 是覆盖之前的值
?= 是如果没有被赋值过就赋予等号后面的值
+= 是添加等号后面的值

## module

对于gfortran设置
-J directory 或 -m directory(使用 -m 尝试报错，可能是我的gnu版本比较老？)
对于intel fortran
-module directory
设置了.mod的生成目录后，为了链接的时候到相应的文件夹下去找.mod文件，需要设置链接目录

-l directory