#include<stdio.h>
template<class T>
class queue{
    private:
    int tmpsize;
    T* t;
    int l;
    int r;
    public : 
    queue():tmpsize(20481) {}
    queue(int size):r(0),l(0),tmpsize(size+1) {
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

    T* _peek() {
        if(isEmpty())
            return nullptr;
        else
            return t + (l+tmpsize+1) % tmpsize;
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

int a = 0;
int _W = 13;
int _H = 9;
typedef struct pos{
    int x;
    int y;
    struct pos* pre;
    bool operator==(pos &t) {
        if(t.x == x && t.y == y) 
            return true;
        else
            return false;
    }
}pos;

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

char PRINTS[9][13] ={0};

void print(pos *s) {
    if(s == nullptr) {
        printf("null\n");
        return;
    }
    while(s) {
        printf("(%d,%d)-",s->x,s->y);
        s= s->pre;
    }
}

pos* bfs(pos s,pos t) {
    queue<pos> q(9*13);
    q.push(s);

    pos *tmp = q._peek();
    q.pop();

    while (tmp != nullptr)
    {
      if(
        (tmp->y >=0 && tmp->y<9 && (tmp->x+1) >=0 && (tmp->x+1) < 13)
        &&
        map[(*tmp).y][(*tmp).x+1] == 0
        &&
        PRINTS[(*tmp).y][(*tmp).x+1] == 0) {
          pos tmp2;
          tmp2.pre = tmp;
          tmp2.x = (*tmp).x+1;
          tmp2.y = (*tmp).y;
          q.push(tmp2);
          PRINTS[(*tmp).y][(*tmp).x+1] = 1;
         }
      if(
        (tmp->y >=0 && tmp->y<9 && (tmp->x-1) >=0 && (tmp->x-1) < 13)
        &&
        map[(*tmp).y][(*tmp).x-1] == 0
        &&
        PRINTS[(*tmp).y][(*tmp).x-1] == 0) {
          pos tmp2;
          tmp2.pre = tmp;
          tmp2.x = (*tmp).x-1;
          tmp2.y = (*tmp).y;
          q.push(tmp2);
          PRINTS[(*tmp).y][(*tmp).x-1] = 1;
        }
      if(
        ( (tmp->y+1) >=0 && (tmp->y+1)<9 && tmp->x >=0 && tmp->x < 13)
        &&
        map[(*tmp).y+1][(*tmp).x] == 0
        &&
        PRINTS[(*tmp).y+1][(*tmp).x] == 0) {
          pos tmp2;
          tmp2.pre = tmp;
          tmp2.x = (*tmp).x;
          tmp2.y = (*tmp).y+1;
          q.push(tmp2);
          PRINTS[(*tmp).y+1][(*tmp).x] = 1;
        }
      if(
        ( (tmp->y-1) >=0 && (tmp->y-1)<9 && tmp->x >=0 && tmp->x < 13)
        &&
        map[(*tmp).y-1][(*tmp).x] == 0
        &&
        PRINTS[(*tmp).y-1][(*tmp).x] == 0) {
          pos tmp2;
          tmp2.pre = tmp;
          tmp2.x = (*tmp).x;
          tmp2.y = (*tmp).y-1;
          q.push(tmp2);
          PRINTS[(*tmp).y-1][(*tmp).x] = 1;
        }
        tmp = q._peek();
        q.pop();
        if(*tmp == t) return tmp;
    }
    return nullptr;
}

int main() {
    pos s{1,1,nullptr};
    pos t{11,7,nullptr};
    pos *p = bfs(s,t);
    print(p);
    return 0;
}
