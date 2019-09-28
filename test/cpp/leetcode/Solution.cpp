#include<iostream>
#include<string>
#include<limits.h>
#include<vector>
#include<algorithm>

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




class Solution15 {

public:
    vector<vector<int>> threeSum(vector<int>& nums) {
        sort(nums.begin(),nums.end());
        vector<vector<int>> rs;
        for(int i = 0; i < nums.size()-2; i++) {
            int t = - nums[i];
            int l = i+1, r = nums.size()-1;
            while(l < r)
            if(nums[l] + nums[r] == t) {
                vector<int> v;
                v.push_back(nums[i]);
                v.push_back(nums[l]);
                v.push_back(nums[r]);
                rs.push_back(v);
                while(l < r && nums[l] == nums[l+1]) {
                    l++;
                }
                if(l < r)l++;
                while(l<r && nums[r] == nums[r-1]) {
                    r--;
                }
                r--;
            } else if(nums[l] + nums[r] < t) {
                while(l < r && nums[l] == nums[l+1]) {
                    l++;
                }
                l++;
            }else {
                while(l<r && nums[r] == nums[r-1]) {
                    r--;
                }
                r--;
            }
            
            while(i < nums.size()-2 && nums[i] == nums[i+1]) {
                i++;
            }
            
        }
        return rs;
    }
};
int main() {

    vector<int> v;
    for(int i = 0; i< 3; i++) {
        int t;
        std::cin >> t;
        v.push_back(t);
    }
    Solution15 s;
    s.threeSum(v);


    return 0;
}