
struct Entry{
    int k;
    int v;
    struct Entry* next;
    Entry* rear() {
        Entry *t = this;
        while(t->next) {
            t = t->next;
        }
        return t;
    }
    virtual ~Entry() {
        if(next) delete next;
    }
};

class HashMap {
    
    private :
        int size;
    struct Entry **buf;        
    
    public :
    
    HashMap(int size):size(size) {
        buf = new struct Entry* [size];
        for(int i = 0; i < size;i ++) {
            buf[i] = nullptr;
        }
    }
    
    void add(int k,int v) {
        struct Entry *tmp = new (struct Entry);
        tmp->k  = k; tmp->v  = v; tmp->next = nullptr;
        int p;
        if(k<0) {
            p = -k%size;
        }else {
            p = k%size;
        }
        if(buf[p]){
            buf[p]->rear()->next = tmp;
        }else {
            buf[p] = tmp;
        }
    }
    
    int get(int k,int &v) {
        int p;
        if(k<0) {
            p = -k%size;
        }else {
            p = k%size;
        }

        struct Entry* t = buf[p];
        while(t) {
            if(t->k == k){
                v = t->v;
                return 0;
            }
            t = t->next;
        }
        return -1;
    }
    
    int iscontain(int k) {
        int p;
        if(k<0) {
            p = -k%size;
        }else {
            p = k%size;
        }
        struct Entry* t = buf[p];
        while(t) {
            if(t->k == k){
                return 1;
            }
            t = t->next;
        }
        return 0;
    }
    
    ~HashMap() {
        for(int i = 0; i< size; i++) {
            if(buf[i]) delete buf[i];
        }
        delete[] buf;
    }
    
};

#include<iostream>
#include<vector>
using namespace std;
    HashMap map(100);
    vector<int> twoSum(vector<int>& nums, int target) {
        vector<int> rs;
        for(int i = 0; i < nums.size(); i++) {
            int t = target - nums[i];
            int v;
            if(!map.get(t,v)) {
                rs.push_back(v);
                rs.push_back(i);
            }
            map.add(nums[i],i);
        }
        return rs;
    }

int main() {
    vector<int> v;
    v.push_back(2);
    v.push_back(7);
    v.push_back(11);
    v.push_back(15);
    v = twoSum(v,9);
    return 0;
}
