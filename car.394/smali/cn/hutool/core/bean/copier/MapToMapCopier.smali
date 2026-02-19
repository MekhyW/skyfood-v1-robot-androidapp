.class public Lcn/hutool/core/bean/copier/MapToMapCopier;
.super Lcn/hutool/core/bean/copier/AbsCopier;
.source "MapToMapCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/bean/copier/AbsCopier<",
        "Ljava/util/Map;",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# instance fields
.field private final targetType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p4}, Lcn/hutool/core/bean/copier/AbsCopier;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/bean/copier/CopyOptions;)V

    .line 31
    iput-object p3, p0, Lcn/hutool/core/bean/copier/MapToMapCopier;->targetType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcn/hutool/core/bean/copier/MapToMapCopier;->copy()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public copy()Ljava/util/Map;
    .locals 2

    .line 36
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToMapCopier;->source:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/bean/copier/MapToMapCopier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/hutool/core/bean/copier/MapToMapCopier$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/bean/copier/MapToMapCopier;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 73
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToMapCopier;->target:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method synthetic lambda$copy$0$cn-hutool-core-bean-copier-MapToMapCopier(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v0, v0, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreNullValue:Z

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/hutool/core/bean/copier/CopyOptions;->editFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {v0, p1}, Lcn/hutool/core/bean/copier/CopyOptions;->testKeyFilter(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 56
    :cond_3
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToMapCopier;->target:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lcn/hutool/core/bean/copier/MapToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    iget-boolean v2, v2, Lcn/hutool/core/bean/copier/CopyOptions;->override:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    return-void

    .line 63
    :cond_4
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToMapCopier;->targetType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcn/hutool/core/util/TypeUtil;->getTypeArguments(Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 66
    iget-object v2, p0, Lcn/hutool/core/bean/copier/MapToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0, p2}, Lcn/hutool/core/bean/copier/CopyOptions;->convertField(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 67
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToMapCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-virtual {v0, p1, p2}, Lcn/hutool/core/bean/copier/CopyOptions;->editFieldValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 71
    :cond_5
    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToMapCopier;->target:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
