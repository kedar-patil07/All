#include<stdio.h>
int main(){
    int i,num, isprime=1;

    printf("enter any number:");
    scanf("%d",&num);

if(num<=1){
    isprime=0;
}else{
    for(i=2;i<=num/2;i++){
        if(num % i==0){
            isprime=0;
        }
    }
}


if(isprime){
    printf("%d is prime number:",num);
}else{
    printf("%d is not prime number:",num);
}
return 0;
}