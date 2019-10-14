
#ifndef stack_h_
#define stack_h_

#include "LinkList.h" 
typedef struct  __stack{
    LinkList list;
}stack;

Status initStack(stack& s);
bool Empty(stack& s);
bool Full(stack& s);
void pop(stack& s);
Status push(stack& s,ET e);
Status get(stack& s,ET &e);

#endif