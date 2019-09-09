#include<iostream>
int w,h,R;
char block[20][20];
int print[20];
int cnt;
void reset() {
    cnt = 0;
    for(int i = 0; i < 20; i ++) {
        for(int j = 0; j < 20; j++) {
            block[i][j] = 0;
        }
        print[i] = 0;
    }
}

void dfs(int h, int r) {
    if(r == 0) {
        cnt ++;
        return ;
    }
    for(int i = 0; i<w; i++) {
        if(!print[i]) {
            print[i] = 1;
            if(block[h][i] == '#') dfs(h+1,r-1);
            print[i] = 0;
        }
    }
    if(h <= w-2)dfs(h+1,r);
}

int main() {
    std::cin >> w >> R;
    h = w;
    while(!(h == -1 && w == -1)) {
        reset();
        for(int i = 0 ; i<h ;i++) {
            for(int j = 0; j<w;j++) {
                std::cin >> block[i][j];
            }
        }
        dfs(0,R);
        std::cout << cnt << std::endl;
        std::cin >> w >> R;
        h = w;
    }
    return 0;
}
