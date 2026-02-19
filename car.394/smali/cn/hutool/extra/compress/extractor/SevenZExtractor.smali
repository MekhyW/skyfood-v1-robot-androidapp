.class public Lcn/hutool/extra/compress/extractor/SevenZExtractor;
.super Ljava/lang/Object;
.source "SevenZExtractor.java"

# interfaces
.implements Lcn/hutool/extra/compress/extractor/Extractor;
.implements Ljava/util/RandomAccess;


# instance fields
.field private final sevenZFile:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcn/hutool/extra/compress/extractor/SevenZExtractor;-><init>(Ljava/io/File;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[C)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    :try_start_0
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[C)V

    iput-object v0, p0, Lcn/hutool/extra/compress/extractor/SevenZExtractor;->sevenZFile:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 49
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcn/hutool/extra/compress/extractor/SevenZExtractor;-><init>(Ljava/io/InputStream;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[C)V
    .locals 1

    .line 69
    new-instance v0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;

    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lcn/hutool/extra/compress/extractor/SevenZExtractor;-><init>(Ljava/nio/channels/SeekableByteChannel;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcn/hutool/extra/compress/extractor/SevenZExtractor;-><init>(Ljava/nio/channels/SeekableByteChannel;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[C)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    :try_start_0
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;[C)V

    iput-object v0, p0, Lcn/hutool/extra/compress/extractor/SevenZExtractor;->sevenZFile:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 91
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

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

    .line 159
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

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcn/hutool/extra/compress/extractor/SevenZExtractor;->sevenZFile:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 163
    :goto_1
    iget-object v1, p0, Lcn/hutool/extra/compress/extractor/SevenZExtractor;->sevenZFile:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p3, :cond_2

    .line 164
    invoke-interface {p3, v1}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcn/hutool/extra/compress/extractor/SevenZExtractor;->stripName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 172
    :cond_3
    invoke-static {p1, v2}, Lcn/hutool/core/io/FileUtil;->file(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 173
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 177
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 179
    new-instance v3, Lcn/hutool/extra/compress/extractor/Seven7EntryInputStream;

    invoke-direct {v3, v0, v1}, Lcn/hutool/extra/compress/extractor/Seven7EntryInputStream;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V

    invoke-static {v3, v2}, Lcn/hutool/core/io/FileUtil;->writeFromStream(Ljava/io/InputStream;Ljava/io/File;)Ljava/io/File;

    goto :goto_1

    .line 182
    :cond_5
    invoke-static {v2}, Lcn/hutool/core/io/FileUtil;->touch(Ljava/io/File;)Ljava/io/File;

    goto :goto_1

    :cond_6
    return-void
.end method

.method static synthetic lambda$get$0(Ljava/lang/String;Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 0

    .line 147
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcn/hutool/extra/compress/extractor/SevenZExtractor;->sevenZFile:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

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

    .line 104
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/extra/compress/extractor/SevenZExtractor;->extractInternal(Ljava/io/File;ILcn/hutool/core/lang/Filter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {p0}, Lcn/hutool/extra/compress/extractor/SevenZExtractor;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    :try_start_1
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcn/hutool/extra/compress/extractor/SevenZExtractor;->close()V

    .line 109
    throw p1
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 147
    new-instance v0, Lcn/hutool/extra/compress/extractor/SevenZExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcn/hutool/extra/compress/extractor/SevenZExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/hutool/extra/compress/extractor/SevenZExtractor;->getFirst(Lcn/hutool/core/lang/Filter;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getFirst(Lcn/hutool/core/lang/Filter;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/lang/Filter<",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcn/hutool/extra/compress/extractor/SevenZExtractor;->sevenZFile:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 121
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    if-eqz p1, :cond_0

    .line 122
    invoke-interface {p1, v2}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInputStream(Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 132
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
