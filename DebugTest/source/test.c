/* showhipi.c */
#include <stdio.h>
struct sometype{
    int nx;
    int ny;
    int i;
    double r;
    int l;
    double *n;
    int *m;
};


void showpi_(char *string,double *pi,struct sometype *cTYPE)
{
    
    printf("this is C\n");
    printf("%s \n PI= %f \n",string,*pi);
    printf("struct: %i, %i, %d",cTYPE->nx,cTYPE->ny,cTYPE->i);
}
// #include <stdio.h>
// void showhipi_(char *string,float *pi)
// {
//        printf("%s\nPI=%f\n",string,*pi);
// }
