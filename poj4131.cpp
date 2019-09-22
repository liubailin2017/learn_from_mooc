#include<iostream>
#include<algorithm>

int N;
int w[3403];
int v[3403];

int t[12881]; //roll arr
//动规
int F(int n,int m) {
    for(int j = m; j >= 0; j -- ) {
        if(j >= w[N-1]) 
            t[j] = v[N-1];
        else
            t[j] = 0;
    }
    for(int i = N-2; i>= n; i--) {
        for(int j = m; j>= 0; j--) {
            if(j-w[i] < 0)  continue;
            t[j] = std::max(t[j-w[i]]+v[i],t[j]);
        }
    }
    return t[m];
}

//递归
int f(int i,int j) {
    if(i == N-1) {
        if(w[i] <= j) 
            return v[i];
        else 
            return 0;
    }
    if(j <= 0) return 0;
    return std::max(f(i+1,j-w[i]) + v[i],f(i+1,j));
}

int main() {
    int m;
    std::cin>>N >>m;
    for(int i = 0; i < N; i++) {
        std::cin >> w[i] >> v[i];
    }
    std::cout << F(0,m);
    return 0;
}
