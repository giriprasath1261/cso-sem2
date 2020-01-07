#include<stdio.h>
#include <stdlib.h>

extern int sum();

int main(void)
{
  int *point;
  int mad;
  scanf("%d",&mad);
  point=&mad;
  int ans=sum(point);
  printf("%d\n",ans);
}
