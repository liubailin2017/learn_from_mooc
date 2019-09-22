#include<iostream>
#include<string>
#include<vector>
#include<algorithm>
using namespace std;
int main() {
    vector<int> v;
    v.push_back(1);
    v.push_back(2);
    v.push_back(9);
    v.push_back(3);
    sort(v.begin(),v.end());
    vector<int>::iterator iterator;
    for(iterator = v.begin(); iterator != v.end();iterator++) {
        
    }
    return 0;
}
