#include<stdio.h>

int ar[100000] = {0};

int main() {
    int n;
    scanf("%d",&n);

    for(int i = 0; i < n; i++) {
        scanf("%d",ar+i);
    }
    
    int mi = 0,mj = 0;
    for(int i = 1 , j = 0; i < n; i++) {
        if(ar[i-1] >= ar[i]) {
            j = i;
        }
        if(mi - mj < i - j) {
            mi = i; mj = j;
        }
    }
    for(int i = mj; i < mi; i++) {
        printf("%d ",ar[i]);
    }
    printf("%d",ar[mi]);
    return 0;
}