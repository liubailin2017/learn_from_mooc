#include<iostream>
#include<algorithm>

int f[13000];
struct item{
    int w;
    int d;
};
item items[3500];

int main() {
    int N,M;
    std::cin >> N>>M;
    for(int i = 0; i<N;i++) {
        std::cin >> items[i].w>> items[i].d;
    }
    for(int i = 0; i<=M; i++) {
        if(i>=items[0].w){
            f[i] = items[0].d;
        }else {
            f[i] = 0;
        }
    }
    for(int i = 1; i<N; i++) {
        for(int j = M; j >= 0; j--){
            if(items[i].w <= j)
                f[j] = std::max(f[j],f[j-items[i].w]+items[i].d);
        }
    }
    std::cout << f[M] <<std::endl;
    return 0;
}
