//拨钟问题 pj002
#include<stdio.h>
int data[3][3] ={0};
int result[13] = {0};
enum CLOCK{
    A=0,B,C,D,E,F,G,H,I
};

int* base(int i) {
    return ((int*)*data +i);
}
void adjust() {
    for(int i = 0; i< 9;i++) {
        (*base(i)) %= 4;
    }
}
void f1() {
   (*base(A)) ++;
   (*base(B)) ++;
   (*base(D)) ++;
   (*base(E)) ++;
}
void f2() {
   (*base(A)) ++;
   (*base(B)) ++;
   (*base(C)) ++;
}
void f3() {
   (*base(B)) ++;
   (*base(C)) ++;
   (*base(E)) ++;
   (*base(F)) ++;
}
void f4() {
   (*base(A)) ++;
   (*base(D)) ++;
   (*base(G)) ++;
}
void f5() {
    
   (*base(B)) ++;
   (*base(D)) ++;
   (*base(E)) ++;
   (*base(F)) ++;
   (*base(H)) ++;
}
void f6() {
   (*base(C)) ++;
   (*base(F)) ++;
   (*base(I)) ++;
}
void f7() {
   (*base(D)) ++;
   (*base(E)) ++;
   (*base(G)) ++;
   (*base(H)) ++;
}
void f8() {
   (*base(G)) ++;
   (*base(H)) ++;
   (*base(I)) ++;
}
void f9() {
   (*base(E)) ++;
   (*base(F)) ++;
   (*base(H)) ++;
   (*base(I)) ++;
}

int judge(){
    for(int i = 0; i< 9;i++) {
        if(*base(i)) return 0;
    }
    return 1;
}

int p = 0;
void out(int v,int c) {
    for(int i = 0; i< c;i++) { 
        result[p++] = v;
    }
}

void print() {
    for(int i = 0; i < p; i++) {
        printf("%d",result[i]);
        if(i != p-1) printf(" ");
    }
}

int main() {

  for(int i = 0; i< 9;i++) {
      scanf("%d",base(i));
  }
   for(int a = 0; a<=3;a++)  {
        if(a) f1();
        for(int b = 0; b<=3;b++)  {
            if(b) f2();
            for(int c = 0; c<=3;c++)  {
                if(c) f3();
                for(int d = 0; d<=3;d++)  {
                    if(d) f4();
                    for(int e = 0; e<=3;e++)  {
                        if(e) f5();
                        for(int f = 0; f<=3;f++)  {
                            if(f) f6();
                            for(int g = 0; g<=3;g++)  {
                                if(g) f7();
                                for(int h = 0;h<=3;h++)  {
                                    if(h) f8();
                                    for(int i = 0; i<=3;i++)  {
                                        if(i) f9();
                                        adjust();
                                        if(judge()) {
                                            out(1,a);
                                            out(2,b);
                                            out(3,c);
                                            out(4,d);
                                            out(5,e);
                                            out(6,f);
                                            out(7,g);
                                            out(8,h);
                                            out(9,i); 
                                            print();
                                            goto jump;
                                        }
                                    }
                                    f9();
                                }
                                f8();
                            }
                            f7();  
                        }
                        f6();
                    }
                    f5();   
                }
                f4();   
            }
            f3();
        }
        f2();
   }
   f1();
   jump:

    return 0;
}