.class public final Lcn/hutool/core/text/csv/CsvWriter;
.super Ljava/lang/Object;
.source "CsvWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final config:Lcn/hutool/core/text/csv/CsvWriteConfig;

.field private isFirstLine:Z

.field private newline:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 71
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lcn/hutool/core/text/csv/CsvWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/core/text/csv/CsvWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/hutool/core/text/csv/CsvWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;ZLcn/hutool/core/text/csv/CsvWriteConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;ZLcn/hutool/core/text/csv/CsvWriteConfig;)V
    .locals 0

    .line 137
    invoke-static {p1, p2, p3}, Lcn/hutool/core/io/FileUtil;->getWriter(Ljava/io/File;Ljava/nio/charset/Charset;Z)Ljava/io/BufferedWriter;

    move-result-object p1

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    if-nez p4, :cond_0

    invoke-static {}, Lcn/hutool/core/text/csv/CsvWriteConfig;->defaultConfig()Lcn/hutool/core/text/csv/CsvWriteConfig;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcn/hutool/core/text/csv/CsvWriteConfig;->setEndingLineBreak(Z)Lcn/hutool/core/text/csv/CsvWriteConfig;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-virtual {p4, p2}, Lcn/hutool/core/text/csv/CsvWriteConfig;->setEndingLineBreak(Z)Lcn/hutool/core/text/csv/CsvWriteConfig;

    move-result-object p4

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p4}, Lcn/hutool/core/text/csv/CsvWriter;-><init>(Ljava/io/Writer;Lcn/hutool/core/text/csv/CsvWriteConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/text/csv/CsvWriter;-><init>(Ljava/io/Writer;Lcn/hutool/core/text/csv/CsvWriteConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcn/hutool/core/text/csv/CsvWriteConfig;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->newline:Z

    .line 52
    iput-boolean v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->isFirstLine:Z

    .line 156
    instance-of v0, p1, Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    .line 157
    new-instance p1, Lcn/hutool/core/text/csv/CsvWriter$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcn/hutool/core/text/csv/CsvWriter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p2, p1}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/text/csv/CsvWriteConfig;

    iput-object p1, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/text/csv/CsvWriter;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 81
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/hutool/core/text/csv/CsvWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 0

    .line 102
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/core/text/csv/CsvWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcn/hutool/core/text/csv/CsvWriteConfig;)V
    .locals 0

    .line 125
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/hutool/core/text/csv/CsvWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;ZLcn/hutool/core/text/csv/CsvWriteConfig;)V

    return-void
.end method

