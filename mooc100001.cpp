/*总结

*/

#include<iostream>
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
    void clean() {
        l =  r = 0;
    }
};

int a = 0;
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

#define _H 5
#define _W 5
int map[_H][_W] = {0};

int PRINTS[_H][_W] ={0};

void print(pos *s) {
    while(s) {
        std::cout << "(" << s->y << ", " << s->x << ")" <<std::endl;
        map[s->y][s->x] = 2;
        s= s->pre;
    }
}

pos* _bfs(pos s,pos t,queue<pos> &q) {
   
    if(map[(t).y][(t).x] == 1 || map[(s).y][(s).x] == 1)
        return nullptr;
    q.push(s);

    pos *tmp = q._peek();
    q.pop();

    while (tmp != nullptr)
    {
      if(*tmp == t) return tmp;
      if(
        (tmp->y >=0 && tmp->y<_H && (tmp->x+1) >=0 && (tmp->x+1) < _W)
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
        (tmp->y >=0 && tmp->y<_H && (tmp->x-1) >=0 && (tmp->x-1) < _W)
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
        ( (tmp->y+1) >=0 && (tmp->y+1)<_H && tmp->x >=0 && tmp->x < _W)
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
        ( (tmp->y-1) >=0 && (tmp->y-1)<_H && tmp->x >=0 && tmp->x < _W)
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
        /*
      if(
        (tmp->y+1 >=0 && tmp->y+1<_H && (tmp->x+1) >=0 && (tmp->x+1) < _W)
        &&
        map[(*tmp).y+1][(*tmp).x+1] == 0
        &&
        PRINTS[(*tmp).y+1][(*tmp).x+1] == 0) {
          pos tmp2;
          tmp2.pre = tmp;
          tmp2.x = (*tmp).x+1;
          tmp2.y = (*tmp).y+1;
          q.push(tmp2);
          PRINTS[(*tmp).y+1][(*tmp).x+1] = 1;
         }
      if(
        (tmp->y-1 >=0 && tmp->y-1<_H && (tmp->x-1) >=0 && (tmp->x-1) < _W)
        &&
        map[(*tmp).y-1][(*tmp).x-1] == 0
        &&
        PRINTS[(*tmp).y-1][(*tmp).x-1] == 0) {
          pos tmp2;
          tmp2.pre = tmp;
          tmp2.x = (*tmp).x-1;
          tmp2.y = (*tmp).y-1;
          q.push(tmp2);
          PRINTS[(*tmp).y-1][(*tmp).x-1] = 1;
        }
      if(
        ( (tmp->y+1) >=0 && (tmp->y+1)<_H && tmp->x-1 >=0 && tmp->x-1 < _W)
        &&
        map[(*tmp).y+1][(*tmp).x-1] == 0
        &&
        PRINTS[(*tmp).y+1][(*tmp).x-1] == 0) {
          pos tmp2;
          tmp2.pre = tmp;
          tmp2.x = (*tmp).x-1;
          tmp2.y = (*tmp).y+1;
          q.push(tmp2);
          PRINTS[(*tmp).y+1][(*tmp).x-1] = 1;
        }
      if(
        ( (tmp->y-1) >=0 && (tmp->y-1)<_H && tmp->x+1 >=0 && tmp->x+1 < _W)
        &&
        map[(*tmp).y-1][(*tmp).x+1] == 0
        &&
        PRINTS[(*tmp).y-1][(*tmp).x+1] == 0) {
          pos tmp2;
          tmp2.pre = tmp;
          tmp2.x = (*tmp).x+1;
          tmp2.y = (*tmp).y-1;
          q.push(tmp2);
          PRINTS[(*tmp).y-1][(*tmp).x+1] = 1;
        }
        */
        tmp = q._peek();
        q.pop();
    }
    return nullptr;
}

pos* bfs(pos s,pos t,queue<pos>& q) {
    return _bfs(t,s,q);
}
#include<iostream>
int main() {
    
    for(int i = 0; i<5; i++) {
        for (int j = 0; j < 5; j++) {
            std::cin >> map[i][j];
        }
    }

    queue<pos> q(_H*_W);

    pos s{0,0,nullptr};
    pos t{4,4,nullptr};
    pos *p = bfs(s,t,q);
    print(p);
    return 0;
}
