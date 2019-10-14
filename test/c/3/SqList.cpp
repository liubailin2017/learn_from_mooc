#include"SqList.h"
#include<stdio.h>

void Print(ET e) {
    printf("%d",e);
}

Status SqListInit(SqList *l) {
    if(l->elem = new ET[SIZE]) {
        l->length = 0;
        l->listsize = SIZE;
        return Ok;
    }else {
        return Error;
    }
}

void SqSetNull(SqList *l){
    l->length = 0;
}

Status SqDestroy(SqList *l) {
    if(l->elem) {
        delete[] l->elem;
        l->elem = nullptr;
        l->listsize = 0;
        return Ok;
    }else {
        return Error;
    }
}

int SqListLength_L(SqList *l) {
    return l->length;
}

Status SqInsert(SqList *l,int i,ET d) {

    if(l->length == l->listsize) {
        return Error;
    } // 满
    if(i< 0 || i > l->length) {
        return Error;
    }//插入位置不正确
    ET *elem = l->elem;
    for(int j = l->length; j > i; j --) {
        elem[j] = elem[j-1];
    }
    l->length ++;
    elem[i] = d;
    return Ok;
}

Status SQDelete(SqList *l, int i,ET *d) {
    if(i<0  || i >= l->length) {
        return Error;
    }
    if(d)   *d = l->elem[i];
    for(int j = i; j<l->length - 1; j++) {
        l->elem[j] = l->elem[j+1];
    }
    l->length--;
    return Ok;
}

int find(SqList *l,ET d) {
    for(int i = 0;i < l->length;i++) {
        if(l->elem[i] == d)
            return i;
    }
    return -1;
}

void Print(SqList *l) {
    for(int i = 0; i < l-> length; i++) {
        printf("(");
        Print(l->elem[i]);
        printf(")");
    }
}

Status SqInsertRear(SqList *l, ET d) {
    return SqInsert(l,l->length,d);
}
/*
合并两个升序序列
*/
SqList merge(SqList*list1, SqList *list2) {
    SqList tList;
    SqListInit(&tList);
    ET *p1 = list1 ->elem;
    ET *p2 = list2 ->elem;
    int i = 0,j = 0;
    while (i < list1->length || j < list2->length) {
        if(i < list1->length && j < list2 ->length) {
            if(p1[i] <= p2[j] ){
                SqInsertRear(&tList,p1[i]);
                i++;
            }
        
            if(p2[j] <= p1[i] ) {
                SqInsertRear(&tList,p2[j]);
                j++;
            }
        }
        while(i >= list1->length && j < list2->length) {
            SqInsertRear(&tList,p2[j]);
            j++;
        }
        while(j >= list2->length && i < list1->length) {
            SqInsertRear(&tList,p1[i]);
            i++;
        }
    }
    
    return tList;
}
/*
  list1 =  list1 U list2 (并集）操作
*/
void combine(SqList*list1, SqList *list2) {
    for(int i = 0; i<list2->length; i++) {
        if(find(list1, list2->elem[i]) == -1) { 
            SqInsertRear(list1,list2->elem[i]);
        }
    }
}
/*
两个集合交集 放入 list1
*/
void cross(SqList*list1, SqList *list2) {
    for(int i = 0; i<list1->length; i++) {
        if(find(list2, list1->elem[i]) == -1) { 
            SQDelete(list1,i,nullptr);
            i--;
        }
    }
}

// int main() {
//     SqList list1;
//     SqListInit(&list1);
    
//     SqList list2;
//     SqListInit(&list2);

//     for(int i = 0; i < 10; i++) {
//         SqInsertRear(&list1,i);
//         SqInsertRear(&list2,7+i);
//     }

//     printf("Source:\n");
//     Print(&list1);
//     printf("\n");
//     Print(&list2);
//     printf("\n");
//     printf("Taget:\n");

//     cross(&list1,&list2);
//     Print(&list1);



//     return 0;
// }


// int main() {
//     SqList list1;
//     SqListInit(&list1);
    
//     SqList list2;
//     SqListInit(&list2);

//     for(int i = 0; i < 10; i+=2) {
//         SqInsertRear(&list1,i);
//         SqInsertRear(&list1,i);
//         SqInsertRear(&list2,i+1);
//         SqInsertRear(&list2,i+1);
//     }

//     printf("Src:\n");
//     Print(&list1);
//     printf("\n");
//     Print(&list2);
//     printf("\n");
//     printf("Taget:\n");
//     SqList tag = merge(&list1,&list2);
//     Print(&tag);



//     return 0;
// }


// int main()
// {
//     ET e = 1;
//     SqList l; 
    
//     SqListInit(&l);
    
//     SqInsert(&l,0,e);
//     e =100;
//     SqInsert(&l,1,e);
//     e = 200;
//     SqInsert(&l,2,e);

//     SQDelete(&l,1,nullptr);
//     Print(&l);
    
//     int len = SqListLength_L(&l);

//     printf("\nlen = %d",len);

//     return 0;
// }