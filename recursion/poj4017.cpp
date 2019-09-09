#include<iostream>
#define MAX  31
int F[MAX];
void reset() {
    for(int i = 0; i< MAX; i++) {
        F[i] = 0;
    }
}

int f(int n) {

    for(int i = 1; i<=n;i++) {
        if (i == 1) {
            F[i] = 1;
        }else if( i == 2) {
            F[i] = 2;
        }else {
            F[i] = F[i-1] + F[i-2];
        }
    }
    return F[n];
    // if(n == 1 ) return 1;
    // if(n == 2) return 2;
    // return f(n-1) + f(n-2); 
}

int main() {
    int n;
    while(   std::cin >> n){
        reset();
        std::cout << f(n) <<std::endl;
    }
    return 0;
}
