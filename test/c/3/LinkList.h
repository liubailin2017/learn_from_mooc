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


typedef  struct{
    int num;        //专家号，不重复，可用于查找专家
    char name[30];   //专家姓名，可能重复
}ElemType;      //元素类型-----专家信息数据类型
typedef  ElemType  ET; 

 
void Print(const ET &e);
typedef  struct Lnode{
    ElemType   data;
    struct Lnode *next;
}LNode, *LinkList;
 


Status InitList_L(LinkList *plist);

int ListLength_L(LinkList list);

Status GetElem_L(LinkList l,int i,ET &e);

Status ListInsert_L(LinkList l, int i, ET e);

Status PrintList_L(LinkList l);

Status ListDelete_L(LinkList l , int i , ET &e);

Status PriorElem_L(LinkList  l , ET  e , ET  &pre_e);


#endif // LinkList.h
