#include<stdio.h>

void swap(char *a,char *b) {
    char t = *a;
    *a = * b;
    *b = t;
}

void f(char *str) {
    char *p;
    for(p = str;p !='\0'; p++) {
        
    }
}

int main() {
    char str[7];
    scanf("%s",str);
    f(str);
    return 0;
}