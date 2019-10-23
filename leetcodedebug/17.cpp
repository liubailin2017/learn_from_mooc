#include"header.h"
class Solution {
    public:
    string maps[10] = {"000","000","abc","def","ghi","jkl","mno","pqrs","tuv","wxyz"};

    vector<string> letterCombinations(string digits) {
        vector<string> rs;
        if(digits.size() == 0) {
            return rs;
        }else {
            int i = digits[0] - '0';
            vector<string> t = letterCombinations(digits.substr(1,digits.size()-1));
            if(t.size() == 0) t.push_back("");
            for(int j = 0; j < maps[i].size(); j++) {
                vector<string>::iterator iterator;
                for(iterator = t.begin(); iterator < t.end(); iterator++) {
                   rs.push_back(maps[i][j] + *iterator); 
                }
            }
        }
        return rs;
    }
};

int main() {
    Solution s;
    string str= "23";
    vector<string> v = s.letterCombinations(str);
    vector<string>::iterator it;
    for (it = v.begin(); it < v.end(); it++)
    {
        std::cout << *it << std::endl;
    }
    
    return 0;
}