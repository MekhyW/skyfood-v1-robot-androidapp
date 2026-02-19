.class public Lcn/hutool/core/text/StrJoiner;
.super Ljava/lang/Object;
.source "StrJoiner.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/text/StrJoiner$NullMode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appendable:Ljava/lang/Appendable;

.field private delimiter:Ljava/lang/CharSequence;

.field private emptyResult:Ljava/lang/String;

.field private hasContent:Z

.field private nullMode:Lcn/hutool/core/text/StrJoiner$NullMode;

.field private prefix:Ljava/lang/CharSequence;

.field private suffix:Ljava/lang/CharSequence;

.field private wrapElement:Z


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0, v0}, Lcn/hutool/core/text/StrJoiner;-><init>(Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcn/hutool/core/text/StrJoiner$NullMode;->NULL_STRING:Lcn/hutool/core/text/StrJoiner$NullMode;

    iput-object v0, p0, Lcn/hutool/core/text/StrJoiner;->nullMode:Lcn/hutool/core/text/StrJoiner$NullMode;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcn/hutool/core/text/StrJoiner;->emptyResult:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 124
    iput-object p1, p0, Lcn/hutool/core/text/StrJoiner;->appendable:Ljava/lang/Appendable;

    .line 125
    invoke-direct {p0, p1}, Lcn/hutool/core/text/StrJoiner;->checkHasContent(Ljava/lang/Appendable;)V

    .line 128
    :cond_0
    iput-object p2, p0, Lcn/hutool/core/text/StrJoiner;->delimiter:Ljava/lang/CharSequence;

    .line 129
    iput-object p3, p0, Lcn/hutool/core/text/StrJoiner;->prefix:Ljava/lang/CharSequence;

    .line 130
    iput-object p4, p0, Lcn/hutool/core/text/StrJoiner;->suffix:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0, p1}, Lcn/hutool/core/text/StrJoiner;-><init>(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0, p1, p2, p3}, Lcn/hutool/core/text/StrJoiner;-><init>(Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private checkHasContent(Ljava/lang/Appendable;)V
    .locals 2

    .line 422
    instance-of v0, p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 423
    check-cast p1, Ljava/lang/CharSequence;

    .line 424
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/hutool/core/text/StrJoiner;->delimiter:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->endWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 425
    iput-boolean v1, p0, Lcn/hutool/core/text/StrJoiner;->hasContent:Z

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/hutool/core/text/StrJoiner;->delimiter:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->endWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 430
    iput-boolean v1, p0, Lcn/hutool/core/text/StrJoiner;->hasContent:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static of(Lcn/hutool/core/text/StrJoiner;)Lcn/hutool/core/text/StrJoiner;
    .locals 4

    .line 53
    new-instance v0, Lcn/hutool/core/text/StrJoiner;

    iget-object v1, p0, Lcn/hutool/core/text/StrJoiner;->delimiter:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcn/hutool/core/text/StrJoiner;->prefix:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcn/hutool/core/text/StrJoiner;->suffix:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3}, Lcn/hutool/core/text/StrJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 54
    iget-boolean v1, p0, Lcn/hutool/core/text/StrJoiner;->wrapElement:Z

    iput-boolean v1, v0, Lcn/hutool/core/text/StrJoiner;->wrapElement:Z

    .line 55
    iget-object v1, p0, Lcn/hutool/core/text/StrJoiner;->nullMode:Lcn/hutool/core/text/StrJoiner$NullMode;

    iput-object v1, v0, Lcn/hutool/core/text/StrJoiner;->nullMode:Lcn/hutool/core/text/StrJoiner$NullMode;

    .line 56
    iget-object p0, p0, Lcn/hutool/core/text/StrJoiner;->emptyResult:Ljava/lang/String;

    iput-object p0, v0, Lcn/hutool/core/text/StrJoiner;->emptyResult:Ljava/lang/String;

    return-object v0
.end method

