#include<stdio.h>

int ar[100000] = {0};

typedef struct str {
    int a;
    int b;
}STR;


void init(STR *str) {
    (*str).a = 1000;
    (*str).b = 1000;
}

void init (STR str) {
    str.a = 1000;
    str.b = 1000;
}


int main() {
    STR s = {100,200};
    f2(s);
    printf("%d %d",s.a,s.b);
    return 0;
}