# a test for c with fortran

## Note

1. reference:
   1. [C和Fortran混合编译初步](https://blog.csdn.net/Augusdi/article/details/7348437?locationNum=1&fps=1)
      signed char	INTEGER*1	8位有符号整数
      short	INTEGER*2	16位有符号整数
      int	INTEGER	32位有符号整数
      float	REAL	32位浮点数
      double	DOUBLE PRECISION	64位浮点数
      void sub_()	SUBROUTINE SUB()	无返回值的 C 函数等价于 Fortran 子程序
      float fun_()	REAL FUNCTION FUN()	有返回值的 C 函数等价于 Fortran 的函数
   2. [c和fortran混编](https://bbs.csdn.net/topics/80268969)
      1. `nm main.o` 
   3. [vscode里混合调试c++和nodejs](https://zhuanlan.zhihu.com/p/149286931?from=singlemessage)
      1. No FORTRAN : TODO:
   4. [动态数组](https://www.cnblogs.com/pasuka/p/3360928.html)

2. makefile
   1. -module path -I module