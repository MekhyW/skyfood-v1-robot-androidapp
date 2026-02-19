.class public Lcn/hutool/core/bean/copier/provider/BeanValueProvider;
.super Ljava/lang/Object;
.source "BeanValueProvider.java"

# interfaces
.implements Lcn/hutool/core/bean/copier/ValueProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/bean/copier/ValueProvider<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final ignoreError:Z

.field private final source:Ljava/lang/Object;

.field final sourcePdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/hutool/core/bean/PropDesc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;-><init>(Ljava/lang/Object;ZZLcn/hutool/core/lang/Editor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ZZLcn/hutool/core/lang/Editor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "ZZ",
            "Lcn/hutool/core/lang/Editor<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;->source:Ljava/lang/Object;

    .line 48
    iput-boolean p3, p0, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;->ignoreError:Z

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/bean/BeanUtil;->getBeanDesc(Ljava/lang/Class;)Lcn/hutool/core/bean/BeanDesc;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/hutool/core/bean/BeanDesc;->getPropMap(Z)Ljava/util/Map;

    move-result-object p1

    .line 53
    new-instance p3, Lcn/hutool/core/map/FuncKeyMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    new-instance v1, Lcn/hutool/core/bean/copier/provider/BeanValueProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p4}, Lcn/hutool/core/bean/copier/provider/BeanValueProvider$$ExternalSyntheticLambda0;-><init>(ZLcn/hutool/core/lang/Editor;)V

    check-cast v1, Ljava/io/Serializable;

    check-cast v1, Ljava/util/function/Function;

    invoke-direct {p3, v0, v1}, Lcn/hutool/core/map/FuncKeyMap;-><init>(Ljava/util/Map;Ljava/util/function/Function;)V

    iput-object p3, p0, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;->sourcePdMap:Ljava/util/Map;

    .line 62
    invoke-interface {p3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private getPropDesc(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcn/hutool/core/bean/PropDesc;
    .locals 2

    .line 92
    iget-object v0, p0, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;->sourcePdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/bean/PropDesc;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 93
    const-class v1, Ljava/lang/Boolean;

    if-eq v1, p2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, p2, :cond_1

    .line 95
    :cond_0
    iget-object p2, p0, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;->sourcePdMap:Ljava/util/Map;

    const-string v0, "is"

    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->upperFirstAndAddPre(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/hutool/core/bean/PropDesc;

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$new$9d0d83f1$1(ZLcn/hutool/core/lang/Editor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 54
    instance-of p0, p2, Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/hutool/core/lang/Editor;->edit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 60
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;->getPropDesc(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcn/hutool/core/bean/PropDesc;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1, v0}, Lcn/hutool/core/bean/PropDesc;->isReadable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic value(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;->value(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2

    .line 67
    invoke-direct {p0, p1, p2}, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;->getPropDesc(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcn/hutool/core/bean/PropDesc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;->source:Ljava/lang/Object;

    iget-boolean v1, p0, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;->ignoreError:Z

    invoke-virtual {p1, v0, p2, v1}, Lcn/hutool/core/bean/PropDesc;->getValue(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
