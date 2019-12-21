#include<iostream>

// Alice 1 ,Bob 0
int f(int n) {
    if(n == 1 || n == 2) {
        return 1;
    }else if(n == 3||n==4) {
        return 0;
    }
    int t;
    t = f(n-1);
    t = t || f(n-2);
    return t;
}


int main() {
    int n;
    std::cin >> n; 
    while(n){
       if(f(n))
           std::cout << "Alice" << std::endl;
        else
            std::cout << "Bob" <<std::endl;
              std::cin >> n; 
    }
    return 0;
}