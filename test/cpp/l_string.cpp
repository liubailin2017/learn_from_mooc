#include<iostream>
#include<string>
using namespace std;
class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        int maxlen = 1;
        int i = 0, j  = 1;
        int l;
        for(; j < s.size(); j++) {
            for(l = j-1; l >= i; l --) {
                if(s[l] == s[j]) break;
            }
            i = l+1;
            maxlen = std::max(maxlen,j-i+1);

        }
        return maxlen;
    }
};
class Solution5 {
public:
    string longestPalindrome(string s) {
        int maxi = 0,maxj = 0;
        int maxid = -1,maxjd = -1;
        int i = 0, j = 0;
        for(i = 0; i < s.size(); i++) {
            for(j = 0;i+j < s.size() && i-j >= 0; j++) {
                if(s[i-j] != s[i+j]) break;
                if(j > maxj) {
                    maxi = i;
                    maxj = j;
                }
            }
            for(j = 0;i+1+j < s.size() && i-j >= 0; j++) {
                if(s[i-j] != s[i+1+j]) break;
                if(j > maxjd) {
                    maxid = i;
                    maxjd = j;
                }
            }
        }
        if(maxjd >= maxj)
            return s.substr(maxid-maxjd,maxjd*2+2);
        else
            return s.substr(maxi-maxj,(maxj)*2+1);
    }
};
#include<vector>
class Solution6 {
public:
    string convert(string s, int numRows) {
        vector<string> rows(numRows);
        int cur =0 ,d = 1;
        
        for(int i = 0; i< s.size(); i++) {
            rows[cur] += s[i];
            cur += d;
            if(cur == numRows-1) d = -1;
            if(cur == 0) d = 1;
        }
        string rs;
        for(int i =0; i<numRows; i++) {
            rs += rows[i];
        }
        return rs;
    }
};
int main() {
    string str;
    cin>>str;
    Solution6 sltn;
    cout << 
    sltn.convert(str,1)
    <<endl;
    return 0;
}
