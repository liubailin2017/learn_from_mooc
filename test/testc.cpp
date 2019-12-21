#include <iostream>
#include <vector>
#include <string>
#include<stack>
using namespace std;

int main()
{
    stack<int> st;
    st.push(12);
    st.push(23);
    st.push(222);
    st.pop();
    std::cout << st.top(); 
    vector<string> msg {"Hello", "C++", "World", "from", "VS Code!"};
    for(int i = 0; i < msg.size(); i++) {
        std::cout << msg[i];
    }
    cout << endl;
    st.empty();
}
