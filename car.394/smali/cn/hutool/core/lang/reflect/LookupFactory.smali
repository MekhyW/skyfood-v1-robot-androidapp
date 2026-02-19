.class public Lcn/hutool/core/lang/reflect/LookupFactory;
.super Ljava/lang/Object;
.source "LookupFactory.java"


# static fields
.field private static final ALLOWED_MODES:I = 0xf

.field private static java8LookupConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ">;"
        }
    .end annotation
.end field

.field private static privateLookupInMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 34
    :try_start_0
    const-class v3, Ljava/lang/invoke/MethodHandles;

    const-string v4, "privateLookupIn"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v0

    const-class v6, Ljava/lang/invoke/MethodHandles$Lookup;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcn/hutool/core/lang/reflect/LookupFactory;->privateLookupInMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    sget-object v3, Lcn/hutool/core/lang/reflect/LookupFactory;->privateLookupInMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 43
    :try_start_1
    const-class v3, Ljava/lang/invoke/MethodHandles$Lookup;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/lang/reflect/LookupFactory;->java8LookupConstructor:Ljava/lang/reflect/Constructor;

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There is neither \'privateLookupIn(Class, Lookup)\' nor \'Lookup(Class, int)\' method in java.lang.invoke.MethodHandles."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandles$Lookup;"
        }
    .end annotation

    .line 62
    sget-object v0, Lcn/hutool/core/lang/reflect/LookupFactory;->privateLookupInMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    const-class v4, Ljava/lang/invoke/MethodHandles;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/invoke/MethodHandles$Lookup;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 66
    :goto_0
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    invoke-direct {v0, p0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 71
    :cond_0
    :try_start_1
    sget-object v0, Lcn/hutool/core/lang/reflect/LookupFactory;->java8LookupConstructor:Ljava/lang/reflect/Constructor;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    const/16 p0, 0xf

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/invoke/MethodHandles$Lookup;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no \'Lookup(Class, int)\' method in java.lang.invoke.MethodHandles."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
