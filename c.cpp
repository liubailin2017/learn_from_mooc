#include<stdio.h>


int a = 0;

int _W = 13;
int _H = 9;
typedef struct pos{
    int x;
    int y;
    struct pos* pre;
}pos;
template<typename T>
class queue{
    private:
    int tmpsize;
    T* t;
    int l;
    int r;
    public : 
    queue():tmpsize(20480) {}
    queue(int size):r(0),l(0),tmpsize(size) {
        t = new T[tmpsize];
    }
    

    virtual ~queue() {
        if(t != nullptr) {
            delete[] t;
        }
    }

    int size() {
        return (r + tmpsize - l) % tmpsize;
    }
    bool isEmpty() {
        if(size() == 0) 
            return true;
        else
            return false;
    }

    bool isfull() {
        if(size() == tmpsize-1) 
            return true;
        else 
            return false;
    }

    bool push(T _t) {
        if(!isfull()) {
            int p = (r+1+tmpsize) % tmpsize;
            t[p] = _t;
            r = p;
            return true;
        }
        return false;
    }

    T peek() {
            return t[(l+tmpsize+1) % tmpsize];
    }

    bool pop() {
        if(isEmpty()) {
            return false;
        }else {
            l = (l+1+tmpsize)%tmpsize;
            return true;
        }
    }
};

char map[9][13] = {
    1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,0,1,1,1,1,1,1,1,1,1,1,1,
    1,0,1,1,1,1,1,1,0,0,0,0,1,
    1,0,0,0,1,1,1,1,0,0,1,0,1,
    1,1,1,0,0,0,0,0,0,0,1,1,1,
    1,1,1,0,0,0,0,0,1,0,0,1,1,
    1,1,0,0,0,1,1,1,1,0,0,0,1,
    1,1,1,1,0,0,0,0,0,0,0,0,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,
};
char t[9][13] ={0};

int bsf(pos s,pos t) {


}

int main() {
    queue<int> q;

    return 0;
}
