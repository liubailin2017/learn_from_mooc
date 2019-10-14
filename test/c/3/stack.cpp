
#include"LinkList.h"
#include"stack.h"

bool valiable(stack *s) {
    if(s && s->list) {
        return true;
    }else {
        return false;
    }
}

Status initStack(stack& s) {
    LinkList list = nullptr;
    if(InitList_L(&list)) {
        s.list = list;
        return Ok;
    }else {
        return Error;
    }
}

/**
 * 如果s没被初始，认为是空
 * */

bool Empty(stack &s) {
    if(!valiable(&s)) return true;

    if(s.list->next) {
        return false;
    }
    return true;
}

/**
 * 如果s没被初始化，认为是未满
 */
bool Full(stack &s) {
    
    if(!valiable(&s)) return false;

    return false; 
}

void pop(stack &s) {
    if(!valiable(&s)) return ;
    if(Empty(s)) return;
    ET e; 
    ListDelete_L(s.list,0,e);
}

Status push(stack &s,ET e) {
    if(!valiable(&s)) return Error;
    if(Full(s)) return Error;
    ListInsert_L(s.list,0,e);
    return Ok;
}

Status get(stack &s,ET &e) {
    if(!valiable(&s)) return Error;
    if(Empty(s)) return Error;
    GetElem_L(s.list,0,e);
    return Ok;
}
// #include<iostream>
// int main() {
//     stack s;
//     initStack(s);
//     push(s,100);
//     push(s,300);
//     push(s,400);
//     ET e;
//     get(s,e);
//     std::cout << e << std::endl;
//     pop(s);
    
//     get(s,e);
//     std::cout << e << std::endl;
//     pop(s);
    
//     get(s,e);
//     std::cout << e << std::endl;
//     pop(s);
//     get(s,e);
//     std::cout << e << std::endl;
//     pop(s);

//     return 0;
// }
