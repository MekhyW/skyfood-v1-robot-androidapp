.class public Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;
.super Lcn/hutool/core/bean/copier/AbsCopier;
.source "ValueProviderToBeanCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/core/bean/copier/AbsCopier<",
        "Lcn/hutool/core/bean/copier/ValueProvider<",
        "Ljava/lang/String;",
        ">;TT;>;"
    }
.end annotation


# instance fields
.field private final targetType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcn/hutool/core/bean/copier/ValueProvider;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/bean/copier/ValueProvider<",
            "Ljava/lang/String;",
            ">;TT;",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/core/bean/copier/CopyOptions;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p4}, Lcn/hutool/core/bean/copier/AbsCopier;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/bean/copier/CopyOptions;)V

    .line 34
    iput-object p3, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->targetType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public copy()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->target:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-object v1, v1, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-object v1, v1, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    iget-object v2, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-object v0, v0, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Target class [{}] not assignable to Editable class [{}]"

    .line 42
    invoke-static {v1, v0, v2}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-object v0, v0, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    .line 46
    :cond_0
    invoke-static {v0}, Lcn/hutool/core/bean/BeanUtil;->getBeanDesc(Ljava/lang/Class;)Lcn/hutool/core/bean/BeanDesc;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v1, v1, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreCase:Z

    invoke-virtual {v0, v1}, Lcn/hutool/core/bean/BeanDesc;->getPropMap(Z)Ljava/util/Map;

    move-result-object v0

    .line 48
    new-instance v1, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 87
    iget-object v0, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->target:Ljava/lang/Object;

    return-object v0
.end method

.method synthetic lambda$copy$0$cn-hutool-core-bean-copier-ValueProviderToBeanCopier(Ljava/lang/String;Lcn/hutool/core/bean/PropDesc;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {v0, p1}, Lcn/hutool/core/bean/copier/CopyOptions;->editFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->source:Ljava/lang/Object;

    check-cast v0, Lcn/hutool/core/bean/copier/ValueProvider;

    invoke-interface {v0, p1}, Lcn/hutool/core/bean/copier/ValueProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 64
    :cond_2
    iget-object v0, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {v0, p1}, Lcn/hutool/core/bean/copier/CopyOptions;->testKeyFilter(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_6

    .line 69
    iget-object v0, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v0, v0, Lcn/hutool/core/bean/copier/CopyOptions;->transientSupport:Z

    invoke-virtual {p2, v0}, Lcn/hutool/core/bean/PropDesc;->isWritable(Z)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 75
    :cond_4
    iget-object v0, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->targetType:Ljava/lang/reflect/Type;

    invoke-virtual {p2}, Lcn/hutool/core/bean/PropDesc;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/hutool/core/util/TypeUtil;->getActualType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->source:Ljava/lang/Object;

    check-cast v1, Lcn/hutool/core/bean/copier/ValueProvider;

    invoke-interface {v1, p1, v0}, Lcn/hutool/core/bean/copier/ValueProvider;->value(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {p2}, Lcn/hutool/core/bean/PropDesc;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/hutool/core/bean/copier/CopyOptions;->testPropertyFilter(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 82
    :cond_5
    iget-object v1, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {v1, p1, v0}, Lcn/hutool/core/bean/copier/CopyOptions;->editFieldValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 85
    iget-object v3, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->target:Ljava/lang/Object;

    iget-object p1, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v5, p1, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreNullValue:Z

    iget-object p1, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v6, p1, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreError:Z

    iget-object p1, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v7, p1, Lcn/hutool/core/bean/copier/CopyOptions;->override:Z

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcn/hutool/core/bean/PropDesc;->setValue(Ljava/lang/Object;Ljava/lang/Object;ZZZ)Lcn/hutool/core/bean/PropDesc;

    :cond_6
    :goto_0
    return-void
.end method
