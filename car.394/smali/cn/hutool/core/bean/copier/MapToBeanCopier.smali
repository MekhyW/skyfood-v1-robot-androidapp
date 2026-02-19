.class public Lcn/hutool/core/bean/copier/MapToBeanCopier;
.super Lcn/hutool/core/bean/copier/AbsCopier;
.source "MapToBeanCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/core/bean/copier/AbsCopier<",
        "Ljava/util/Map<",
        "**>;TT;>;"
    }
.end annotation


# instance fields
.field private final targetType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;TT;",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/core/bean/copier/CopyOptions;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p4}, Lcn/hutool/core/bean/copier/AbsCopier;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/bean/copier/CopyOptions;)V

    .line 39
    instance-of p2, p1, Lcn/hutool/core/map/MapWrapper;

    if-eqz p2, :cond_0

    .line 40
    check-cast p1, Lcn/hutool/core/map/MapWrapper;

    invoke-virtual {p1}, Lcn/hutool/core/map/MapWrapper;->getRaw()Ljava/util/Map;

    move-result-object p1

    .line 41
    instance-of p1, p1, Lcn/hutool/core/map/CaseInsensitiveMap;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p4, p1}, Lcn/hutool/core/bean/copier/CopyOptions;->setIgnoreCase(Z)Lcn/hutool/core/bean/copier/CopyOptions;

    .line 46
    :cond_0
    iput-object p3, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->targetType:Ljava/lang/reflect/Type;

    return-void
.end method

.method private findPropDesc(Ljava/util/Map;Ljava/lang/String;)Lcn/hutool/core/bean/PropDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/hutool/core/bean/PropDesc;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcn/hutool/core/bean/PropDesc;"
        }
    .end annotation

    .line 109
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/bean/PropDesc;

    if-eqz v0, :cond_0

    return-object v0

    .line 115
    :cond_0
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->toCamelCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/bean/PropDesc;

    return-object p1
.end method


# virtual methods
.method public copy()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->target:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-object v1, v1, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-object v1, v1, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    iget-object v2, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-object v0, v0, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Target class [{}] not assignable to Editable class [{}]"

    .line 54
    invoke-static {v1, v0, v2}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-object v0, v0, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    .line 58
    :cond_0
    invoke-static {v0}, Lcn/hutool/core/bean/BeanUtil;->getBeanDesc(Ljava/lang/Class;)Lcn/hutool/core/bean/BeanDesc;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v1, v1, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreCase:Z

    invoke-virtual {v0, v1}, Lcn/hutool/core/bean/BeanDesc;->getPropMap(Z)Ljava/util/Map;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->source:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcn/hutool/core/bean/copier/MapToBeanCopier$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcn/hutool/core/bean/copier/MapToBeanCopier$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/bean/copier/MapToBeanCopier;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 97
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->target:Ljava/lang/Object;

    return-object v0
.end method

.method synthetic lambda$copy$0$cn-hutool-core-bean-copier-MapToBeanCopier(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcn/hutool/core/bean/copier/CopyOptions;->editFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {v0, p2}, Lcn/hutool/core/bean/copier/CopyOptions;->testKeyFilter(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 76
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/hutool/core/bean/copier/MapToBeanCopier;->findPropDesc(Ljava/util/Map;Ljava/lang/String;)Lcn/hutool/core/bean/PropDesc;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 77
    iget-object p1, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean p1, p1, Lcn/hutool/core/bean/copier/CopyOptions;->transientSupport:Z

    invoke-virtual {v1, p1}, Lcn/hutool/core/bean/PropDesc;->isWritable(Z)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v1}, Lcn/hutool/core/bean/PropDesc;->getFieldName()Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {v1}, Lcn/hutool/core/bean/PropDesc;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcn/hutool/core/bean/copier/CopyOptions;->testPropertyFilter(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 89
    :cond_4
    iget-object p2, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->targetType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Lcn/hutool/core/bean/PropDesc;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/hutool/core/util/TypeUtil;->getActualType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 91
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {v0, p2, p3}, Lcn/hutool/core/bean/copier/CopyOptions;->convertField(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 92
    iget-object p3, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {p3, p1, p2}, Lcn/hutool/core/bean/copier/CopyOptions;->editFieldValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 95
    iget-object v2, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->target:Ljava/lang/Object;

    iget-object p1, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v4, p1, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreNullValue:Z

    iget-object p1, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v5, p1, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreError:Z

    iget-object p1, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v6, p1, Lcn/hutool/core/bean/copier/CopyOptions;->override:Z

    invoke-virtual/range {v1 .. v6}, Lcn/hutool/core/bean/PropDesc;->setValue(Ljava/lang/Object;Ljava/lang/Object;ZZZ)Lcn/hutool/core/bean/PropDesc;

    :cond_5
    :goto_0
    return-void
.end method
