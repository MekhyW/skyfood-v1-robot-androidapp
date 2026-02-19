.class public Lcn/hutool/extra/compress/extractor/StreamExtractor;
.super Ljava/lang/Object;
.source "StreamExtractor.java"

# interfaces
.implements Lcn/hutool/extra/compress/extractor/Extractor;


# instance fields
.field private final in:Lorg/apache/commons/compress/archivers/ArchiveInputStream;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0, p2}, Lcn/hutool/extra/compress/extractor/StreamExtractor;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0, p2}, Lcn/hutool/extra/compress/extractor/StreamExtractor;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 50
    invoke-static {p3}, Lcn/hutool/core/io/FileUtil;->getInputStream(Ljava/io/File;)Ljava/io/BufferedInputStream;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/extra/compress/extractor/StreamExtractor;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    instance-of v0, p3, Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    if-eqz v0, :cond_0

    .line 74
    check-cast p3, Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    iput-object p3, p0, Lcn/hutool/extra/compress/extractor/StreamExtractor;->in:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    return-void

    .line 78
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>(Ljava/lang/String;)V

    .line 80
    :try_start_0
    invoke-static {p3}, Lcn/hutool/core/io/IoUtil;->toBuffered(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object p3

    .line 81
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/extra/compress/extractor/StreamExtractor;->in:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    goto :goto_1

    :cond_1
    const-string p1, "tgz"

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "tar.gz"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/extra/compress/extractor/StreamExtractor;->in:Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/ArchiveException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 86
    :cond_3
    :goto_0
    :try_start_1
    new-instance p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    new-instance p2, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    invoke-direct {p2, p3}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcn/hutool/extra/compress/extractor/StreamExtractor;->in:Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/commons/compress/archivers/ArchiveException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 88
    :try_start_2
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catch Lorg/apache/commons/compress/archivers/ArchiveException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 95
    invoke-static {p3}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 96
    new-instance p2, Lcn/hutool/extra/compress/CompressException;

    invoke-direct {p2, p1}, Lcn/hutool/extra/compress/CompressException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private extractInternal(Ljava/io/File;ILcn/hutool/core/lang/Filter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Lcn/hutool/core/lang/Filter<",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const-string v2, "target must be dir."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v1, p0, Lcn/hutool/extra/compress/extractor/StreamExtractor;->in:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    .line 130
    :goto_1
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eqz p3, :cond_2

    .line 131
    invoke-interface {p3, v2}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 138
    :cond_3
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcn/hutool/extra/compress/extractor/StreamExtractor;->stripName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 143
    :cond_4
    invoke-static {p1, v3}, Lcn/hutool/core/io/FileUtil;->file(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 144
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 147
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 149
    :cond_5
    invoke-static {v1, v3, v0}, Lcn/hutool/core/io/FileUtil;->writeFromStream(Ljava/io/InputStream;Ljava/io/File;Z)Ljava/io/File;

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/hutool/extra/compress/extractor/StreamExtractor;->in:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public extract(Ljava/io/File;ILcn/hutool/core/lang/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Lcn/hutool/core/lang/Filter<",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ">;)V"
        }
    .end annotation

    .line 109
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/extra/compress/extractor/StreamExtractor;->extractInternal(Ljava/io/File;ILcn/hutool/core/lang/Filter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {p0}, Lcn/hutool/extra/compress/extractor/StreamExtractor;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    :try_start_1
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcn/hutool/extra/compress/extractor/StreamExtractor;->close()V

    .line 114
    throw p1
.end method
