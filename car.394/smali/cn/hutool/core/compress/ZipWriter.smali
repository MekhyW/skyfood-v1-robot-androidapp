.class public Lcn/hutool/core/compress/ZipWriter;
.super Ljava/lang/Object;
.source "ZipWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final out:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1, p2}, Lcn/hutool/core/compress/ZipWriter;->getZipOutputStream(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1, p2}, Lcn/hutool/core/util/ZipUtil;->getZipOutputStream(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipOutputStream;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    return-void
.end method

.method private _add(Ljava/io/File;Ljava/lang/String;Ljava/io/FileFilter;)Lcn/hutool/core/compress/ZipWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p3, :cond_0

    .line 238
    invoke-interface {p3, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    invoke-static {p2, p1}, Lcn/hutool/core/io/FileUtil;->subPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 247
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 249
    invoke-virtual {p0, v0, p1}, Lcn/hutool/core/compress/ZipWriter;->add(Ljava/lang/String;Ljava/io/InputStream;)Lcn/hutool/core/compress/ZipWriter;

    goto :goto_1

    .line 252
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 253
    invoke-direct {p0, v2, p2, p3}, Lcn/hutool/core/compress/ZipWriter;->_add(Ljava/io/File;Ljava/lang/String;Ljava/io/FileFilter;)Lcn/hutool/core/compress/ZipWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_2
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->getInputStream(Ljava/io/File;)Ljava/io/BufferedInputStream;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcn/hutool/core/compress/ZipWriter;->putEntry(Ljava/lang/String;Ljava/io/InputStream;)Lcn/hutool/core/compress/ZipWriter;

    :cond_3
    :goto_1
    return-object p0
.end method

.method private static getZipOutputStream(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipOutputStream;
    .locals 0

    .line 224
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->getOutputStream(Ljava/io/File;)Ljava/io/BufferedOutputStream;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/ZipUtil;->getZipOutputStream(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/File;Ljava/nio/charset/Charset;)Lcn/hutool/core/compress/ZipWriter;
    .locals 1

    .line 37
    new-instance v0, Lcn/hutool/core/compress/ZipWriter;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/compress/ZipWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static of(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcn/hutool/core/compress/ZipWriter;
    .locals 1

    .line 48
    new-instance v0, Lcn/hutool/core/compress/ZipWriter;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/compress/ZipWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method private putEntry(Ljava/lang/String;Ljava/io/InputStream;)Lcn/hutool/core/compress/ZipWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 273
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    if-eqz p2, :cond_0

    .line 275
    iget-object p1, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    invoke-static {p2, p1}, Lcn/hutool/core/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 277
    :cond_0
    iget-object p1, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-static {p2}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 284
    iget-object p1, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->flush(Ljava/io/Flushable;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 279
    :try_start_1
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :goto_0
    invoke-static {p2}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 282
    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/io/InputStream;)Lcn/hutool/core/compress/ZipWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 168
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    const-string v0, "/"

    .line 171
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->addSuffixIfNot(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 177
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/hutool/core/compress/ZipWriter;->putEntry(Ljava/lang/String;Ljava/io/InputStream;)Lcn/hutool/core/compress/ZipWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs add(ZLjava/io/FileFilter;[Ljava/io/File;)Lcn/hutool/core/compress/ZipWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 124
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 128
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_1

    .line 131
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_1
    invoke-direct {p0, v2, v3, p2}, Lcn/hutool/core/compress/ZipWriter;->_add(Ljava/io/File;Ljava/lang/String;Ljava/io/FileFilter;)Lcn/hutool/core/compress/ZipWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p0
.end method

.method public varargs add([Lcn/hutool/core/io/resource/Resource;)Lcn/hutool/core/compress/ZipWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 150
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 152
    invoke-interface {v2}, Lcn/hutool/core/io/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcn/hutool/core/io/resource/Resource;->getStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcn/hutool/core/compress/ZipWriter;->add(Ljava/lang/String;Ljava/io/InputStream;)Lcn/hutool/core/compress/ZipWriter;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public add([Ljava/lang/String;[Ljava/io/InputStream;)Lcn/hutool/core/compress/ZipWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 191
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 198
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 199
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcn/hutool/core/compress/ZipWriter;->add(Ljava/lang/String;Ljava/io/InputStream;)Lcn/hutool/core/compress/ZipWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 195
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Paths length is not equals to ins length !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Paths or ins is empty !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 208
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v0, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    :try_start_1
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :goto_0
    iget-object v1, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    invoke-static {v1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 213
    throw v0
.end method

.method public getOut()Ljava/util/zip/ZipOutputStream;
    .locals 1

    .line 110
    iget-object v0, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)Lcn/hutool/core/compress/ZipWriter;
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->setComment(Ljava/lang/String;)V

    return-object p0
.end method

.method public setLevel(I)Lcn/hutool/core/compress/ZipWriter;
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/hutool/core/compress/ZipWriter;->out:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    return-object p0
.end method
