#include<iostream>

int cal(int m,int k) {
    int rs = 0;
    int c = 0;
    while(m != 0) {
        rs ++;
        m --;
        c ++;
        if(c == k) {
            m ++;
            c = 0;
        }
    }
    return rs;
}

int main() {
    int m ,k;
    std::cin >> m >> k;
    while(!(k == 0 && m == 0)) {
       std::cout << cal(m,k); 
       std::cin >> m >> k;
    }
    return 0;
}