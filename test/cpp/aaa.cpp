#include<stdio.h>
int main(void)
{
	int m,n,i;
	while(scanf("%d %d",&n,&m)!=EOF)
	{
		if(m!=-1 && n!=-1)
		{
			// while(m>n){
            //     m = m - n;
            // }
            m = m % n;
			if(m == 0) {
                printf("POOR Haha\n");
            }else if(m == 1) { 
                printf("YES\n");
            }
			else{
				if(n%m==0 /*|| n%(n-m)==0*/){
                    printf("POOR Haha\n");
                }
				else{
                    printf("YES\n");
                }
			}
		}
		else {
            break;
        }
	}
	return 0;
}