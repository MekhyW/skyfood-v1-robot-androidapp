.class public Lcn/hutool/core/bean/copier/CopyOptions;
.super Ljava/lang/Object;
.source "CopyOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected converter:Lcn/hutool/core/convert/TypeConverter;

.field protected editable:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private fieldNameEditor:Lcn/hutool/core/lang/Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/lang/Editor<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fieldValueEditor:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected ignoreCase:Z

.field protected ignoreError:Z

.field private ignoreKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected ignoreNullValue:Z

.field protected override:Z

.field private propertiesFilter:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected transientSupport:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->transientSupport:Z

    .line 71
    iput-boolean v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->override:Z

    .line 81
    new-instance v0, Lcn/hutool/core/bean/copier/CopyOptions$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/hutool/core/bean/copier/CopyOptions$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/core/bean/copier/CopyOptions;)V

    iput-object v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->converter:Lcn/hutool/core/convert/TypeConverter;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Z[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->transientSupport:Z

    .line 71
    iput-boolean v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->override:Z

    .line 81
    new-instance v0, Lcn/hutool/core/bean/copier/CopyOptions$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/hutool/core/bean/copier/CopyOptions$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/core/bean/copier/CopyOptions;)V

    iput-object v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->converter:Lcn/hutool/core/convert/TypeConverter;

    .line 133
    new-instance v0, Lcn/hutool/core/bean/copier/CopyOptions$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcn/hutool/core/bean/copier/CopyOptions$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->propertiesFilter:Ljava/util/function/BiPredicate;

    .line 134
    iput-object p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    .line 135
    iput-boolean p2, p0, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreNullValue:Z

    .line 136
    invoke-virtual {p0, p3}, Lcn/hutool/core/bean/copier/CopyOptions;->setIgnoreProperties([Ljava/lang/String;)Lcn/hutool/core/bean/copier/CopyOptions;

    return-void
.end method

.method public static create()Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 1

    .line 103
    new-instance v0, Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-direct {v0}, Lcn/hutool/core/bean/copier/CopyOptions;-><init>()V

    return-object v0
.end method

.method public static varargs create(Ljava/lang/Class;Z[Ljava/lang/String;)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/String;",
            ")",
            "Lcn/hutool/core/bean/copier/CopyOptions;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcn/hutool/core/bean/copier/CopyOptions;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/core/bean/copier/CopyOptions;-><init>(Ljava/lang/Class;Z[Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$setFieldMapping$2(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 259
    invoke-interface {p0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected convertField(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 348
    iget-object v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->converter:Lcn/hutool/core/convert/TypeConverter;

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0, p1, p2}, Lcn/hutool/core/convert/TypeConverter;->convert(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method protected editFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->fieldNameEditor:Lcn/hutool/core/lang/Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/hutool/core/lang/Editor;->edit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method protected editFieldValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 298
    iget-object v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->fieldValueEditor:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public ignoreCase()Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 1

    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0, v0}, Lcn/hutool/core/bean/copier/CopyOptions;->setIgnoreCase(Z)Lcn/hutool/core/bean/copier/CopyOptions;

    move-result-object v0

    return-object v0
.end method

.method public ignoreError()Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 1

    const/4 v0, 0x1

    .line 227
    invoke-virtual {p0, v0}, Lcn/hutool/core/bean/copier/CopyOptions;->setIgnoreError(Z)Lcn/hutool/core/bean/copier/CopyOptions;

    move-result-object v0

    return-object v0
.end method

.method public ignoreNullValue()Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 1

    const/4 v0, 0x1

    .line 168
    invoke-virtual {p0, v0}, Lcn/hutool/core/bean/copier/CopyOptions;->setIgnoreNullValue(Z)Lcn/hutool/core/bean/copier/CopyOptions;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$0$cn-hutool-core-bean-copier-CopyOptions(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn.hutool.json.JSONObject"

    const-string v3, "cn.hutool.json.JSONArray"

    .line 87
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/hutool/core/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 89
    const-class v1, Ljava/lang/Object;

    invoke-static {p1, v1}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "toBean"

    invoke-static {p2, p1, v0}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 92
    :cond_1
    iget-boolean v1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreError:Z

    invoke-static {p1, p2, v0, v1}, Lcn/hutool/core/convert/Convert;->convertWithCheck(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setConverter(Lcn/hutool/core/convert/TypeConverter;)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 0

    .line 334
    iput-object p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->converter:Lcn/hutool/core/convert/TypeConverter;

    return-object p0
.end method

.method public setEditable(Ljava/lang/Class;)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/hutool/core/bean/copier/CopyOptions;"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->editable:Ljava/lang/Class;

    return-object p0
.end method

.method public setFieldMapping(Ljava/util/Map;)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/hutool/core/bean/copier/CopyOptions;"
        }
    .end annotation

    .line 259
    new-instance v0, Lcn/hutool/core/bean/copier/CopyOptions$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcn/hutool/core/bean/copier/CopyOptions$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/bean/copier/CopyOptions;->setFieldNameEditor(Lcn/hutool/core/lang/Editor;)Lcn/hutool/core/bean/copier/CopyOptions;

    move-result-object p1

    return-object p1
.end method

.method public setFieldNameEditor(Lcn/hutool/core/lang/Editor;)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/lang/Editor<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/hutool/core/bean/copier/CopyOptions;"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->fieldNameEditor:Lcn/hutool/core/lang/Editor;

    return-object p0
.end method

.method public setFieldValueEditor(Ljava/util/function/BiFunction;)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/hutool/core/bean/copier/CopyOptions;"
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->fieldValueEditor:Ljava/util/function/BiFunction;

    return-object p0
.end method

.method public setIgnoreCase(Z)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreCase:Z

    return-object p0
.end method

.method public setIgnoreError(Z)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreError:Z

    return-object p0
.end method

.method public setIgnoreNullValue(Z)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreNullValue:Z

    return-object p0
.end method

.method public varargs setIgnoreProperties([Lcn/hutool/core/lang/func/Func1;)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lcn/hutool/core/lang/func/Func1<",
            "TP;TR;>;)",
            "Lcn/hutool/core/bean/copier/CopyOptions;"
        }
    .end annotation

    .line 205
    new-instance v0, Lcn/hutool/core/bean/copier/CopyOptions$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/bean/copier/CopyOptions$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0}, Lcn/hutool/core/util/ArrayUtil;->mapToSet([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreKeySet:Ljava/util/Set;

    return-object p0
.end method

.method public varargs setIgnoreProperties([Ljava/lang/String;)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 0

    .line 190
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreKeySet:Ljava/util/Set;

    return-object p0
.end method

.method public setOverride(Z)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 0

    .line 322
    iput-boolean p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->override:Z

    return-object p0
.end method

.method public setPropertiesFilter(Ljava/util/function/BiPredicate;)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/hutool/core/bean/copier/CopyOptions;"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->propertiesFilter:Ljava/util/function/BiPredicate;

    return-object p0
.end method

.method public setTransientSupport(Z)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 0

    .line 310
    iput-boolean p1, p0, Lcn/hutool/core/bean/copier/CopyOptions;->transientSupport:Z

    return-object p0
.end method

.method protected testKeyFilter(Ljava/lang/Object;)Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreKeySet:Ljava/util/Set;

    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->ignoreKeySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected testPropertyFilter(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z
    .locals 1

    .line 371
    iget-object v0, p0, Lcn/hutool/core/bean/copier/CopyOptions;->propertiesFilter:Ljava/util/function/BiPredicate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
