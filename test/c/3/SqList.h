// autor : liubailin by 2019 9 26 All Rights Reserved
#ifndef Sqlist_h
#define Sqlist_h
#define  Ok  11
#define  Error  -11
#define  List_Init_Size   10
#define  ListIncrement   10

#ifndef nullptr
#define nullptr 0
#endif

typedef  int  Status;      //状态类型
typedef  int  ElemType;   //元素类型
typedef  ElemType  ET;
#include<stdio.h>

#define SIZE 100

typedef  struct{
   ElemType   *elem ;      //动态空间基址
   int        length ;         //实际元素个数
   int        listsize ;        //当前的存储容量
}SqList ;        //容量(以sizeof(ElemType)为单位)

Status SqListInit(SqList *l); 
void SqSetNull(SqList *l);
Status SqDestroy(SqList *l);
int SqListLength_L(SqList *l);
Status SqInsert(SqList *l,int i,ET d);
Status SQDelete(SqList *l, int i,ET *d);
int find(SqList *l,ET d);
void Print(SqList *l);
#endif //sqlist_h
