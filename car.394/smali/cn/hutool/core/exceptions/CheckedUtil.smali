.class public Lcn/hutool/core/exceptions/CheckedUtil;
.super Ljava/lang/Object;
.source "CheckedUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc1Rt;,
        Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc0Rt;,
        Lcn/hutool/core/exceptions/CheckedUtil$VoidFuncRt;,
        Lcn/hutool/core/exceptions/CheckedUtil$Func1Rt;,
        Lcn/hutool/core/exceptions/CheckedUtil$Func0Rt;,
        Lcn/hutool/core/exceptions/CheckedUtil$FuncRt;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$dl52wjjHNMrmHmFErdAk5vzcuhI(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$uncheck$2300d7df$1(Lcn/hutool/core/lang/func/VoidFunc0;Lcn/hutool/core/lang/func/Supplier1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 257
    :try_start_0
    invoke-interface {p0}, Lcn/hutool/core/lang/func/VoidFunc0;->call()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    if-nez p1, :cond_0

    .line 260
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 262
    :cond_0
    invoke-interface {p1, p0}, Lcn/hutool/core/lang/func/Supplier1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method static synthetic lambda$uncheck$5732f3b9$1(Lcn/hutool/core/lang/func/Func1;Lcn/hutool/core/lang/func/Supplier1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 185
    :try_start_0
    invoke-interface {p0, p2}, Lcn/hutool/core/lang/func/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    if-nez p1, :cond_0

    .line 188
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 190
    :cond_0
    invoke-interface {p1, p0}, Lcn/hutool/core/lang/func/Supplier1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method static synthetic lambda$uncheck$5b7ace8e$1(Lcn/hutool/core/lang/func/VoidFunc;Lcn/hutool/core/lang/func/Supplier1;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 209
    :try_start_0
    invoke-interface {p0, p2}, Lcn/hutool/core/lang/func/VoidFunc;->call([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    if-nez p1, :cond_0

    .line 212
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 214
    :cond_0
    invoke-interface {p1, p0}, Lcn/hutool/core/lang/func/Supplier1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method static synthetic lambda$uncheck$6c25eb8b$1(Lcn/hutool/core/lang/func/Func;Lcn/hutool/core/lang/func/Supplier1;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 136
    :try_start_0
    invoke-interface {p0, p2}, Lcn/hutool/core/lang/func/Func;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    if-nez p1, :cond_0

    .line 139
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 141
    :cond_0
    invoke-interface {p1, p0}, Lcn/hutool/core/lang/func/Supplier1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method static synthetic lambda$uncheck$a3c5d001$1(Lcn/hutool/core/lang/func/VoidFunc0;Ljava/lang/RuntimeException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 233
    :try_start_0
    invoke-interface {p0}, Lcn/hutool/core/lang/func/VoidFunc0;->call()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    if-nez p1, :cond_0

    .line 236
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 238
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 239
    throw p1
.end method

.method static synthetic lambda$uncheck$ad313ebc$1(Lcn/hutool/core/lang/func/VoidFunc1;Lcn/hutool/core/lang/func/Supplier1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 281
    :try_start_0
    invoke-interface {p0, p2}, Lcn/hutool/core/lang/func/VoidFunc1;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    if-nez p1, :cond_0

    .line 284
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 286
    :cond_0
    invoke-interface {p1, p0}, Lcn/hutool/core/lang/func/Supplier1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method static synthetic lambda$uncheck$e9066ec4$1(Lcn/hutool/core/lang/func/Func0;Lcn/hutool/core/lang/func/Supplier1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 160
    :try_start_0
    invoke-interface {p0}, Lcn/hutool/core/lang/func/Func0;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    if-nez p1, :cond_0

    .line 163
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 165
    :cond_0
    invoke-interface {p1, p0}, Lcn/hutool/core/lang/func/Supplier1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/Func0;)Lcn/hutool/core/exceptions/CheckedUtil$Func0Rt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func0<",
            "TR;>;)",
            "Lcn/hutool/core/exceptions/CheckedUtil$Func0Rt<",
            "TR;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/exceptions/CheckedUtil;->uncheck(Lcn/hutool/core/lang/func/Func0;Lcn/hutool/core/lang/func/Supplier1;)Lcn/hutool/core/exceptions/CheckedUtil$Func0Rt;

    move-result-object p0

    return-object p0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/Func0;Lcn/hutool/core/lang/func/Supplier1;)Lcn/hutool/core/exceptions/CheckedUtil$Func0Rt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func0<",
            "TR;>;",
            "Lcn/hutool/core/lang/func/Supplier1<",
            "Ljava/lang/RuntimeException;",
            "Ljava/lang/Exception;",
            ">;)",
            "Lcn/hutool/core/exceptions/CheckedUtil$Func0Rt<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "expression can not be null"

    .line 157
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda5;-><init>(Lcn/hutool/core/lang/func/Func0;Lcn/hutool/core/lang/func/Supplier1;)V

    return-object v0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/Func1;)Lcn/hutool/core/exceptions/CheckedUtil$Func1Rt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func1<",
            "TP;TR;>;)",
            "Lcn/hutool/core/exceptions/CheckedUtil$Func1Rt<",
            "TP;TR;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/exceptions/CheckedUtil;->uncheck(Lcn/hutool/core/lang/func/Func1;Lcn/hutool/core/lang/func/Supplier1;)Lcn/hutool/core/exceptions/CheckedUtil$Func1Rt;

    move-result-object p0

    return-object p0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/Func1;Lcn/hutool/core/lang/func/Supplier1;)Lcn/hutool/core/exceptions/CheckedUtil$Func1Rt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func1<",
            "TP;TR;>;",
            "Lcn/hutool/core/lang/func/Supplier1<",
            "Ljava/lang/RuntimeException;",
            "Ljava/lang/Exception;",
            ">;)",
            "Lcn/hutool/core/exceptions/CheckedUtil$Func1Rt<",
            "TP;TR;>;"
        }
    .end annotation

    const-string v0, "expression can not be null"

    .line 182
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda3;-><init>(Lcn/hutool/core/lang/func/Func1;Lcn/hutool/core/lang/func/Supplier1;)V

    return-object v0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/Func;)Lcn/hutool/core/exceptions/CheckedUtil$FuncRt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func<",
            "TP;TR;>;)",
            "Lcn/hutool/core/exceptions/CheckedUtil$FuncRt<",
            "TP;TR;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/exceptions/CheckedUtil;->uncheck(Lcn/hutool/core/lang/func/Func;Lcn/hutool/core/lang/func/Supplier1;)Lcn/hutool/core/exceptions/CheckedUtil$FuncRt;

    move-result-object p0

    return-object p0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/Func;Lcn/hutool/core/lang/func/Supplier1;)Lcn/hutool/core/exceptions/CheckedUtil$FuncRt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func<",
            "TP;TR;>;",
            "Lcn/hutool/core/lang/func/Supplier1<",
            "Ljava/lang/RuntimeException;",
            "Ljava/lang/Exception;",
            ">;)",
            "Lcn/hutool/core/exceptions/CheckedUtil$FuncRt<",
            "TP;TR;>;"
        }
    .end annotation

    const-string v0, "expression can not be null"

    .line 133
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda7;-><init>(Lcn/hutool/core/lang/func/Func;Lcn/hutool/core/lang/func/Supplier1;)V

    return-object v0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/VoidFunc0;)Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc0Rt;
    .locals 1

    .line 106
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/exceptions/CheckedUtil;->uncheck(Lcn/hutool/core/lang/func/VoidFunc0;Lcn/hutool/core/lang/func/Supplier1;)Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc0Rt;

    move-result-object p0

    return-object p0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/VoidFunc0;Lcn/hutool/core/lang/func/Supplier1;)Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc0Rt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/lang/func/VoidFunc0;",
            "Lcn/hutool/core/lang/func/Supplier1<",
            "Ljava/lang/RuntimeException;",
            "Ljava/lang/Exception;",
            ">;)",
            "Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc0Rt;"
        }
    .end annotation

    const-string v0, "expression can not be null"

    .line 254
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/lang/func/VoidFunc0;Lcn/hutool/core/lang/func/Supplier1;)V

    return-object v0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/VoidFunc0;Ljava/lang/RuntimeException;)Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc0Rt;
    .locals 1

    const-string v0, "expression can not be null"

    .line 230
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda4;-><init>(Lcn/hutool/core/lang/func/VoidFunc0;Ljava/lang/RuntimeException;)V

    return-object v0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/VoidFunc1;)Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc1Rt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/VoidFunc1<",
            "TP;>;)",
            "Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc1Rt<",
            "TP;>;"
        }
    .end annotation

    .line 118
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/exceptions/CheckedUtil;->uncheck(Lcn/hutool/core/lang/func/VoidFunc1;Lcn/hutool/core/lang/func/Supplier1;)Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc1Rt;

    move-result-object p0

    return-object p0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/VoidFunc1;Lcn/hutool/core/lang/func/Supplier1;)Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc1Rt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/VoidFunc1<",
            "TP;>;",
            "Lcn/hutool/core/lang/func/Supplier1<",
            "Ljava/lang/RuntimeException;",
            "Ljava/lang/Exception;",
            ">;)",
            "Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc1Rt<",
            "TP;>;"
        }
    .end annotation

    const-string v0, "expression can not be null"

    .line 278
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/core/lang/func/VoidFunc1;Lcn/hutool/core/lang/func/Supplier1;)V

    return-object v0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/VoidFunc;)Lcn/hutool/core/exceptions/CheckedUtil$VoidFuncRt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/VoidFunc<",
            "TP;>;)",
            "Lcn/hutool/core/exceptions/CheckedUtil$VoidFuncRt<",
            "TP;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/exceptions/CheckedUtil;->uncheck(Lcn/hutool/core/lang/func/VoidFunc;Lcn/hutool/core/lang/func/Supplier1;)Lcn/hutool/core/exceptions/CheckedUtil$VoidFuncRt;

    move-result-object p0

    return-object p0
.end method

.method public static uncheck(Lcn/hutool/core/lang/func/VoidFunc;Lcn/hutool/core/lang/func/Supplier1;)Lcn/hutool/core/exceptions/CheckedUtil$VoidFuncRt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/VoidFunc<",
            "TP;>;",
            "Lcn/hutool/core/lang/func/Supplier1<",
            "Ljava/lang/RuntimeException;",
            "Ljava/lang/Exception;",
            ">;)",
            "Lcn/hutool/core/exceptions/CheckedUtil$VoidFuncRt<",
            "TP;>;"
        }
    .end annotation

    const-string v0, "expression can not be null"

    .line 206
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    new-instance v0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda6;-><init>(Lcn/hutool/core/lang/func/VoidFunc;Lcn/hutool/core/lang/func/Supplier1;)V

    return-object v0
.end method
