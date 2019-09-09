#include<algorithm>
#include<cstdio>
int D[100000],N,C;
/**
 * check 其实是一个贪心策略
 * 
 * */
bool check(int x) {
    int t = D[0];
    int count = 1;
    for(int i = 1; i< N; i++) {
        if(D[i] - t >= x){                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
            t= D[i];
            count ++;
            if(count >= C) return true;
        }
    }
    return false;
}
/**
 *  1 2 3 4 5 6  7
 *  1 3
 */

int binSearch() {
    int l = 0,r = D[N-1] - D[0];
    int last  = 0 ;
    while(l < r - 1) {
        int mid = l +(r-l)/2;
        if(check(mid))  {
            l = mid;
        }else {
            r = mid;
        }
    }
    if(check(r))
        return r;
    else
        return l;
}

int main() {
    
    while(scanf("%d%d",&N,&C) != EOF) {
        for(int i = 0; i < N; i++)
            scanf("%d",D+i);
        std::sort(D,D+N);
        int result = binSearch();
        printf("%d\n",result);

    }
    return 0;
}
