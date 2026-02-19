.class public Lcn/hutool/core/collection/LineIter;
.super Lcn/hutool/core/collection/ComputeIter;
.source "LineIter.java"

# interfaces
.implements Lcn/hutool/core/collection/IterableIter;
.implements Ljava/io/Closeable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/collection/ComputeIter<",
        "Ljava/lang/String;",
        ">;",
        "Lcn/hutool/core/collection/IterableIter<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Closeable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 50
    invoke-static {p1, p2}, Lcn/hutool/core/io/IoUtil;->getReader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/collection/LineIter;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcn/hutool/core/collection/ComputeIter;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Reader must not be null"

    .line 60
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->getReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/collection/LineIter;->bufferedReader:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcn/hutool/core/collection/ComputeIter;->finish()V

    .line 89
    iget-object v0, p0, Lcn/hutool/core/collection/LineIter;->bufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcn/hutool/core/collection/LineIter;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 2

    .line 69
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/collection/LineIter;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_1
    invoke-virtual {p0, v0}, Lcn/hutool/core/collection/LineIter;->isValidLine(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {p0}, Lcn/hutool/core/collection/LineIter;->close()V

    .line 79
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected isValidLine(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
