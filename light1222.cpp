//poj1222
#include<iostream>
using namespace std;
char slight[5];
char result[5];
char tlight[5];

void rebit(char &c,int i ) {
    c ^= (1<<i);
}

void setbit(char &c,int i,int v) {
    if(v == 0) {
       c &= (~(1<<i));
    }else {
        c |= (1<<i); 
    }
}

int getbit(char c,int i) {
    return (c >> i) & 1;
}

void print(int t) {
    cout << "PUZZLE #" << t <<endl;
    for(int i = 0 ; i< 5; i++) {
        for(int j = 0; j< 6; j++){
            cout<< getbit(result[i],j);
            if(j < 5) cout << " ";
        }
        cout << endl;
    }
}


int main() {
    int s  = 0; 
    cin >> s;
    for(int m = 0; m < s; m ++) {

        for(int y = 0; y < 5; y++ ) {
            for(int x = 0; x < 6; x ++ ) {
                int v;
                cin>>v;
                setbit(slight[y],x,v);
            }
        }

        for(int i = 0; i <= 0x3f; i++ ) {
            int t = i;
            for(int j = 0; j<=5;j++ ) {
                tlight[j] = slight[j];
            }

            for(int j = 0; j < 5 ; j++) {// j 操作产生影响的行
                result[j] = t;
                for(int n = 0; n < 6;n++) {
                    if(getbit(t,n) == 1) {
                        rebit(tlight[j],n);
                        if(n<5)rebit(tlight[j],n+1);
                        if(n>0) rebit(tlight[j], n-1);

                        if(j>0) rebit(tlight[j-1],n);
                        if(j<4) rebit(tlight[j+1],n);
                    }
                }
                t = tlight[j];
            }

            if( tlight[4] == 0) {
                print(m+1);
                break;
            }
        }

    }
    return 0;
}