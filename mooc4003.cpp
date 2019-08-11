#include<algorithm>
#include<cstdio>
int D[100000],M,N;

bool check(int x) {
    int c = 1;
    int t = 0;
    for(int i = 0; i < N; i++) {
        if(t+D[i] > x) {
            t = D[i];
            c++;
            if(c > M) return false;
            if(D[i] > x) return false;
        }else {
            t += D[i];
        }
    }
    return true;
}


int binSearch() {
    int l = 0,r =0;

    for(int i = 0; i< N-1;i++) {
        r += D[i];
    }

    int last  = 0 ;
    while(l < r - 1) {
        int mid = l +(r-l)/2;
        if(check(mid))  {
            r = mid;
        }else {
            l = mid;
        }
    }
    if(check(r))
        return r;
    else
        return l;
}

int main() {
    
        scanf("%d%d",&N,&M);
        for(int i = 0; i < N; i++)
            scanf("%d",D+i);
        int result = binSearch();
        printf("%d\n",result);
 
        return 0;
}