.method public static of(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;
    .locals 1

    .line 68
    new-instance v0, Lcn/hutool/core/text/StrJoiner;

    invoke-direct {v0, p0}, Lcn/hutool/core/text/StrJoiner;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static of(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;
    .locals 1

    .line 80
    new-instance v0, Lcn/hutool/core/text/StrJoiner;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/core/text/StrJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private prepare()Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget-boolean v0, p0, Lcn/hutool/core/text/StrJoiner;->hasContent:Z

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcn/hutool/core/text/StrJoiner;->appendable:Ljava/lang/Appendable;

    iget-object v1, p0, Lcn/hutool/core/text/StrJoiner;->delimiter:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/text/StrJoiner;->appendable:Ljava/lang/Appendable;

    if-nez v0, :cond_1

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/text/StrJoiner;->appendable:Ljava/lang/Appendable;

    .line 408
    :cond_1
    iget-boolean v0, p0, Lcn/hutool/core/text/StrJoiner;->wrapElement:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/hutool/core/text/StrJoiner;->prefix:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcn/hutool/core/text/StrJoiner;->appendable:Ljava/lang/Appendable;

    iget-object v1, p0, Lcn/hutool/core/text/StrJoiner;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2
    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lcn/hutool/core/text/StrJoiner;->hasContent:Z

    .line 413
    :goto_0
    iget-object v0, p0, Lcn/hutool/core/text/StrJoiner;->appendable:Ljava/lang/Appendable;

    return-object v0
.end method


# virtual methods
.method public append(C)Lcn/hutool/core/text/StrJoiner;
    .locals 0

    .line 328
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;
    .locals 2

    const/4 v0, 0x0

    .line 293
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->length(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/lang/CharSequence;II)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Lcn/hutool/core/text/StrJoiner;
    .locals 2

    if-nez p1, :cond_3

    .line 299
    sget-object v0, Lcn/hutool/core/text/StrJoiner$1;->$SwitchMap$cn$hutool$core$text$StrJoiner$NullMode:[I

    iget-object v1, p0, Lcn/hutool/core/text/StrJoiner;->nullMode:Lcn/hutool/core/text/StrJoiner$NullMode;

    invoke-virtual {v1}, Lcn/hutool/core/text/StrJoiner$NullMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "null"

    const/4 p3, 0x4

    goto :goto_0

    :cond_1
    const-string p1, ""

    goto :goto_0

    :cond_2
    return-object p0

    .line 312
    :cond_3
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcn/hutool/core/text/StrJoiner;->prepare()Ljava/lang/Appendable;

    move-result-object v0

    .line 313
    iget-boolean v1, p0, Lcn/hutool/core/text/StrJoiner;->wrapElement:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/hutool/core/text/StrJoiner;->prefix:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    iget-object v1, p0, Lcn/hutool/core/text/StrJoiner;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 316
    :cond_4
    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 317
    iget-boolean p1, p0, Lcn/hutool/core/text/StrJoiner;->wrapElement:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/hutool/core/text/StrJoiner;->suffix:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 318
    iget-object p1, p0, Lcn/hutool/core/text/StrJoiner;->suffix:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object p0

    :catch_0
    move-exception p1

    .line 321
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public append(Ljava/lang/Iterable;Ljava/util/function/Function;)Lcn/hutool/core/text/StrJoiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "-TE;+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcn/hutool/core/text/StrJoiner;"
        }
    .end annotation

    .line 271
    invoke-static {p1}, Lcn/hutool/core/collection/IterUtil;->getIter(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/util/Iterator;Ljava/util/function/Function;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/Object;)Lcn/hutool/core/text/StrJoiner;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 207
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;

    goto :goto_0

    .line 208
    :cond_0
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    new-instance v0, Lcn/hutool/core/collection/ArrayIter;

    invoke-direct {v0, p1}, Lcn/hutool/core/collection/ArrayIter;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/util/Iterator;)Lcn/hutool/core/text/StrJoiner;

    goto :goto_0

    .line 210
    :cond_1
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_2

    .line 211
    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/util/Iterator;)Lcn/hutool/core/text/StrJoiner;

    goto :goto_0

    .line 212
    :cond_2
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_3

    .line 213
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/util/Iterator;)Lcn/hutool/core/text/StrJoiner;

    goto :goto_0

    .line 215
    :cond_3
    invoke-static {p1}, Lcn/hutool/core/util/ObjectUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;

    :goto_0
    return-object p0
