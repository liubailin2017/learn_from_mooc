#include<iostream>

int main() {
    int s;
    std::cin >> s;
    unsigned int mask = 1<<31;
    if(s == 0) return 0;

    while((s & mask) == 0)
        mask = mask >> 1;
    
    while (mask)
    {
        std::cout << !!(s & mask);
        mask = mask >> 1;
    }
    
    return 0;
}