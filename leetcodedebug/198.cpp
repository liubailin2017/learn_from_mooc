#include"header.h"
#include<sstream>
using namespace std;

class Solution {
public:
    int rob(vector<int>& nums) {
        int size = nums.size();
        int *f = new int[size];
        for(int i = 0; i < size; i++) {
            if(i == 0) {
                f[0] = nums[0];
            }else if(i == 1) {
                f[1]  = max(nums[0],nums[1]);
            }else {
                f[i] = max(f[i-1], f[i-2] + nums[i]);
            }
        }
        return f[size-1];
    }
};

void trimLeftTrailingSpaces(string &input) {
    input.erase(input.begin(), find_if(input.begin(), input.end(), [](int ch) {
        return !isspace(ch);
    }));
}

void trimRightTrailingSpaces(string &input) {
    input.erase(find_if(input.rbegin(), input.rend(), [](int ch) {
        return !isspace(ch);
    }).base(), input.end());
}

vector<int> stringToIntegerVector(string input) {
    vector<int> output;
    trimLeftTrailingSpaces(input);
    trimRightTrailingSpaces(input);
    input = input.substr(1, input.length() - 2);
    stringstream ss;
    ss.str(input);
    string item;
    char delim = ',';
    while (getline(ss, item, delim)) {
        output.push_back(stoi(item));
    }
    return output;
}

int main() {
    string line;
    while (getline(cin, line)) {
        vector<int> nums = stringToIntegerVector(line);
        
        int ret = Solution().rob(nums);

        string out = to_string(ret);
        cout << out << endl;
    }
    return 0;
}