.method private appendField(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    iget-boolean v0, v0, Lcn/hutool/core/text/csv/CsvWriteConfig;->alwaysDelimitText:Z

    .line 401
    iget-object v1, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    iget-char v1, v1, Lcn/hutool/core/text/csv/CsvWriteConfig;->textDelimiter:C

    .line 402
    iget-object v2, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    iget-char v2, v2, Lcn/hutool/core/text/csv/CsvWriteConfig;->fieldSeparator:C

    .line 404
    iget-boolean v3, p0, Lcn/hutool/core/text/csv/CsvWriter;->newline:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 405
    iget-object v3, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 407
    :cond_0
    iput-boolean v4, p0, Lcn/hutool/core/text/csv/CsvWriter;->newline:Z

    :goto_0
    const/4 v3, 0x1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    .line 412
    iget-object p1, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    const/4 v0, 0x2

    new-array v0, v0, [C

    aput-char v1, v0, v4

    aput-char v1, v0, v3

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write([C)V

    :cond_1
    return-void

    .line 417
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 421
    array-length v5, p1

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_6

    aget-char v7, p1, v6

    if-ne v7, v1, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    if-eq v7, v2, :cond_4

    const/16 v8, 0xa

    if-eq v7, v8, :cond_4

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    :cond_4
    move v0, v3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    move v3, v0

    move v0, v4

    :goto_2
    if-eqz v3, :cond_7

    .line 434
    iget-object v2, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(I)V

    :cond_7
    if-eqz v0, :cond_9

    .line 439
    array-length v0, p1

    :goto_3
    if-ge v4, v0, :cond_a

    aget-char v2, p1, v4

    if-ne v2, v1, :cond_8

    .line 442
    iget-object v5, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v5, v1}, Ljava/io/Writer;->write(I)V

    .line 444
    :cond_8
    iget-object v5, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v5, v2}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 447
    :cond_9
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    :cond_a
    if-eqz v3, :cond_b

    .line 452
    iget-object p1, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_b
    return-void
.end method

.method private varargs appendLine([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 366
    :try_start_0
    invoke-direct {p0, p1}, Lcn/hutool/core/text/csv/CsvWriter;->doAppendLine([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 368
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private varargs doAppendLine([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 380
    iget-boolean v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->isFirstLine:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 382
    iput-boolean v1, p0, Lcn/hutool/core/text/csv/CsvWriter;->isFirstLine:Z

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    iget-object v2, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    iget-object v2, v2, Lcn/hutool/core/text/csv/CsvWriteConfig;->lineDelimiter:[C

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write([C)V

    .line 386
    :goto_0
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 387
    invoke-direct {p0, v2}, Lcn/hutool/core/text/csv/CsvWriter;->appendField(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 389
    iput-boolean p1, p0, Lcn/hutool/core/text/csv/CsvWriter;->newline:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    iget-boolean v0, v0, Lcn/hutool/core/text/csv/CsvWriteConfig;->endingLineBreak:Z

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcn/hutool/core/text/csv/CsvWriter;->writeLine()Lcn/hutool/core/text/csv/CsvWriter;

    .line 344
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 350
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 352
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAlwaysDelimitText(Z)Lcn/hutool/core/text/csv/CsvWriter;
    .locals 1

    .line 168
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/core/text/csv/CsvWriteConfig;->setAlwaysDelimitText(Z)Lcn/hutool/core/text/csv/CsvWriteConfig;

    return-object p0
.end method

.method public setLineDelimiter([C)Lcn/hutool/core/text/csv/CsvWriter;
    .locals 1

    .line 179
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/core/text/csv/CsvWriteConfig;->setLineDelimiter([C)Lcn/hutool/core/text/csv/CsvWriteConfig;

    return-object p0
.end method

.method public write(Lcn/hutool/core/text/csv/CsvData;)Lcn/hutool/core/text/csv/CsvWriter;
    .locals 2

    if-eqz p1, :cond_1

    .line 221
    invoke-virtual {p1}, Lcn/hutool/core/text/csv/CsvData;->getHeader()Ljava/util/List;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/csv/CsvWriter;->writeHeaderLine([Ljava/lang/String;)Lcn/hutool/core/text/csv/CsvWriter;

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcn/hutool/core/text/csv/CsvData;->getRows()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/text/csv/CsvWriter;->write(Ljava/lang/Iterable;)Lcn/hutool/core/text/csv/CsvWriter;

    .line 227
    invoke-virtual {p0}, Lcn/hutool/core/text/csv/CsvWriter;->flush()V

    :cond_1
    return-object p0
.end method

.method public write(Ljava/lang/Iterable;)Lcn/hutool/core/text/csv/CsvWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcn/hutool/core/text/csv/CsvWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 202
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcn/hutool/core/convert/Convert;->toStrArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/hutool/core/text/csv/CsvWriter;->appendLine([Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/core/text/csv/CsvWriter;->flush()V

    :cond_1
    return-object p0
.end method

.method public varargs write([[Ljava/lang/String;)Lcn/hutool/core/text/csv/CsvWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 191
    new-instance v0, Lcn/hutool/core/collection/ArrayIter;

    invoke-direct {v0, p1}, Lcn/hutool/core/collection/ArrayIter;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/csv/CsvWriter;->write(Ljava/lang/Iterable;)Lcn/hutool/core/text/csv/CsvWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeBeans(Ljava/lang/Iterable;)Lcn/hutool/core/text/csv/CsvWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcn/hutool/core/text/csv/CsvWriter;"
        }
    .end annotation

    .line 239
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 243
    invoke-static {v1, v3}, Lcn/hutool/core/bean/BeanUtil;->beanToMap(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/csv/CsvWriter;->writeHeaderLine([Ljava/lang/String;)Lcn/hutool/core/text/csv/CsvWriter;

    move v0, v2

    .line 248
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcn/hutool/core/convert/Convert;->toStrArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/hutool/core/text/csv/CsvWriter;->writeLine([Ljava/lang/String;)Lcn/hutool/core/text/csv/CsvWriter;

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcn/hutool/core/text/csv/CsvWriter;->flush()V

    :cond_2
    return-object p0
.end method

.method public writeComment(Ljava/lang/String;)Lcn/hutool/core/text/csv/CsvWriter;
    .locals 4

    .line 320
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    iget-object v0, v0, Lcn/hutool/core/text/csv/CsvWriteConfig;->commentCharacter:Ljava/lang/Character;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Comment is disable!"

    invoke-static {v0, v3, v2}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :try_start_0
    iget-boolean v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->isFirstLine:Z

    if-eqz v0, :cond_0

    .line 324
    iput-boolean v1, p0, Lcn/hutool/core/text/csv/CsvWriter;->isFirstLine:Z

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    iget-object v1, v1, Lcn/hutool/core/text/csv/CsvWriteConfig;->lineDelimiter:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    .line 328
    :goto_0
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    iget-object v1, v1, Lcn/hutool/core/text/csv/CsvWriteConfig;->commentCharacter:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 329
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lcn/hutool/core/text/csv/CsvWriter;->newline:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 332
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs writeHeaderLine([Ljava/lang/String;)Lcn/hutool/core/text/csv/CsvWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    iget-object v0, v0, Lcn/hutool/core/text/csv/CsvWriteConfig;->headerAlias:Ljava/util/Map;

    .line 265
    invoke-static {v0}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 268
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 269
    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 271
    aput-object v2, p1, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0, p1}, Lcn/hutool/core/text/csv/CsvWriter;->writeLine([Ljava/lang/String;)Lcn/hutool/core/text/csv/CsvWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeLine()Lcn/hutool/core/text/csv/CsvWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 302
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcn/hutool/core/text/csv/CsvWriter;->config:Lcn/hutool/core/text/csv/CsvWriteConfig;

    iget-object v1, v1, Lcn/hutool/core/text/csv/CsvWriteConfig;->lineDelimiter:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcn/hutool/core/text/csv/CsvWriter;->newline:Z

    return-object p0

    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs writeLine([Ljava/lang/String;)Lcn/hutool/core/text/csv/CsvWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 287
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcn/hutool/core/text/csv/CsvWriter;->writeLine()Lcn/hutool/core/text/csv/CsvWriter;

    move-result-object p1

    return-object p1

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Lcn/hutool/core/text/csv/CsvWriter;->appendLine([Ljava/lang/String;)V

    return-object p0
.end method