.end method

.method public append(Ljava/util/Iterator;)Lcn/hutool/core/text/StrJoiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Lcn/hutool/core/text/StrJoiner;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 243
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/lang/Object;)Lcn/hutool/core/text/StrJoiner;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public append(Ljava/util/Iterator;Ljava/util/function/Function;)Lcn/hutool/core/text/StrJoiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "-TE;+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcn/hutool/core/text/StrJoiner;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 284
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lcn/hutool/core/text/StrJoiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcn/hutool/core/text/StrJoiner;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 231
    :cond_0
    new-instance v0, Lcn/hutool/core/collection/ArrayIter;

    invoke-direct {v0, p1}, Lcn/hutool/core/collection/ArrayIter;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/util/Iterator;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    return-object p1
.end method

.method public append([Ljava/lang/Object;Ljava/util/function/Function;)Lcn/hutool/core/text/StrJoiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/Function<",
            "TT;+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcn/hutool/core/text/StrJoiner;"
        }
    .end annotation

    .line 259
    new-instance v0, Lcn/hutool/core/collection/ArrayIter;

    invoke-direct {v0, p1}, Lcn/hutool/core/collection/ArrayIter;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/util/Iterator;Ljava/util/function/Function;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcn/hutool/core/text/StrJoiner;->append(C)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/lang/CharSequence;II)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .locals 2

    .line 360
    iget-object v0, p0, Lcn/hutool/core/text/StrJoiner;->appendable:Ljava/lang/Appendable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcn/hutool/core/text/StrJoiner;->suffix:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/hutool/core/text/StrJoiner;->emptyResult:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public merge(Lcn/hutool/core/text/StrJoiner;)Lcn/hutool/core/text/StrJoiner;
    .locals 2

    if-eqz p1, :cond_1

    .line 340
    iget-object v0, p1, Lcn/hutool/core/text/StrJoiner;->appendable:Ljava/lang/Appendable;

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p1}, Lcn/hutool/core/text/StrJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    iget-boolean p1, p1, Lcn/hutool/core/text/StrJoiner;->wrapElement:Z

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p0, v0}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;

    goto :goto_0

    .line 345
    :cond_0
    iget-object p1, p0, Lcn/hutool/core/text/StrJoiner;->prefix:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/lang/CharSequence;II)Lcn/hutool/core/text/StrJoiner;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setDelimiter(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;
    .locals 0

    .line 140
    iput-object p1, p0, Lcn/hutool/core/text/StrJoiner;->delimiter:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEmptyResult(Ljava/lang/String;)Lcn/hutool/core/text/StrJoiner;
    .locals 0

    .line 195
    iput-object p1, p0, Lcn/hutool/core/text/StrJoiner;->emptyResult:Ljava/lang/String;

    return-object p0
.end method

.method public setNullMode(Lcn/hutool/core/text/StrJoiner$NullMode;)Lcn/hutool/core/text/StrJoiner;
    .locals 0

    .line 184
    iput-object p1, p0, Lcn/hutool/core/text/StrJoiner;->nullMode:Lcn/hutool/core/text/StrJoiner$NullMode;

    return-object p0
.end method

.method public setPrefix(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;
    .locals 0

    .line 151
    iput-object p1, p0, Lcn/hutool/core/text/StrJoiner;->prefix:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSuffix(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;
    .locals 0

    .line 162
    iput-object p1, p0, Lcn/hutool/core/text/StrJoiner;->suffix:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setWrapElement(Z)Lcn/hutool/core/text/StrJoiner;
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcn/hutool/core/text/StrJoiner;->wrapElement:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 366
    iget-object v0, p0, Lcn/hutool/core/text/StrJoiner;->appendable:Ljava/lang/Appendable;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcn/hutool/core/text/StrJoiner;->emptyResult:Ljava/lang/String;

    return-object v0

    .line 370
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-boolean v1, p0, Lcn/hutool/core/text/StrJoiner;->wrapElement:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/hutool/core/text/StrJoiner;->suffix:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/text/StrJoiner;->suffix:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
