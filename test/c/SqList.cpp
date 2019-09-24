#define  Ok  11
#define  Error  -11
#define  List_Init_Size   10
#define  ListIncrement   10

typedef  int  Status;      //状态类型
typedef  int  ElemType;   //元素类型
typedef  ElemType  ET;
typedef  struct{
   ElemType   *elem ;      //动态空间基址
   int        length ;         //实际元素个数
   int        listsize ;        //当前的存储容量
}SqList ;        //容量(以sizeof(ElemType)为单位)


Status SqListInit(SqList *l) {
    if(l->elem = new ET[10]) {
        return Ok;
    }else
    {
        return Error;
    }
    
}
