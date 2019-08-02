#include<iostream>
 
/*

  12  6 ,5 1 ,4 2, 4 1 1 ,3 3 ,3 2 1 ,3 1 1 1,2 2 2 , 2 2 2 ,2 2 1 1 , 2 1 1 1 1 ,1 1 1 1 1 1 1
  7   5 ,4 1 ,3 2, 3 1 1,2 2 1, 2 1 1 1 ,1 1 1 1 1   
  5   4 , 3 1, 2 2, 2 1 1 , 1 1 1 1
  3   3 , 2 1 , 1 1 1
  2   2 , 1 1
  1   1 
    n-t
*/

int f(int n,int m)
{
    if(n==1||m==1)
        return 1;
    else if(n<m)
        return f(n,n);
    else if(n==m)
        return 1+f(n,n-1);
    else
        return f(n,m-1)+f(n-m,m);
}

int main(void)
{
    int n;
    while(std::cin>>n) {
        std::cout <<f(n,n) << std::endl;
    }
    
    return 0;
}
