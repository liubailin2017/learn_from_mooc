#include<iostream>


int w,h;
char block[20][20];
int print[20][20];
int cnt;
void reset() {
    cnt = 0;
    for(int i = 0; i < 20; i ++) {
        for(int j = 0; j < 20; j++) {
            block[i][j] = 0;
            print[i][j] = 0;
        }
    }
}

void dfs(int i,int j) {
    if(i<0 || i>= h || j< 0||j >= w) return;
    if(block[i][j] == '#') return;
    if(print[i][j]) return;
    print[i][j] = 1;
    cnt ++;
    dfs(i-1,j);
    dfs(i+1,j);
    dfs(i,j-1);
    dfs(i,j+1);
}

int main() {
    int x,y;

    std::cin>>w>>h;
    while(!(w == 0 && h == 0) ) {
        reset();
        for(int i= 0; i<h; i++) {
            for(int j = 0; j<w; j++) {
                std::cin >> block[i][j];
                if(block[i][j] == '@') {
                    x = j;
                    y = i;
                }
            }
        }
        dfs(y,x);
        std::cout << cnt<<std::endl;
        std::cin>>w>>h;
    }
    return 0;
}