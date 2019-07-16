#include<iostream>
//全排列
 
void swap(char *s,char *t) {
    if(t > s) {
        char tmp = *t;
        while(s < t) {
            *t = *(t-1);
            t--;
        }
        *s = tmp;
    }else {
        char tmp = *t;
        while(s > t) {
            *t = *(t+1);
            t++;
        }
        *s = tmp;
    }
}

void all(char *s,int l,int r) {
    if(l == r) {
        std::cout << s << std::endl;
    }else {
         for(int i = l; i<= r;i++) {
            swap(s+l,s+i);
            all(s,l+1,r);
            swap(s+i,s+l);
         }
    }
}

#include<string.h>
int main() {
    char s[10] ={0};
    // char t[10] = {"1234"};
    // swap(t,t+2);
    // swap(t+2,t);
    scanf("%s",s);
    all(s,0,strlen(s)-1);
    return 0;
}