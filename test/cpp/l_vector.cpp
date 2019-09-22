#include<iostream>
#include<string>
#include<vector>
using namespace std;

    string longestCommonPrefix(vector<string>& strs) {
        int minLen = 0x7fffffff;
        if(strs.empty()) minLen = 0;
        for(int i = 0; i<strs.size(); i++) {
            minLen = (strs[i].size() < minLen)?  strs[i].size() : minLen;
        }
        int j;
        for(j=0; j<minLen; j++) {
            for(int i = 0; i<strs.size()-1; i++) {
                if(strs[i][j] != strs[i+1][j]){
                    goto bk;
                }
            }
        }
        bk:
        if(strs.size()>0)
            return strs[0].substr(0,j);
        else
            return "";
    }

using namespace std;
int main() {
    vector<string> strs; 
    // strs.push_back("hello,world");
    //strs.push_back("hellow");
    std::cout << longestCommonPrefix(strs);
    return 0;
}
