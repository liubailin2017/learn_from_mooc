#include"header.h"

class Solution {
    
    void swap(char &a,char &b) {
        char t = a;
        a = b;
        b = t;
    }
    
    string s = "123456789";
public:
    int cnt = 0;
    
    void all(int l, int r, int c) {
        if(l == r) {
            cnt ++;
            return ;
        }
        if( c == cnt) return ;
        for(int i = l; i<= r; i++) {
            swap(s[l],s[i]);
            all(l+1,r,c);
            swap(s[l],s[i]);
        }
    }
    
    string getPermutation(int n, int k) {
        all(0,n-1,k);
        return s.substr(0,n);
    }
};

int main() {
   Solution sl;
   std::cout << sl.getPermutation(3,3);

    return 0;
}