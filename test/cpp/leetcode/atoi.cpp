#include<iostream>
#include<string>
#include<limits.h>
using namespace std;
class Solution {
public:
    int myAtoi(string str) {
        int sign = 1;
        int isc = 0;
        int c = 0;
        int rs = 0;
        for(int i = 0; i < str.size(); i++) {
            if(str[i] == ' ' && !isc) continue;
            
            if(str[i] == '-') {
               if(c == 0)
                   sign = -1;
                else
                    return 0;
                c++;
                isc=1;
                continue;
            }else if(str[i] == '+'){
                if(c != 0)
                    return 0;
                c++; 
                isc =1;
                continue;
            }else {
                if(str[i] < '0' || str[i] > '9') return rs;
                isc =1;
            }
            int pop = sign > 0 ? str[i] - '0': '0' - str[i]; 

            if(rs > INT_MAX/10 || (rs*sign == INT_MAX/10 && pop > 7)) return INT_MAX;
            if(rs < INT_MIN/10 || (rs*sign == INT_MIN/10 && pop > 8)) return INT_MIN;
            rs *= 10;
            rs += pop; 
        }
        return rs; 
    }
};



int main() {
    string str;
    cin>>str;
    Solution s;
    cout << s.myAtoi(str); 
    return 0;
}