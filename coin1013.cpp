/*
     poj1013
*/
#include<iostream>

char right[3][7],left[3][7],result[3][10];

bool contain(char c,char *p) {
    int isf = false;
    while(*p) {
        if(*p == c) {
            isf =  true;
            break;
        }
        p++;
    }
    return isf;
}

bool judge(char c, bool light) {

    for(int i = 0; i< 3; i++) {
        if(light) {
            switch (result[i][0])
            {
            case 'e':
                if(contain(c,left[i]) || contain(c,right[i])) {
                    return false;
                }
                break;
            case 'u':
                if(!contain(c,right[i]))
                    return false;
                break;
            case 'd':
                if(!contain(c,left[i]))
                    return false;
                break;
            }
        }else {
            switch (result[i][0])
            {
            case 'e':
                if(contain(c,left[i]) || contain(c,right[i])) {
                    return false;
                }
                break;
            case 'u':
                if(!contain(c,left[i]))
                    return false;
                break;
            case 'd':
                if(!contain(c,right[i]))
                    return false;
                break;
            }
        }
    }

     return true;
}


int main() {
        int c;
        std::cin>>c;
        for(int j = 0; j<c;j++) {
            for(int i = 0; i < 3; i++) 
                std::cin >>left[i] >>right[i]>>result[i];
            for(char c = 'A'; c <= 'L'; c++) {
                if(judge(c,true)){
                   std::cout<<c<< " is the counterfeit coin and it is light."<<std::endl;
                }
                if(judge(c,false)) {
                   std::cout<<c<< " is the counterfeit coin and it is heavy."<<std::endl;
                }
            }
        }
}