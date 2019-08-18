#include<iostream>
#include <stdio.h>
/**
 *  6
    2 6 3 / 4 5 1
 *  2 3 6 / 1 4 5
 *                    
 * 
*/

int mergeCount(int a[],int t[],int low,int mid,int high)
{
    int result = 0; 
	int i = mid,j = high,k = high;
	while(i >= low && j >= mid+1)
	{
		if(a[i] > a[j])
		{
            result += (j-mid);
			t[k--] = a[i--]; 
		}
		else 
		{
			t[k--] = a[j--];
		}
	}
	while(i >= low)
	{
		t[k--] = a[i--];
	}

	while(j >= mid+1)
	{
		t[k--] =a[j--];
	}
	for(int i = low; i <=high; i++)
	{
		a[i] = t[i];
	}
    return result;
}

int mergesortCount(int s[],int t[],int low, int high)
{
	if(low < high)
	{
		
		int mid= (low + high)/2;
		int l = mergesortCount(s,t,low,mid);
		int r = mergesortCount(s,t,mid+1,high);
		return l + r + mergeCount(s,t,low,mid,high);
	}
    return 0;
}

int main(int argc, char *argv[])
{
    int n;
    int *arr;
    int *t;
    std::cin >> n;
    arr = new int[n];
    t = new int[n];
    for(int i = 0; i < n; i++) {
        std::cin >> arr[i];
    }
    std::cout <<
        mergesortCount(arr,t,0,n-1)
    <<std::endl;
	return 0;
}

