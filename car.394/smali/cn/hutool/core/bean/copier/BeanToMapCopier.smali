.class public Lcn/hutool/core/bean/copier/BeanToMapCopier;
.super Lcn/hutool/core/bean/copier/AbsCopier;
.source "BeanToMapCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/bean/copier/AbsCopier<",
        "Ljava/lang/Object;",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# instance fields
.field private final targetType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p4}, Lcn/hutool/core/bean/copier/AbsCopier;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/bean/copier/CopyOptions;)V

    .line 34
    iput-object p3, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->targetType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copy()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public copy()Ljava/util/Map;
    .locals 4

    .line 39
    iget-object v0, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->source:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-object v1, v1, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-object v1, v1, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    iget-object v2, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->source:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-object v0, v0, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Source class [{}] not assignable to Editable class [{}]"

    .line 42
    invoke-static {v1, v0, v2}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-object v0, v0, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    .line 47
    :cond_0
    invoke-static {v0}, Lcn/hutool/core/bean/BeanUtil;->getBeanDesc(Ljava/lang/Class;)Lcn/hutool/core/bean/BeanDesc;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v1, v1, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreCase:Z

    invoke-virtual {v0, v1}, Lcn/hutool/core/bean/BeanDesc;->getPropMap(Z)Ljava/util/Map;

    move-result-object v0

    .line 48
    new-instance v1, Lcn/hutool/core/bean/copier/BeanToMapCopier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/hutool/core/bean/copier/BeanToMapCopier$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/bean/copier/BeanToMapCopier;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 85
    iget-object v0, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->target:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method synthetic lambda$copy$0$cn-hutool-core-bean-copier-BeanToMapCopier(Ljava/lang/String;Lcn/hutool/core/bean/PropDesc;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 49
    iget-object v0, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v0, v0, Lcn/hutool/core/bean/copier/CopyOptions;->transientSupport:Z

    invoke-virtual {p2, v0}, Lcn/hutool/core/bean/PropDesc;->isReadable(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {v0, p1}, Lcn/hutool/core/bean/copier/CopyOptions;->editFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {v0, p1}, Lcn/hutool/core/bean/copier/CopyOptions;->testKeyFilter(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->source:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcn/hutool/core/bean/PropDesc;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {p2}, Lcn/hutool/core/bean/PropDesc;->getField()Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Lcn/hutool/core/bean/copier/CopyOptions;->testPropertyFilter(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 72
    :cond_3
    iget-object p2, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->targetType:Ljava/lang/reflect/Type;

    invoke-static {p2}, Lcn/hutool/core/util/TypeUtil;->getTypeArguments(Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 75
    iget-object v1, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    const/4 v2, 0x1

    aget-object p2, p2, v2

    invoke-virtual {v1, p2, v0}, Lcn/hutool/core/bean/copier/CopyOptions;->convertField(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 76
    iget-object v0, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {v0, p1, p2}, Lcn/hutool/core/bean/copier/CopyOptions;->editFieldValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    .line 80
    iget-object p2, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean p2, p2, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreNullValue:Z

    if-nez p2, :cond_6

    .line 82
    :cond_5
    iget-object p2, p0, Lcn/hutool/core/bean/copier/BeanToMapCopier;->target:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    return-void
.end method
