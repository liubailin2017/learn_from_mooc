#include<iostream>

bool isMatch(char * s, char * p){
    if(*s == 0 &&
        (*p == 0 
           || (*(p+1) == '*' && *(p+2) == 0)  /*结尾是* */
           || (*(p) == '*' && *(p+1) == 0)
        )
    ) return true;

    if(*s != 0 && *p == 0) return false;
    if(*s == 0 && *p != 0) return false;
    if(*s == *p) {
        if(isMatch(s+1,p+1)) return true;
    }
    if(*p == '.') {
        if(isMatch(s+1,p+1)) return true;
    }
    if(*p == '*') {
        if(isMatch(s-1,p+1)) return true; // *重复0次
        if(isMatch(s,p-1)) return true; // 至少1次
        return false;
    }

        if(*(p+1) == '*' && isMatch(s,p+2)) {
            return true;
        }else {
            return false; 
        }
}



int main() {

    std::cout << isMatch("aa","a*");
    return 0;
}