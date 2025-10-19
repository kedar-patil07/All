#include<stdio.h>
int main()
{
    int a,b;
    printf("Enter two numbers:",a,b);
    scanf("%d%d",&a,&b);

    a=a+b;
    b=a-b;
    a=a-b;

    printf("after swapping: %d is a,%d is b",a,b);
}