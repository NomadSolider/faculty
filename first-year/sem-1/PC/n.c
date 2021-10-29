#include <stdio.h>
int main(void)
{
int n = 0;
int i = 0;
int j = 0;
printf("Dati valoare lui n: ");
scanf("%d",&n);
for(i = 0; i < n; i++)
	{
	for(j = 0; j < n; j++)
		{
		if(j == 0 || i==j || j == n-1)
			{
			printf("*");
			}
			else
			{
			printf(" ");
			}
		}
	printf("\n");
	}
printf("\n");
return 0;
}