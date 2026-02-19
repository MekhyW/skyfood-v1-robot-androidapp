.class public Lcn/hutool/extra/compress/archiver/StreamArchiver;
.super Ljava/lang/Object;
.source "StreamArchiver.java"

# interfaces
.implements Lcn/hutool/extra/compress/archiver/Archiver;


# instance fields
.field private final out:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 71
    invoke-static {p3}, Lcn/hutool/core/io/FileUtil;->getOutputStream(Ljava/io/File;)Ljava/io/BufferedOutputStream;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/extra/compress/archiver/StreamArchiver;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tgz"

    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tar.gz"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>(Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/extra/compress/archiver/StreamArchiver;->out:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/ArchiveException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    instance-of p2, p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    if-eqz p2, :cond_1

    .line 101
    check-cast p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->setLongFileMode(I)V

    goto :goto_0

    .line 102
    :cond_1
    instance-of p2, p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;

    if-eqz p2, :cond_2

    .line 103
    check-cast p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->setLongFileMode(I)V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 96
    new-instance p2, Lcn/hutool/extra/compress/CompressException;

    invoke-direct {p2, p1}, Lcn/hutool/extra/compress/CompressException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 85
    :cond_3
    :goto_1
    :try_start_1
    new-instance p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    new-instance p2, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;

    invoke-direct {p2, p3}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcn/hutool/extra/compress/archiver/StreamArchiver;->out:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 87
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private addInternal(Ljava/io/File;Ljava/lang/String;Lcn/hutool/core/lang/Filter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcn/hutool/core/lang/Filter<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 159
    invoke-interface {p3, p1}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcn/hutool/extra/compress/archiver/StreamArchiver;->out:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    .line 165
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-static {p2, v2}, Lcn/hutool/core/util/StrUtil;->addSuffixIfNot(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 172
    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 174
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 177
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 179
    invoke-direct {p0, v2, p2, p3}, Lcn/hutool/extra/compress/archiver/StreamArchiver;->addInternal(Ljava/io/File;Ljava/lang/String;Lcn/hutool/core/lang/Filter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 185
    invoke-static {p1, v0}, Lcn/hutool/core/io/FileUtil;->writeToStream(Ljava/io/File;Ljava/io/OutputStream;)J

    .line 187
    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V

    :cond_4
    return-void
.end method

.method public static create(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/io/File;)Lcn/hutool/extra/compress/archiver/StreamArchiver;
    .locals 1

    .line 46
    new-instance v0, Lcn/hutool/extra/compress/archiver/StreamArchiver;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/extra/compress/archiver/StreamArchiver;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/io/OutputStream;)Lcn/hutool/extra/compress/archiver/StreamArchiver;
    .locals 1

    .line 58
    new-instance v0, Lcn/hutool/extra/compress/archiver/StreamArchiver;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/extra/compress/archiver/StreamArchiver;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/io/File;Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Lcn/hutool/extra/compress/archiver/Archiver;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/extra/compress/archiver/StreamArchiver;->add(Ljava/io/File;Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Lcn/hutool/extra/compress/archiver/StreamArchiver;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/io/File;Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Lcn/hutool/extra/compress/archiver/StreamArchiver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcn/hutool/core/lang/Filter<",
            "Ljava/io/File;",
            ">;)",
            "Lcn/hutool/extra/compress/archiver/StreamArchiver;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 119
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/extra/compress/archiver/StreamArchiver;->addInternal(Ljava/io/File;Ljava/lang/String;Lcn/hutool/core/lang/Filter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 121
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public close()V
    .locals 1

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcn/hutool/extra/compress/archiver/StreamArchiver;->finish()Lcn/hutool/extra/compress/archiver/StreamArchiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :catch_0
    iget-object v0, p0, Lcn/hutool/extra/compress/archiver/StreamArchiver;->out:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public bridge synthetic finish()Lcn/hutool/extra/compress/archiver/Archiver;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcn/hutool/extra/compress/archiver/StreamArchiver;->finish()Lcn/hutool/extra/compress/archiver/StreamArchiver;

    move-result-object v0

    return-object v0
.end method

.method public finish()Lcn/hutool/extra/compress/archiver/StreamArchiver;
    .locals 2

    .line 134
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/compress/archiver/StreamArchiver;->out:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
