// autor : liubailin by 2019 9 20 All Rights Reserved
// :-)
#ifndef my_LinkList_h
#define my_LinkList_h

#define  True  11
#define  False  0

#define   List_Init_Size   10
#define   ListIncrement   10

// typedef  int  Status;//状态类型
#ifndef nullptr
#define nullptr 0
#endif

typedef enum  {
    Ok = 111,
    Error  = -111
}Status;

#include<iostream>
typedef  struct{
    int num;        //专家号，不重复，可用于查找专家
    char name[30];   //专家姓名，可能重复
    void Print() {
        std::string strname (name);
        std::cout << "No:" << num << " name:" << strname <<std::endl;
    }
}ElemType;      //元素类型-----专家信息数据类型

typedef  ElemType  ET; 

typedef  struct Lnode{
    ElemType   data;
    struct Lnode *next;
}LNode, *LinkList;
 

inline int isVailable(LinkList list) {
      return !!list; //magic
}
Status InitList_L(LinkList *plist);
int ListLength_L(LinkList list);
Status GetElem_L(LinkList l,int i,ET &e);
Status ListInsert_L(LinkList l, int i, ET e);
Status PrintList_L(LinkList l);
Status ListDelete_L(LinkList l , int i , ET &e);
Status PriorElem_L(LinkList  l , ET  e , ET  &pre_e);

#endif // LinkList.h

Status InitList_L(LinkList *plist) {
    if(!plist) return Error;
    if(*plist) return Error; //链表已经初始化
    *plist = new LNode;
    (*plist) -> next = nullptr;
    if(*plist) {
        return Ok;
    }else {
        return Error;
    }
}

int ListLength_L(LinkList list) {
    int rs = 0;
    if(!isVailable(list)) {
        return -1;// 如果链表没初始化，我们返回 -1
    }
    LinkList p; 
    p = list->next;
    while(p) {
        rs++;
        p = p->next;
    }
    return rs;
}

Status GetElem_L(LinkList l,int i,ET &e) {
    if(i<0) return Error;
    if(!isVailable(l)) return Error;
    LinkList p = l->next;
    int c = 0;
    for(; c < i && p; c++) {
        p = p->next;
    }
    if(p) {
        e = p->data;
        return Ok;
    }else { //越界
        return Error;
    }
}

Status ListInsert_L(LinkList l, int i, ET e) {
    if(i < 0) return Error;
    if(!isVailable(l)) return Error;
    LinkList p = l;
    int c = 0;
    for(; c < i && p; c++) {
        p = p->next;
    }
    if(p) {
        LNode *t = p->next;
        p->next = new LNode;
        p->next ->next = t;
        p->next ->data = e;
        return Ok;
    }else { //越界
        return Error;
    } 
}

Status PrintList_L(LinkList l) {
    if(!isVailable(l)) return Error;
    LinkList p = l->next; 
    while (p) {
        p->data.Print();
        p = p->next;
    }
    return Ok;
}

Status ListDelete_L(LinkList l , int i , ET &e) {
    if(i<0) return Error;
    if(!isVailable(l)) return Error;
    LinkList p = l->next;
    LinkList q = l;
    int c = 0;
    for(; c < i && p; c++) {
        q = p;
        p = p->next;
    }
    if(p) {
        q ->next = p->next;
        e = p->data;
        delete p;
        return Ok;
    }else { //越界
        return Error;
    }
}

Status PriorElem_L(LinkList  l , ET  e , ET  &pre_e) {
    if(!isVailable(l)) return Error;
    LinkList p = l->next;
    LinkList q = l;

    while(p) {
        q = p;
        p = p->next;
        if(p->data.num == e.num) break;
    }

    if(p && q != l) { // p 为 nullptr 说明没找到 ，q == l list 为空
        pre_e = q->data;
        return Ok;
    }else {
        return Error;
    }
} 

// Test
int main() {
    LinkList list = nullptr;

    if(InitList_L(&list) == Ok) {
		printf("初始化成功\n");
    }else {
		printf("失败");
		return -1;
    };

    for(int i = 0; i< 10; i++) {
        ET e = {i,"zhang"};
        e.name[5] = '0'+i;
        e.name[6] = 0;
        ListInsert_L(list,i,e);
    }

    ET e;
    ListDelete_L(list,5,e);
    std::cout << "delete:"; e.Print();

 
    e.num = 4;
    PriorElem_L(list , e , e);
    std::cout << "prior of 4 : ";e.Print();

    PrintList_L(list);

    std::cout << "Length(now):" << ListLength_L(list)<<std::endl; 

    return 0;
}
