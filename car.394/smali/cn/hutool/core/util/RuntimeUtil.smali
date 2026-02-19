.class public Lcn/hutool/core/util/RuntimeUtil;
.super Ljava/lang/Object;
.source "RuntimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShutdownHook(Ljava/lang/Runnable;)V
    .locals 2

    .line 232
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    instance-of v1, p0, Ljava/lang/Thread;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/Thread;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method private static cmdSplit(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 338
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 340
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->strBuilder()Lcn/hutool/core/text/StrBuilder;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v1, :cond_5

    .line 344
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_3

    const/16 v8, 0x22

    if-eq v7, v8, :cond_0

    const/16 v8, 0x27

    if-eq v7, v8, :cond_0

    .line 371
    invoke-virtual {v3, v7}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    goto :goto_1

    :cond_0
    if-eqz v6, :cond_2

    .line 349
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Character;

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v8

    if-ne v7, v8, :cond_1

    .line 351
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move v6, v4

    .line 354
    :cond_1
    invoke-virtual {v3, v7}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    goto :goto_1

    .line 356
    :cond_2
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-virtual {v3, v7}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    .line 364
    invoke-virtual {v3, v7}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    goto :goto_1

    .line 366
    :cond_4
    invoke-virtual {v3}, Lcn/hutool/core/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v3}, Lcn/hutool/core/text/StrBuilder;->reset()Lcn/hutool/core/text/StrBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 376
    :cond_5
    invoke-virtual {v3}, Lcn/hutool/core/text/StrBuilder;->hasContent()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 377
    invoke-virtual {v3}, Lcn/hutool/core/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-array p0, v4, [Ljava/lang/String;

    .line 380
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static destroy(Ljava/lang/Process;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_0
    return-void
.end method

.method public static varargs exec([Ljava/lang/String;)Ljava/lang/Process;
    .locals 1

    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-static {p0}, Lcn/hutool/core/util/RuntimeUtil;->handleCmds([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 86
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static varargs exec([Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1

    .line 116
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {p2}, Lcn/hutool/core/util/RuntimeUtil;->handleCmds([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 118
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-static {p0, v0, p1}, Lcn/hutool/core/util/RuntimeUtil;->exec([Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    return-object p0
.end method

.method public static varargs execForLines(Ljava/nio/charset/Charset;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 71
    invoke-static {p1}, Lcn/hutool/core/util/RuntimeUtil;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    invoke-static {p1, p0}, Lcn/hutool/core/util/RuntimeUtil;->getResultLines(Ljava/lang/Process;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs execForLines([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 58
    invoke-static {}, Lcn/hutool/core/util/CharsetUtil;->systemCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/RuntimeUtil;->execForLines(Ljava/nio/charset/Charset;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs execForStr(Ljava/nio/charset/Charset;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lcn/hutool/core/util/RuntimeUtil;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    invoke-static {p1, p0}, Lcn/hutool/core/util/RuntimeUtil;->getResult(Ljava/lang/Process;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs execForStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 34
    invoke-static {}, Lcn/hutool/core/util/CharsetUtil;->systemCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/RuntimeUtil;->execForStr(Ljava/nio/charset/Charset;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorResult(Ljava/lang/Process;)Ljava/lang/String;
    .locals 1

    .line 191
    invoke-static {}, Lcn/hutool/core/util/CharsetUtil;->systemCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/RuntimeUtil;->getErrorResult(Ljava/lang/Process;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorResult(Ljava/lang/Process;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 205
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    :try_start_1
    invoke-static {v0, p1}, Lcn/hutool/core/io/IoUtil;->read(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 209
    invoke-static {p0}, Lcn/hutool/core/util/RuntimeUtil;->destroy(Ljava/lang/Process;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    .line 208
    :goto_0
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 209
    invoke-static {p0}, Lcn/hutool/core/util/RuntimeUtil;->destroy(Ljava/lang/Process;)V

    .line 210
    throw p1
.end method

.method public static getFreeMemory()J
    .locals 2

    .line 262
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMaxMemory()J
    .locals 2

    .line 282
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 303
    sget-object v0, Lcn/hutool/core/lang/Pid;->INSTANCE:Lcn/hutool/core/lang/Pid;

    invoke-virtual {v0}, Lcn/hutool/core/lang/Pid;->get()I

    move-result v0

    return v0
.end method

.method public static getProcessorCount()I
    .locals 1

    .line 248
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x7

    :cond_0
    return v0
.end method

.method public static getResult(Ljava/lang/Process;)Ljava/lang/String;
    .locals 1

    .line 161
    invoke-static {}, Lcn/hutool/core/util/CharsetUtil;->systemCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/RuntimeUtil;->getResult(Ljava/lang/Process;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResult(Ljava/lang/Process;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 175
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    :try_start_1
    invoke-static {v0, p1}, Lcn/hutool/core/io/IoUtil;->read(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 179
    invoke-static {p0}, Lcn/hutool/core/util/RuntimeUtil;->destroy(Ljava/lang/Process;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    .line 178
    :goto_0
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 179
    invoke-static {p0}, Lcn/hutool/core/util/RuntimeUtil;->destroy(Ljava/lang/Process;)V

    .line 180
    throw p1
.end method

.method public static getResultLines(Ljava/lang/Process;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Process;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-static {}, Lcn/hutool/core/util/CharsetUtil;->systemCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/RuntimeUtil;->getResultLines(Ljava/lang/Process;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getResultLines(Ljava/lang/Process;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Process;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p1, v1}, Lcn/hutool/core/io/IoUtil;->readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 149
    invoke-static {p0}, Lcn/hutool/core/util/RuntimeUtil;->destroy(Ljava/lang/Process;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    .line 148
    :goto_0
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 149
    invoke-static {p0}, Lcn/hutool/core/util/RuntimeUtil;->destroy(Ljava/lang/Process;)V

    .line 150
    throw p1
.end method

.method public static getTotalMemory()J
    .locals 2

    .line 272
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUsableMemory()J
    .locals 4

    .line 292
    invoke-static {}, Lcn/hutool/core/util/RuntimeUtil;->getMaxMemory()J

    move-result-wide v0

    invoke-static {}, Lcn/hutool/core/util/RuntimeUtil;->getTotalMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcn/hutool/core/util/RuntimeUtil;->getFreeMemory()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static varargs handleCmds([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 313
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 318
    array-length v1, p0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 319
    aget-object p0, p0, v0

    .line 320
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-static {p0}, Lcn/hutool/core/util/RuntimeUtil;->cmdSplit(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 321
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Command is blank !"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 314
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Command is empty !"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
