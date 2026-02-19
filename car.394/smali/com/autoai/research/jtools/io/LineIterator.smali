.class public Lcom/autoai/research/jtools/io/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;

.field private cachedLine:Ljava/lang/String;

.field private finished:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/autoai/research/jtools/io/LineIterator;->finished:Z

    if-eqz p1, :cond_1

    .line 72
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Ljava/io/BufferedReader;

    iput-object p1, p0, Lcom/autoai/research/jtools/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/autoai/research/jtools/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Reader must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static closeQuietly(Lcom/autoai/research/jtools/io/LineIterator;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/autoai/research/jtools/io/LineIterator;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/autoai/research/jtools/io/LineIterator;->finished:Z

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Lcom/autoai/research/jtools/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/autoai/research/jtools/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/autoai/research/jtools/io/LineIterator;->cachedLine:Ljava/lang/String;

    return-void
.end method

.method public hasNext()Z
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/autoai/research/jtools/io/LineIterator;->cachedLine:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/autoai/research/jtools/io/LineIterator;->finished:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 97
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/autoai/research/jtools/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 99
    iput-boolean v1, p0, Lcom/autoai/research/jtools/io/LineIterator;->finished:Z

    return v2

    .line 101
    :cond_2
    invoke-virtual {p0, v0}, Lcom/autoai/research/jtools/io/LineIterator;->isValidLine(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    iput-object v0, p0, Lcom/autoai/research/jtools/io/LineIterator;->cachedLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {p0}, Lcom/autoai/research/jtools/io/LineIterator;->close()V

    .line 108
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected isValidLine(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/autoai/research/jtools/io/LineIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/autoai/research/jtools/io/LineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextLine()Ljava/lang/String;
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/autoai/research/jtools/io/LineIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/autoai/research/jtools/io/LineIterator;->cachedLine:Ljava/lang/String;

    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lcom/autoai/research/jtools/io/LineIterator;->cachedLine:Ljava/lang/String;

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more lines"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove unsupported on LineIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
