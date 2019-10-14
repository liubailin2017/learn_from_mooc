#include<iostream>

int div(int arr[],int l, int r) {
    if(!arr) return -1;
    int t = arr[r];
    arr[r] = arr[l];
    while(l < r) {
        while(l<r && t <=  arr[r]) {
            r --;
        }
        arr[l] = arr[r];
        if(l >= r) break;
        while(l<r && t >= arr[l]) {
            l++;
        }
        arr[r] = arr[l];
    }
    arr[l] = t;
    return l;                                                                                       
}

void quickSort(int arr[],int n) {
    if(n > 1) {
        int m = div(arr,0,n-1);
        quickSort(arr,m);
        quickSort(arr+m+1,n-m-1);
    }
}

int main() {
    int *arr;
    int n;
    std::cin >> n;
    arr = new int[n];
    for(int i = 0; i<n; i++) {
        std::cin >> arr[i];
    }
    quickSort(arr,n);
    for(int i = 0; i< n - 1; i++) {
        std::cout << arr[i] << " " ;
    }
    if(n>0) {
        std::cout << arr[n-1];
    }
    return 0;
}