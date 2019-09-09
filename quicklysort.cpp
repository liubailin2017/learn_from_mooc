#include<iostream>

void swap(int &a,int &b) {
    if(a != b) {
        int t = a;
        a = b;
        b = t;
    }
}
/**
 * int t = 5 
 *      5 9 1
 *      l   r
 * 
*/
int div(int arr[],int l,int r) {
    int t = arr[l];
    while(l<r) {
        while(l < r && arr[r] > t) {
            r --;
        }
        if(l < r) arr[l++] = arr[r];

        while(l < r && arr[l] < t) {
            l++;
        }
        if(l < r) arr[r--] = arr[l];
    }
    arr[r] = t;
    return r;
}

int div_bk(int arr[],int l,int r) { 
    while( l < r){
        while(l < r && arr[l] <= arr[r]) {
           r --; 
        }
        if(l < r) {
            swap(arr[l],arr[r]); 
            l++;
        }
       
        while(l<r && arr[l] <= arr[r]) {
            l ++;
        }
        if(l<r) {
            swap(arr[l],arr[r]);
            r--;
        }
    }
    return l;
}

void sort(int arr[],int l,int r) {
    if(l < r) {
        int d = div(arr,l,r);
        sort(arr,l,d-1);
        sort(arr,d+1,r);
    }
}

void quickly_sort(int arr[],int size) {
    sort(arr,0,size-1);
}

int main() {
    int a[] = {5,6,5,7,4,5,1,6,5,4};
    //int a[] = {4,5,5,7,4,5,1,6,5,4};
    quickly_sort(a,10);
   //std::cout<<div(a,0,9)<<std::endl;
    for(int i = 0; i < 10; i++) {
        std::cout<<a[i] << " " ;
    }
    std::cout<<std::endl;
    return 0;
}