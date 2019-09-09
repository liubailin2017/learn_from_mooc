#include<iostream>
#include<math.h>
/*
1表示西墙，2表示北墙，4表示东墙，8表示南墙
*/
int print[50][50] = {0};
int room[50][50] = {0};

int roomcount = 0;
int max = 0;
int roomnmb = 0;
void dfs(int i,int j) {
    if(print[i][j]) 
        return;
    roomcount ++;
    print[i][j] = roomnmb;
    if( (room[j][i] & 0x1) == 0) {
        dfs(i-1,j);
    }
    if((room[j][i] & 0x2 ) == 0) {
        dfs(i,j-1);
    }
    if((room[j][i] & 0x4) == 0) {
        dfs(i+1,j);
    }
    if((room[j][i] & 0x8) == 0) {
        dfs(i,j+1);
    }
}

int main() {
    int n,m;
    std::cin >> n >> m;
    for(int i = 0; i< n;i++) {
        for(int j = 0; j < m; j++) {
            std::cin >> room[i][j];
        }
    }
    for(int i = 0; i< m; i++) {
        for(int j = 0; j < n; j++) {
            if(!print[i][j]) {
                roomnmb ++;
                roomcount = 0;
                dfs(i,j);
                max = std::max(max,roomcount);
            }
        }
    }
    std::cout << roomnmb<<std::endl<<max;
    return 0;
}
