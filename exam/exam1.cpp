#include<iostream>

bool check(int n,int* a) {
     int cnt = 0; 
     for(int i = 0; i < n; i++) {
          if(a[i]) cnt ++;
     }
     return !(cnt % 2);
}

//垂直
bool check2(int n,int *a) {
    int cnt  = 0;
    for(int i = 0; i< n; i++) {
        if(*(a+n*i)) {
            cnt ++;
        }
    }
    return !(cnt%2);
}



#include<iostream>
void solution(int n, int *a) {
    
    int x = -1;
    int y = -1;
    for(int i = 0; i < n; i++) {

        if(!check(n,a+n*i)) {
            if(y != -1)  {
                std::cout << "Corrupt" <<std::endl;
                return;
            }else {
                y = i;
            }
        }

        if(!check2(n,a+i)) {
             if(x != -1) {
                 std::cout << "Corrupt" <<std::endl;
                 return;
             }else {
                 x = i;
             }
        }
    }
    if(x != -1 && y != -1) {
        std::cout << y+1 << " " << x+1 <<std::endl;
    }else if(x == -1 && y == -1) {
        std::cout << "OK" << std::endl;
    }else {
        std::cout << "Corrupt" << std::endl;
    }
}

int main() {
    int *arr;
    int n;
    std::cin >> n;
    arr = new int [n * n];
    for(int i = 0; i < n*n; i++) {
        std::cin >> arr[i] ;
    }
    solution(n,arr);
    delete[] arr;
    return 0;
}
