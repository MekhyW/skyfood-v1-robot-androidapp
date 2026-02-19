.class public Lcn/hutool/core/util/ModifierUtil;
.super Ljava/lang/Object;
.source "ModifierUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/util/ModifierUtil$ModifierType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs hasModifier(Ljava/lang/Class;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcn/hutool/core/util/ModifierUtil$ModifierType;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 103
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p1}, Lcn/hutool/core/util/ModifierUtil;->modifiersToInt([Lcn/hutool/core/util/ModifierUtil$ModifierType;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static varargs hasModifier(Ljava/lang/reflect/Constructor;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Lcn/hutool/core/util/ModifierUtil$ModifierType;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 117
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result p0

    invoke-static {p1}, Lcn/hutool/core/util/ModifierUtil;->modifiersToInt([Lcn/hutool/core/util/ModifierUtil$ModifierType;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static varargs hasModifier(Ljava/lang/reflect/Field;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 145
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p1}, Lcn/hutool/core/util/ModifierUtil;->modifiersToInt([Lcn/hutool/core/util/ModifierUtil$ModifierType;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static varargs hasModifier(Ljava/lang/reflect/Method;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 131
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p1}, Lcn/hutool/core/util/ModifierUtil;->modifiersToInt([Lcn/hutool/core/util/ModifierUtil$ModifierType;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isAbstract(Ljava/lang/reflect/Method;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/4 v1, 0x0

    .line 265
    sget-object v2, Lcn/hutool/core/util/ModifierUtil$ModifierType;->ABSTRACT:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcn/hutool/core/util/ModifierUtil;->hasModifier(Ljava/lang/reflect/Method;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z

    move-result p0

    return p0
.end method

.method public static isPublic(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/4 v1, 0x0

    .line 178
    sget-object v2, Lcn/hutool/core/util/ModifierUtil$ModifierType;->PUBLIC:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcn/hutool/core/util/ModifierUtil;->hasModifier(Ljava/lang/Class;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z

    move-result p0

    return p0
.end method

.method public static isPublic(Ljava/lang/reflect/Constructor;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/4 v1, 0x0

    .line 188
    sget-object v2, Lcn/hutool/core/util/ModifierUtil$ModifierType;->PUBLIC:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcn/hutool/core/util/ModifierUtil;->hasModifier(Ljava/lang/reflect/Constructor;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z

    move-result p0

    return p0
.end method

.method public static isPublic(Ljava/lang/reflect/Field;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/4 v1, 0x0

    .line 158
    sget-object v2, Lcn/hutool/core/util/ModifierUtil$ModifierType;->PUBLIC:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcn/hutool/core/util/ModifierUtil;->hasModifier(Ljava/lang/reflect/Field;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z

    move-result p0

    return p0
.end method

.method public static isPublic(Ljava/lang/reflect/Method;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/4 v1, 0x0

    .line 168
    sget-object v2, Lcn/hutool/core/util/ModifierUtil$ModifierType;->PUBLIC:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcn/hutool/core/util/ModifierUtil;->hasModifier(Ljava/lang/reflect/Method;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z

    move-result p0

    return p0
.end method

.method public static isStatic(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/4 v1, 0x0

    .line 221
    sget-object v2, Lcn/hutool/core/util/ModifierUtil$ModifierType;->STATIC:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcn/hutool/core/util/ModifierUtil;->hasModifier(Ljava/lang/Class;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z

    move-result p0

    return p0
.end method

.method public static isStatic(Ljava/lang/reflect/Field;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/4 v1, 0x0

    .line 199
    sget-object v2, Lcn/hutool/core/util/ModifierUtil$ModifierType;->STATIC:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcn/hutool/core/util/ModifierUtil;->hasModifier(Ljava/lang/reflect/Field;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z

    move-result p0

    return p0
.end method

.method public static isStatic(Ljava/lang/reflect/Method;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/4 v1, 0x0

    .line 210
    sget-object v2, Lcn/hutool/core/util/ModifierUtil$ModifierType;->STATIC:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcn/hutool/core/util/ModifierUtil;->hasModifier(Ljava/lang/reflect/Method;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z

    move-result p0

    return p0
.end method

.method public static isSynthetic(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Ljava/lang/Class;->isSynthetic()Z

    move-result p0

    return p0
.end method

.method public static isSynthetic(Ljava/lang/reflect/Field;)Z
    .locals 0

    .line 232
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result p0

    return p0
.end method

.method public static isSynthetic(Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 243
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result p0

    return p0
.end method

.method private static varargs modifiersToInt([Lcn/hutool/core/util/ModifierUtil$ModifierType;)I
    .locals 3

    const/4 v0, 0x0

    .line 328
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcn/hutool/core/util/ModifierUtil$ModifierType;->getValue()I

    move-result v0

    const/4 v1, 0x1

    .line 329
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 330
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcn/hutool/core/util/ModifierUtil$ModifierType;->getValue()I

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static removeFinalModify(Ljava/lang/reflect/Field;)V
    .locals 6

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/hutool/core/util/ModifierUtil$ModifierType;

    .line 299
    sget-object v2, Lcn/hutool/core/util/ModifierUtil$ModifierType;->FINAL:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lcn/hutool/core/util/ModifierUtil;->hasModifier(Ljava/lang/reflect/Field;[Lcn/hutool/core/util/ModifierUtil$ModifierType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 306
    :cond_0
    :try_start_0
    const-class v1, Ljava/lang/reflect/Field;

    const-string v2, "modifiers"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 308
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 311
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 314
    :goto_0
    new-instance v2, Lcn/hutool/core/exceptions/UtilException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v0

    const-string p0, "IllegalAccess for {}.{}"

    invoke-direct {v2, v1, p0, v4}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_1
    :goto_1
    return-void
.end method
