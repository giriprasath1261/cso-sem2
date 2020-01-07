#include<stdio.h>
#include <stdlib.h>

extern int sum();

int main(void)
{
  int m,n;
  scanf("%d%d",&m,&n);
  int arr[m][n];
  for(int i=0;i<n;i++)
  {
    for(int j=0;j<m;j++)
    {
      scanf("%d",&arr[i][j]);
    }
  }
  int ans=sum(arr,m,n);
  printf("%d\n",ans);
}
