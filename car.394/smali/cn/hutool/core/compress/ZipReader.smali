.class public Lcn/hutool/core/compress/ZipReader;
.super Ljava/lang/Object;
.source "ZipReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MAX_SIZE_DIFF:I = 0x64


# instance fields
.field private in:Ljava/util/zip/ZipInputStream;

.field private zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1, p2}, Lcn/hutool/core/util/ZipUtil;->toZipFile(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/compress/ZipReader;->zipFile:Ljava/util/zip/ZipFile;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lcn/hutool/core/compress/ZipReader;->in:Ljava/util/zip/ZipInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcn/hutool/core/compress/ZipReader;->zipFile:Ljava/util/zip/ZipFile;

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipInputStream;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcn/hutool/core/compress/ZipReader;->in:Ljava/util/zip/ZipInputStream;

    return-void
.end method

.method private static checkZipBomb(Ljava/util/zip/ZipEntry;)Ljava/util/zip/ZipEntry;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 242
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    .line 243
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    const-wide/16 v4, 0x64

    mul-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    return-object p0

    .line 247
    :cond_1
    new-instance v4, Lcn/hutool/core/exceptions/UtilException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 248
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v0

    const-string p0, "Zip bomb attack detected, invalid sizes: compressed {}, uncompressed {}, name {}"

    invoke-direct {v4, p0, v5}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4
.end method

.method public static of(Ljava/io/File;Ljava/nio/charset/Charset;)Lcn/hutool/core/compress/ZipReader;
    .locals 1

    .line 44
    new-instance v0, Lcn/hutool/core/compress/ZipReader;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/compress/ZipReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static of(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcn/hutool/core/compress/ZipReader;
    .locals 1

    .line 55
    new-instance v0, Lcn/hutool/core/compress/ZipReader;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/compress/ZipReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method private readFromStream(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/zip/ZipEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 222
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/compress/ZipReader;->in:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 225
    invoke-static {v0}, Lcn/hutool/core/compress/ZipReader;->checkZipBomb(Ljava/util/zip/ZipEntry;)Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 228
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readFromZipFile(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/zip/ZipEntry;",
            ">;)V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcn/hutool/core/compress/ZipReader;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 208
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-static {v1}, Lcn/hutool/core/compress/ZipReader;->checkZipBomb(Ljava/util/zip/ZipEntry;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcn/hutool/core/compress/ZipReader;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 195
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/compress/ZipReader;->in:Ljava/util/zip/ZipInputStream;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/hutool/core/compress/ZipReader;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 108
    invoke-static {v0, p1}, Lcn/hutool/core/util/ZipUtil;->getStream(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 113
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/compress/ZipReader;->in:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object p1, p0, Lcn/hutool/core/compress/ZipReader;->in:Ljava/util/zip/ZipInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 119
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method synthetic lambda$readTo$0$cn-hutool-core-compress-ZipReader(Lcn/hutool/core/lang/Filter;Ljava/io/File;Ljava/util/zip/ZipEntry;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 148
    invoke-interface {p1, p3}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 150
    :cond_0
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {}, Lcn/hutool/core/io/FileUtil;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "*"

    const-string v1, "_"

    .line 153
    invoke-static {p1, v0, v1}, Lcn/hutool/core/util/StrUtil;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 156
    :cond_1
    invoke-static {p2, p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 157
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 163
    :cond_2
    iget-object p2, p0, Lcn/hutool/core/compress/ZipReader;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p2, :cond_3

    .line 164
    invoke-static {p2, p3}, Lcn/hutool/core/util/ZipUtil;->getStream(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p2

    goto :goto_0

    .line 166
    :cond_3
    iget-object p2, p0, Lcn/hutool/core/compress/ZipReader;->in:Ljava/util/zip/ZipInputStream;

    :goto_0
    const/4 p3, 0x0

    .line 169
    invoke-static {p2, p1, p3}, Lcn/hutool/core/io/FileUtil;->writeFromStream(Ljava/io/InputStream;Ljava/io/File;Z)Ljava/io/File;

    :cond_4
    :goto_1
    return-void
.end method

.method public read(Ljava/util/function/Consumer;)Lcn/hutool/core/compress/ZipReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/zip/ZipEntry;",
            ">;)",
            "Lcn/hutool/core/compress/ZipReader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcn/hutool/core/compress/ZipReader;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, p1}, Lcn/hutool/core/compress/ZipReader;->readFromZipFile(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcn/hutool/core/compress/ZipReader;->readFromStream(Ljava/util/function/Consumer;)V

    :goto_0
    return-object p0
.end method

.method public readTo(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/compress/ZipReader;->readTo(Ljava/io/File;Lcn/hutool/core/lang/Filter;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public readTo(Ljava/io/File;Lcn/hutool/core/lang/Filter;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcn/hutool/core/lang/Filter<",
            "Ljava/util/zip/ZipEntry;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 147
    new-instance v0, Lcn/hutool/core/compress/ZipReader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcn/hutool/core/compress/ZipReader$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/compress/ZipReader;Lcn/hutool/core/lang/Filter;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/compress/ZipReader;->read(Ljava/util/function/Consumer;)Lcn/hutool/core/compress/ZipReader;

    return-object p1
.end method
