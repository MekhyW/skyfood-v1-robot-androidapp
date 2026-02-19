.class public Lcn/hutool/core/io/file/FileWriter;
.super Lcn/hutool/core/io/file/FileWrapper;
.source "FileWriter.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 103
    sget-object v0, Lcn/hutool/core/io/file/FileWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lcn/hutool/core/io/file/FileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-static {p2}, Lcn/hutool/core/util/CharsetUtil;->charset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/hutool/core/io/file/FileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcn/hutool/core/io/file/FileWrapper;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    .line 63
    invoke-direct {p0}, Lcn/hutool/core/io/file/FileWriter;->checkFile()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 113
    sget-object v0, Lcn/hutool/core/io/file/FileWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lcn/hutool/core/io/file/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p2}, Lcn/hutool/core/util/CharsetUtil;->charset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/hutool/core/io/file/FileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 83
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/hutool/core/io/file/FileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private checkFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "File to write content is null !"

    invoke-static {v0, v3, v2}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "File [{}] is not a file !"

    invoke-direct {v0, v1, v2}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static create(Ljava/io/File;)Lcn/hutool/core/io/file/FileWriter;
    .locals 1

    .line 50
    new-instance v0, Lcn/hutool/core/io/file/FileWriter;

    invoke-direct {v0, p0}, Lcn/hutool/core/io/file/FileWriter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Ljava/io/File;Ljava/nio/charset/Charset;)Lcn/hutool/core/io/file/FileWriter;
    .locals 1

    .line 40
    new-instance v0, Lcn/hutool/core/io/file/FileWriter;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/io/file/FileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method private printNewLine(Ljava/io/PrintWriter;Lcn/hutool/core/io/file/LineSeparator;)V
    .locals 0

    if-nez p2, :cond_0

    .line 418
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p2}, Lcn/hutool/core/io/file/LineSeparator;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/io/file/FileWriter;->write(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public append([BII)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 296
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/hutool/core/io/file/FileWriter;->write([BIIZ)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public appendLines(Ljava/lang/Iterable;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/io/file/FileWriter;->writeLines(Ljava/lang/Iterable;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getOutputStream()Ljava/io/BufferedOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 364
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    invoke-static {v1}, Lcn/hutool/core/io/FileUtil;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 366
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPrintWriter(Z)Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Lcn/hutool/core/io/file/FileWriter;->getWriter(Z)Ljava/io/BufferedWriter;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public getWriter(Z)Ljava/io/BufferedWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 379
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    invoke-static {v3}, Lcn/hutool/core/io/FileUtil;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iget-object p1, p0, Lcn/hutool/core/io/file/FileWriter;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 381
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/io/file/FileWriter;->write(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/String;Z)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p0, p2}, Lcn/hutool/core/io/file/FileWriter;->getWriter(Z)Ljava/io/BufferedWriter;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 136
    iget-object p1, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    :try_start_1
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :goto_0
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 135
    throw p1
.end method

.method public write([BII)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/hutool/core/io/file/FileWriter;->write([BIIZ)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public write([BIIZ)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 310
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    invoke-static {v1}, Lcn/hutool/core/io/FileUtil;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 312
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 316
    iget-object p1, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    return-object p1

    :catchall_0
    move-exception p1

    .line 310
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 313
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 314
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeFromStream(Ljava/io/InputStream;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/io/file/FileWriter;->writeFromStream(Ljava/io/InputStream;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public writeFromStream(Ljava/io/InputStream;Z)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    invoke-static {v1}, Lcn/hutool/core/io/FileUtil;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 344
    invoke-static {p1, v0}, Lcn/hutool/core/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    if-eqz p2, :cond_0

    .line 350
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 353
    :cond_0
    iget-object p1, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    return-object p1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 346
    :try_start_1
    new-instance v2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v2, v1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :goto_0
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    if-eqz p2, :cond_1

    .line 350
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 352
    :cond_1
    throw v1
.end method

.method public writeLines(Ljava/lang/Iterable;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/io/file/FileWriter;->writeLines(Ljava/lang/Iterable;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public writeLines(Ljava/lang/Iterable;Lcn/hutool/core/io/file/LineSeparator;Z)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcn/hutool/core/io/file/LineSeparator;",
            "Z)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0, p3}, Lcn/hutool/core/io/file/FileWriter;->getPrintWriter(Z)Ljava/io/PrintWriter;

    move-result-object v0

    .line 212
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    .line 216
    iget-object v1, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    invoke-static {v1}, Lcn/hutool/core/io/FileUtil;->isNotEmpty(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-direct {p0, v0, p2}, Lcn/hutool/core/io/file/FileWriter;->printNewLine(Ljava/io/PrintWriter;Lcn/hutool/core/io/file/LineSeparator;)V

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 221
    :cond_2
    invoke-direct {p0, v0, p2}, Lcn/hutool/core/io/file/FileWriter;->printNewLine(Ljava/io/PrintWriter;Lcn/hutool/core/io/file/LineSeparator;)V

    .line 223
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 225
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 228
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 229
    :cond_4
    iget-object p1, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    return-object p1

    :catchall_0
    move-exception p1

    .line 210
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_5

    .line 228
    :try_start_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p2
.end method

.method public writeLines(Ljava/lang/Iterable;Z)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;Z)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p1, v0, p2}, Lcn/hutool/core/io/file/FileWriter;->writeLines(Ljava/lang/Iterable;Lcn/hutool/core/io/file/LineSeparator;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public writeMap(Ljava/util/Map;Lcn/hutool/core/io/file/LineSeparator;Ljava/lang/String;Z)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcn/hutool/core/io/file/LineSeparator;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    if-nez p3, :cond_0

    const-string p3, " = "

    .line 261
    :cond_0
    invoke-virtual {p0, p4}, Lcn/hutool/core/io/file/FileWriter;->getPrintWriter(Z)Ljava/io/PrintWriter;

    move-result-object p4

    .line 262
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    const-string v1, "{}{}{}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 264
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0, p4, p2}, Lcn/hutool/core/io/file/FileWriter;->printNewLine(Ljava/io/PrintWriter;Lcn/hutool/core/io/file/LineSeparator;)V

    .line 266
    invoke-virtual {p4}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 269
    invoke-virtual {p4}, Ljava/io/PrintWriter;->close()V

    .line 270
    :cond_3
    iget-object p1, p0, Lcn/hutool/core/io/file/FileWriter;->file:Ljava/io/File;

    return-object p1

    :catchall_0
    move-exception p1

    .line 261
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p4, :cond_4

    .line 269
    :try_start_2
    invoke-virtual {p4}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p2
.end method

.method public writeMap(Ljava/util/Map;Ljava/lang/String;Z)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, v0, p2, p3}, Lcn/hutool/core/io/file/FileWriter;->writeMap(Ljava/util/Map;Lcn/hutool/core/io/file/LineSeparator;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
