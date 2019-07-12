//特殊密码锁
#include<stdio.h>
#include<string.h>

/*

    result[0] = 0;


011
000

1110
0001

result
0100
m
0000





 */
void reverse(char *c) {
    if(*c == '0') {
        *c = '1';
    }else if(*c == '1') {
        *c = '0';
    }
}

int min(int a,int b) {
    return a < b ? a : b;
}

int main() {
    int res = -1;
    char s[31] = {0};
    char t[31] = {0};
    char m[31] = {0};
    char result[31] = {0};
    scanf("%s",s);
    scanf("%s",t);
    memcpy(m,s,sizeof(s));

    int l = strlen(s);
    
    result[0] = '0';
    int count = 0;
    for(int i = 1; i< l; i++ ){
        if(m[i-1] == t[i-1]) {
            result[i] = '0';
        }else {
            result[i] = '1';
            count ++;
            reverse(&m[i-1]);
            reverse(&m[i]);
            reverse(&m[i+1]);
        }
    }
    if(t[l-1] == m[l-1]) {
        res = count;
    }

    memcpy(m,s,sizeof(s));
    memset(result,0,31);
    result[0] = '1'; 
    reverse(&m[0]);
    reverse(&m[1]);
    count = 1;
    for(int i = 1; i< l; i++ ){
        if(m[i-1] == t[i-1]) {
            result[i] = '0';
        }else {
            result[i] = '1';
            count ++;
            reverse(&m[i-1]);
            reverse(&m[i]);
            reverse(&m[i+1]);
        }
    }
    if(t[l-1] == m[l-1]) {
        if(res == -1) {
            res = count;
        }else{
            res = min(res,count);
        }
    }
    
    if(res == -1) { 
        printf("impossible");
    }else { 
        printf("%d",res);
    }
}