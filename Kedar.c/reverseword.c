#include<stdio.h>
#include<string.h>
{
    char str[100];
    char *words[20];
    int count= 0;

    printf("enter the string:");
    fgets(str , sizeof(str), stdin);

    str[strcspn(str,"\n")] = '\0';
}

for(int i = count - 1;i>=0;i--){
    printf("%s", words[i]);
    if(i>0) printf(" ");


printf("\n");
return 0;
}