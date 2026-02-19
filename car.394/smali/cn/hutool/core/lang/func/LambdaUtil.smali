.class public Lcn/hutool/core/lang/func/LambdaUtil;
.super Ljava/lang/Object;
.source "LambdaUtil.java"


# static fields
.field private static final cache:Lcn/hutool/core/map/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/map/WeakConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/SerializedLambda;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcn/hutool/core/map/WeakConcurrentMap;

    invoke-direct {v0}, Lcn/hutool/core/map/WeakConcurrentMap;-><init>()V

    sput-object v0, Lcn/hutool/core/lang/func/LambdaUtil;->cache:Lcn/hutool/core/map/WeakConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _resolve(Ljava/io/Serializable;)Ljava/lang/invoke/SerializedLambda;
    .locals 3

    .line 205
    sget-object v0, Lcn/hutool/core/lang/func/LambdaUtil;->cache:Lcn/hutool/core/map/WeakConcurrentMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/hutool/core/lang/func/LambdaUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcn/hutool/core/lang/func/LambdaUtil$$ExternalSyntheticLambda0;-><init>(Ljava/io/Serializable;)V

    invoke-virtual {v0, v1, v2}, Lcn/hutool/core/map/WeakConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/invoke/SerializedLambda;

    return-object p0
.end method

.method private static checkLambdaTypeCanGetClass(I)V
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8be5lambda\u4e0d\u662f\u5408\u9002\u7684\u65b9\u6cd5\u5f15\u7528"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static getFieldName(Lcn/hutool/core/lang/func/Func0;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func0<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lcn/hutool/core/lang/func/LambdaUtil;->getMethodName(Lcn/hutool/core/lang/func/Func0;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/bean/BeanUtil;->getFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFieldName(Lcn/hutool/core/lang/func/Func1;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func1<",
            "TT;*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 156
    invoke-static {p0}, Lcn/hutool/core/lang/func/LambdaUtil;->getMethodName(Lcn/hutool/core/lang/func/Func1;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/bean/BeanUtil;->getFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodName(Lcn/hutool/core/lang/func/Func0;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func0<",
            "TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lcn/hutool/core/lang/func/LambdaUtil;->resolve(Lcn/hutool/core/lang/func/Func0;)Ljava/lang/invoke/SerializedLambda;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/invoke/SerializedLambda;->getImplMethodName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodName(Lcn/hutool/core/lang/func/Func1;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func1<",
            "TP;*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 96
    invoke-static {p0}, Lcn/hutool/core/lang/func/LambdaUtil;->resolve(Lcn/hutool/core/lang/func/Func1;)Ljava/lang/invoke/SerializedLambda;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/invoke/SerializedLambda;->getImplMethodName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRealClass(Lcn/hutool/core/lang/func/Func0;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func0<",
            "*>;)",
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lcn/hutool/core/lang/func/LambdaUtil;->resolve(Lcn/hutool/core/lang/func/Func0;)Ljava/lang/invoke/SerializedLambda;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/invoke/SerializedLambda;->getImplMethodKind()I

    move-result v0

    invoke-static {v0}, Lcn/hutool/core/lang/func/LambdaUtil;->checkLambdaTypeCanGetClass(I)V

    .line 60
    invoke-virtual {p0}, Ljava/lang/invoke/SerializedLambda;->getImplClass()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/ClassUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getRealClass(Lcn/hutool/core/lang/func/Func1;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func1<",
            "TP;TR;>;)",
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation

    .line 134
    invoke-static {p0}, Lcn/hutool/core/lang/func/LambdaUtil;->resolve(Lcn/hutool/core/lang/func/Func1;)Ljava/lang/invoke/SerializedLambda;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/invoke/SerializedLambda;->getImplMethodKind()I

    move-result v0

    invoke-static {v0}, Lcn/hutool/core/lang/func/LambdaUtil;->checkLambdaTypeCanGetClass(I)V

    .line 136
    invoke-virtual {p0}, Ljava/lang/invoke/SerializedLambda;->getInstantiatedMethodType()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3b

    .line 137
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lcn/hutool/core/util/StrUtil;->sub(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/ClassUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$_resolve$0(Ljava/io/Serializable;Ljava/lang/String;)Ljava/lang/invoke/SerializedLambda;
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "writeReplace"

    .line 205
    invoke-static {p0, v0, p1}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/invoke/SerializedLambda;

    return-object p0
.end method

.method public static resolve(Lcn/hutool/core/lang/func/Func0;)Ljava/lang/invoke/SerializedLambda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func0<",
            "TR;>;)",
            "Ljava/lang/invoke/SerializedLambda;"
        }
    .end annotation

    .line 85
    invoke-static {p0}, Lcn/hutool/core/lang/func/LambdaUtil;->_resolve(Ljava/io/Serializable;)Ljava/lang/invoke/SerializedLambda;

    move-result-object p0

    return-object p0
.end method

.method public static resolve(Lcn/hutool/core/lang/func/Func1;)Ljava/lang/invoke/SerializedLambda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func1<",
            "TT;*>;)",
            "Ljava/lang/invoke/SerializedLambda;"
        }
    .end annotation

    .line 72
    invoke-static {p0}, Lcn/hutool/core/lang/func/LambdaUtil;->_resolve(Ljava/io/Serializable;)Ljava/lang/invoke/SerializedLambda;

    move-result-object p0

    return-object p0
.end method
