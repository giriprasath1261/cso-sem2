#include <stdio.h>
#include <stdlib.h>

extern int rev();

int main(void)
{
  char str[100];
  scanf("%s",str);
  char revstr[100];
  revstr=rev(str);
  printf("%s\n",revstr);
}
