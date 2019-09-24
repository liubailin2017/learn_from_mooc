#include<iostream>
#include<math.h>

int minS = INT32_MAX;

int S = 0;
int n,m;

void dfs(int v,int l,int r,int h)  {
    if(l == 0) {
        if(v == 0){
            minS = std::min(minS,S);
        }
        return ;
    }
    if(S >= minS) return;
    if(v <= 0) return ;
    for(int i = r; i >= l; i-- ) {
        if(l == m) {
            S = i*i;
        }
        for(int j = h; j >= l; j--) {

            S += 2*i*j;
            dfs(v-i*i*j,l-1,i-1,j-1);
            S -= 2*i*j;
        }
    }
}

void iteration(int v,int l,int r, int h) {

}

int main() {
    std::cin >>n >>m;
    int minr = sqrt((float)n);

    dfs(n,m,minr+1,n+1);
    if(minS == INT32_MAX) {
        std::cout << 0 << std::endl;
    }else {
        std::cout <<minS<<std::endl;
    }
    return 0;
}
