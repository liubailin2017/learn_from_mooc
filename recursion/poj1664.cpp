#include<iostream>

int f(int i,int j) {

    if(j == 0) return 0;
    if(i == 0) return 1;

    if( i < j )
        return f(i,i);
    else{
        return f(i,j-1) + f(i-j,j);
    }
}

int main() {
    int N;
    std:: cin >> N;
    for(int i = 0; i < N; i++) {
        int m,n;
        std::cin >>m>>n;
        std::cout <<
         f(m,n) 
         <<std::endl;
    }
    return 0;
}
