#include <iostream>

int result[100000];
int tmp[101] ;

int arr[100000];
int n;

void reset() {
    for(int i = 0; i< 101; i++) {
        tmp[i] = 0;
    }
}


int main() {
        reset();
        std::cin >> n;
        for(int i = 0; i < n; i++) {
            std::cin >> arr[i];
        }

        for(int i = n-1; i>=0 ;i--) {
            tmp[arr[i]] +=1;
            result[i] = tmp[arr[i]]-1;
        }

        for(int i = 0; i < n; i++) {
            std::cout << result[i]<<std::endl;
        }

        // for(int i = 0; i<n ;i++) {
        //     int cnt = 0;
        //     for(int j = i; j<n; j++) {
        //         if(n >= j && j > i && arr[i]== arr[j]) {
        //             cnt ++;
        //         }
        //     }
        //     std::cout << cnt <<std::endl;
        // }
        
        return 0;
}
