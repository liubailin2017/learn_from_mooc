#include<iostream>
#include<algorithm>
int arrangeRight(int arr[],int l,int r,int k) {
    int i = l ,j = r;
    int t = arr[l];
    while(i < j ) {
        while(i < j && t <= arr[j]) {
            j--;
        }
        arr[i] = arr[j];
        while(i<j && arr[i] <= t) {
            i++;
        }
        arr[j] = arr[i];

    } 
    arr[i] = t;
    int a = r - i + 1;

    if( a < k) {
        return arrangeRight(arr,l,i-1,k-a);
    }else if(a > k) {
        return arrangeRight(arr,i+1,r,k);
    }else{
        return i;
    }
}


int main() {
    int *arr;
    int n; 
    int k;
    std::cin >> n;
    arr = new int[n];
    for(int i = 0; i<n ;i++) {
        std::cin >>arr[i];
    }
    std::cin >> k;
    int r = arrangeRight(arr,0,n-1,k);
    std::sort(arr+r,arr+n);
    for(int i = 0; i < n - r; i++) { 
        std::cout << arr[n-i-1] << std::endl;
    }
    return 0;
}
