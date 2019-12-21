#include<iostream>
#include<algorithm>
int m;
int arr[101] = {0};
int visit[101] = {0};
int abs(int a,int b) {
    if( a > b ) {
        return a -b;
    }
    return b - a;
}

void left(int i) {
    if( m > 1)
    for(;i < m-1; i++) 
        arr[i] = arr[i+1];
    m --;
}

int main () {
    int c;
    std::cin >> c;


    for(; c>0 ;c--) {
        int rs = 0;
  
        std::cin >> m;
        for(int i = 0; i < m; i++ ){
            visit[i] = 0;
            std::cin >> arr[i];
        }

        std::sort(arr,arr+m);
        
        while(m > 0) {
            int pre = arr[0];
            left(0);

            for(int i = 0; i < m ; i++) {
                if(abs(arr[i],pre) >1) {
                    pre = arr[i]; 
                    left(i);
                    i--;
                }
            }
            rs ++;
        }
  

        std::cout << rs << std::endl;
    }
    return 0;
}