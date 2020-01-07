#include<stdio.h>
#include<stdlib.h>

int fibo(int num)
{
  int i=0;
  int first=0;
  int second=1;

  while(i<num)
  {
    int temp;
    temp=second;
    second=first+second;
    first=temp;
    i++;
  }
  return second;
}

int main(void)
{
  int num;
  scanf("%d",&num);
  int ans=fibo(num);
  printf("%d\n",ans);
}
