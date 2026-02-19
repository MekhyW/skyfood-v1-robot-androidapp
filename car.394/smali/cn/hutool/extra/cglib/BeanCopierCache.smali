.class public final enum Lcn/hutool/extra/cglib/BeanCopierCache;
.super Ljava/lang/Enum;
.source "BeanCopierCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/extra/cglib/BeanCopierCache;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/extra/cglib/BeanCopierCache;

.field public static final enum INSTANCE:Lcn/hutool/extra/cglib/BeanCopierCache;


# instance fields
.field private final cache:Lcn/hutool/core/map/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/map/WeakConcurrentMap<",
            "Ljava/lang/String;",
            "Lnet/sf/cglib/beans/BeanCopier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcn/hutool/extra/cglib/BeanCopierCache;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/extra/cglib/BeanCopierCache;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/hutool/extra/cglib/BeanCopierCache;->INSTANCE:Lcn/hutool/extra/cglib/BeanCopierCache;

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/hutool/extra/cglib/BeanCopierCache;

    aput-object v0, v1, v2

    .line 15
    sput-object v1, Lcn/hutool/extra/cglib/BeanCopierCache;->$VALUES:[Lcn/hutool/extra/cglib/BeanCopierCache;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    new-instance p1, Lcn/hutool/core/map/WeakConcurrentMap;

    invoke-direct {p1}, Lcn/hutool/core/map/WeakConcurrentMap;-><init>()V

    iput-object p1, p0, Lcn/hutool/extra/cglib/BeanCopierCache;->cache:Lcn/hutool/core/map/WeakConcurrentMap;

    return-void
.end method

.method private genKey(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->builder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x23

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$get$3b77ef17$1(Ljava/lang/Class;Ljava/lang/Class;Z)Lnet/sf/cglib/beans/BeanCopier;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lnet/sf/cglib/beans/BeanCopier;->create(Ljava/lang/Class;Ljava/lang/Class;Z)Lnet/sf/cglib/beans/BeanCopier;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/extra/cglib/BeanCopierCache;
    .locals 1

    .line 15
    const-class v0, Lcn/hutool/extra/cglib/BeanCopierCache;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/extra/cglib/BeanCopierCache;

    return-object p0
.end method

.method public static values()[Lcn/hutool/extra/cglib/BeanCopierCache;
    .locals 1

    .line 15
    sget-object v0, Lcn/hutool/extra/cglib/BeanCopierCache;->$VALUES:[Lcn/hutool/extra/cglib/BeanCopierCache;

    invoke-virtual {v0}, [Lcn/hutool/extra/cglib/BeanCopierCache;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/extra/cglib/BeanCopierCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Class;Ljava/lang/Class;Lnet/sf/cglib/core/Converter;)Lnet/sf/cglib/beans/BeanCopier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/sf/cglib/core/Converter;",
            ")",
            "Lnet/sf/cglib/beans/BeanCopier;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 32
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/extra/cglib/BeanCopierCache;->get(Ljava/lang/Class;Ljava/lang/Class;Z)Lnet/sf/cglib/beans/BeanCopier;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Class;Ljava/lang/Class;Z)Lnet/sf/cglib/beans/BeanCopier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lnet/sf/cglib/beans/BeanCopier;"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/extra/cglib/BeanCopierCache;->genKey(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcn/hutool/extra/cglib/BeanCopierCache;->cache:Lcn/hutool/core/map/WeakConcurrentMap;

    new-instance v2, Lcn/hutool/extra/cglib/BeanCopierCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, p3}, Lcn/hutool/extra/cglib/BeanCopierCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;Ljava/lang/Class;Z)V

    invoke-virtual {v1, v0, v2}, Lcn/hutool/core/map/WeakConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Lcn/hutool/core/lang/func/Func0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/cglib/beans/BeanCopier;

    return-object p1
.end method
