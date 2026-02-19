.class public Lcn/hutool/core/util/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static final DEFAULT_BYTE_ARRAY_LENGTH:I = 0x20

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    invoke-static {}, Lcn/hutool/core/util/CharsetUtil;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs append(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 116
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/io/file/FileSystemUtil;->createZip(Ljava/lang/String;)Ljava/nio/file/FileSystem;

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 117
    invoke-static {p1, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 123
    :cond_0
    new-instance v1, Lcn/hutool/core/compress/ZipCopyVisitor;

    invoke-direct {v1, v0, p0, p2}, Lcn/hutool/core/compress/ZipCopyVisitor;-><init>(Ljava/nio/file/Path;Ljava/nio/file/FileSystem;[Ljava/nio/file/CopyOption;)V

    invoke-static {p1, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {p1}, Lcn/hutool/core/io/file/PathUtil;->getName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p1, v0, p2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_3

    .line 127
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->close()V
    :try_end_2
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 116
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_2

    .line 127
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2
    :try_end_5
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 130
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    :cond_3
    :goto_2
    return-void
.end method

.method public static get(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 603
    invoke-static {p0, p1}, Lcn/hutool/core/util/ZipUtil;->toZipFile(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;

    move-result-object p0

    invoke-static {p0, p2}, Lcn/hutool/core/util/ZipUtil;->get(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 615
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 617
    invoke-static {p0, p1}, Lcn/hutool/core/util/ZipUtil;->getStream(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStream(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 3

    .line 83
    :try_start_0
    new-instance v0, Lcn/hutool/core/io/LimitedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcn/hutool/core/io/LimitedInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 85
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getZipOutputStream(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipOutputStream;
    .locals 1

    .line 98
    instance-of v0, p0, Ljava/util/zip/ZipOutputStream;

    if-eqz v0, :cond_0

    .line 99
    check-cast p0, Ljava/util/zip/ZipOutputStream;

    return-object p0

    .line 101
    :cond_0
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static gzip(Ljava/io/File;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 770
    :try_start_0
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->getInputStream(Ljava/io/File;)Ljava/io/BufferedInputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 771
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-static {v0, p0}, Lcn/hutool/core/util/ZipUtil;->gzip(Ljava/io/InputStream;I)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 774
    throw p0
.end method

.method public static gzip(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 786
    invoke-static {p0, v0}, Lcn/hutool/core/util/ZipUtil;->gzip(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static gzip(Ljava/io/InputStream;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 799
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 800
    invoke-static {p0, v0}, Lcn/hutool/core/compress/Gzip;->of(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcn/hutool/core/compress/Gzip;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/compress/Gzip;->gzip()Lcn/hutool/core/compress/Gzip;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/compress/Gzip;->close()V

    .line 801
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static gzip(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 746
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/ZipUtil;->gzip([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static gzip([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 757
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p0, p0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ZipUtil;->gzip(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static listFileNames(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 983
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    .line 985
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->addSuffixIfNot(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 988
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 990
    new-instance v1, Lcn/hutool/core/collection/EnumerationIter;

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/hutool/core/collection/EnumerationIter;-><init>(Ljava/util/Enumeration;)V

    invoke-virtual {v1}, Lcn/hutool/core/collection/EnumerationIter;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 991
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 992
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 993
    :cond_2
    invoke-static {v1, p1}, Lcn/hutool/core/util/StrUtil;->removePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 994
    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2f

    invoke-static {v1, v2}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 995
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static read(Ljava/util/zip/ZipFile;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/zip/ZipEntry;",
            ">;)V"
        }
    .end annotation

    .line 630
    new-instance v0, Lcn/hutool/core/compress/ZipReader;

    invoke-direct {v0, p0}, Lcn/hutool/core/compress/ZipReader;-><init>(Ljava/util/zip/ZipFile;)V

    .line 631
    :try_start_0
    invoke-virtual {v0, p1}, Lcn/hutool/core/compress/ZipReader;->read(Ljava/util/function/Consumer;)Lcn/hutool/core/compress/ZipReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-virtual {v0}, Lcn/hutool/core/compress/ZipReader;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 630
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 632
    :try_start_2
    invoke-virtual {v0}, Lcn/hutool/core/compress/ZipReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static read(Ljava/util/zip/ZipInputStream;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/zip/ZipEntry;",
            ">;)V"
        }
    .end annotation

    .line 678
    new-instance v0, Lcn/hutool/core/compress/ZipReader;

    invoke-direct {v0, p0}, Lcn/hutool/core/compress/ZipReader;-><init>(Ljava/util/zip/ZipInputStream;)V

    .line 679
    :try_start_0
    invoke-virtual {v0, p1}, Lcn/hutool/core/compress/ZipReader;->read(Ljava/util/function/Consumer;)Lcn/hutool/core/compress/ZipReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    invoke-virtual {v0}, Lcn/hutool/core/compress/ZipReader;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 678
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 680
    :try_start_2
    invoke-virtual {v0}, Lcn/hutool/core/compress/ZipReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static toZipFile(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;
    .locals 2

    .line 66
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    sget-object v1, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 68
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static unGzip([BLjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 813
    invoke-static {p0}, Lcn/hutool/core/util/ZipUtil;->unGzip([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unGzip(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 835
    invoke-static {p0, v0}, Lcn/hutool/core/util/ZipUtil;->unGzip(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static unGzip(Ljava/io/InputStream;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 848
    new-instance v0, Lcn/hutool/core/io/FastByteArrayOutputStream;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/FastByteArrayOutputStream;-><init>(I)V

    .line 849
    invoke-static {p0, v0}, Lcn/hutool/core/compress/Gzip;->of(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcn/hutool/core/compress/Gzip;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/compress/Gzip;->unGzip()Lcn/hutool/core/compress/Gzip;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/compress/Gzip;->close()V

    .line 850
    invoke-virtual {v0}, Lcn/hutool/core/io/FastByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static unGzip([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 824
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p0, p0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ZipUtil;->unGzip(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static unZlib([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 934
    invoke-static {p0}, Lcn/hutool/core/util/ZipUtil;->unZlib([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unZlib(Ljava/io/InputStream;)[B
    .locals 1

    const/16 v0, 0x20

    .line 956
    invoke-static {p0, v0}, Lcn/hutool/core/util/ZipUtil;->unZlib(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static unZlib(Ljava/io/InputStream;I)[B
    .locals 1

    .line 968
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 p1, 0x0

    .line 969
    invoke-static {p0, v0, p1}, Lcn/hutool/core/compress/Deflate;->of(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Lcn/hutool/core/compress/Deflate;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/compress/Deflate;->inflater()Lcn/hutool/core/compress/Deflate;

    .line 970
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static unZlib([B)[B
    .locals 1

    .line 945
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p0, p0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ZipUtil;->unZlib(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 478
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/ZipUtil;->unzip(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 529
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/ZipUtil;->unzip(Ljava/io/File;Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/io/File;Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;
    .locals 0

    .line 542
    invoke-static {p0, p2}, Lcn/hutool/core/util/ZipUtil;->toZipFile(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipFile;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/ZipUtil;->unzip(Ljava/util/zip/ZipFile;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->mainName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 492
    invoke-static {p0, v0, p1}, Lcn/hutool/core/util/ZipUtil;->unzip(Ljava/io/File;Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/io/InputStream;Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 648
    sget-object p2, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 650
    :cond_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0, p1}, Lcn/hutool/core/util/ZipUtil;->unzip(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 453
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/ZipUtil;->unzip(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 504
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/ZipUtil;->unzip(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 517
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->mkdir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/ZipUtil;->unzip(Ljava/io/File;Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 466
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/ZipUtil;->unzip(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/util/zip/ZipFile;Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 555
    invoke-static {p0, p1, v0, v1}, Lcn/hutool/core/util/ZipUtil;->unzip(Ljava/util/zip/ZipFile;Ljava/io/File;J)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/util/zip/ZipFile;Ljava/io/File;J)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 569
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 571
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "Target path [{}] exist!"

    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_3

    .line 576
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 578
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 579
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 580
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-gtz v3, :cond_2

    goto :goto_1

    .line 582
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The file size exceeds the limit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 587
    :cond_3
    new-instance p2, Lcn/hutool/core/compress/ZipReader;

    invoke-direct {p2, p0}, Lcn/hutool/core/compress/ZipReader;-><init>(Ljava/util/zip/ZipFile;)V

    .line 588
    :try_start_0
    invoke-virtual {p2, p1}, Lcn/hutool/core/compress/ZipReader;->readTo(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-virtual {p2}, Lcn/hutool/core/compress/ZipReader;->close()V

    return-object p1

    :catchall_0
    move-exception p0

    .line 587
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 589
    :try_start_2
    invoke-virtual {p2}, Lcn/hutool/core/compress/ZipReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method public static unzip(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 664
    new-instance v0, Lcn/hutool/core/compress/ZipReader;

    invoke-direct {v0, p0}, Lcn/hutool/core/compress/ZipReader;-><init>(Ljava/util/zip/ZipInputStream;)V

    .line 665
    :try_start_0
    invoke-virtual {v0, p1}, Lcn/hutool/core/compress/ZipReader;->readTo(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {v0}, Lcn/hutool/core/compress/ZipReader;->close()V

    return-object p1

    :catchall_0
    move-exception p0

    .line 664
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 666
    :try_start_2
    invoke-virtual {v0}, Lcn/hutool/core/compress/ZipReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static unzipFileBytes(Ljava/io/File;Ljava/lang/String;)[B
    .locals 1

    .line 717
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Lcn/hutool/core/util/ZipUtil;->unzipFileBytes(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static unzipFileBytes(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;)[B
    .locals 0

    .line 730
    invoke-static {p0, p1}, Lcn/hutool/core/compress/ZipReader;->of(Ljava/io/File;Ljava/nio/charset/Charset;)Lcn/hutool/core/compress/ZipReader;

    move-result-object p0

    .line 731
    :try_start_0
    invoke-virtual {p0, p2}, Lcn/hutool/core/compress/ZipReader;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 732
    invoke-virtual {p0}, Lcn/hutool/core/compress/ZipReader;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 730
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    .line 732
    :try_start_2
    invoke-virtual {p0}, Lcn/hutool/core/compress/ZipReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public static unzipFileBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 692
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Lcn/hutool/core/util/ZipUtil;->unzipFileBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static unzipFileBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)[B
    .locals 0

    .line 705
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/ZipUtil;->unzipFileBytes(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static varargs validateFiles(Ljava/io/File;[Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 1012
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 1016
    array-length v0, p1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    goto :goto_2

    .line 1020
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1028
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1030
    :catch_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 1034
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4, v5}, Lcn/hutool/core/io/FileUtil;->isSub(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 1035
    :cond_1
    new-instance p1, Lcn/hutool/core/exceptions/UtilException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Zip file path [{}] must not be the child directory of [{}] !"

    invoke-direct {p1, p0, v0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1021
    :cond_3
    new-instance p0, Lcn/hutool/core/exceptions/UtilException;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "File [{}] not exist!"

    invoke-static {v0, p1}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void

    .line 1013
    :cond_5
    new-instance p1, Lcn/hutool/core/exceptions/UtilException;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "Zip file [{}] must not be a directory !"

    invoke-direct {p1, p0, v0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static zip(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 165
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 346
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Ljava/io/InputStream;

    aput-object p2, p1, v2

    .line 361
    invoke-static {p0, v1, p1, p3}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/io/File;[Ljava/lang/String;[Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 316
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 331
    invoke-static {p2, p3}, Lcn/hutool/core/io/IoUtil;->toStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/ByteArrayInputStream;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->mainName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 178
    invoke-static {v0, p1, v2, v1}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/io/File;Ljava/nio/charset/Charset;Z[Ljava/io/File;)Ljava/io/File;

    return-object v0
.end method

.method public static varargs zip(Ljava/io/File;Ljava/nio/charset/Charset;ZLjava/io/FileFilter;[Ljava/io/File;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 266
    invoke-static {p0, p4}, Lcn/hutool/core/util/ZipUtil;->validateFiles(Ljava/io/File;[Ljava/io/File;)V

    .line 268
    invoke-static {p0, p1}, Lcn/hutool/core/compress/ZipWriter;->of(Ljava/io/File;Ljava/nio/charset/Charset;)Lcn/hutool/core/compress/ZipWriter;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcn/hutool/core/compress/ZipWriter;->add(ZLjava/io/FileFilter;[Ljava/io/File;)Lcn/hutool/core/compress/ZipWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/compress/ZipWriter;->close()V

    return-object p0
.end method

.method public static varargs zip(Ljava/io/File;Ljava/nio/charset/Charset;Z[Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 250
    invoke-static {p0, p1, p2, v0, p3}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/io/File;Ljava/nio/charset/Charset;ZLjava/io/FileFilter;[Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zip(Ljava/io/File;Ljava/nio/charset/Charset;[Lcn/hutool/core/io/resource/Resource;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 439
    invoke-static {p0, p1}, Lcn/hutool/core/compress/ZipWriter;->of(Ljava/io/File;Ljava/nio/charset/Charset;)Lcn/hutool/core/compress/ZipWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/hutool/core/compress/ZipWriter;->add([Lcn/hutool/core/io/resource/Resource;)Lcn/hutool/core/compress/ZipWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/compress/ZipWriter;->close()V

    return-object p0
.end method

.method public static varargs zip(Ljava/io/File;Z[Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 236
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1, p2}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/io/File;Ljava/nio/charset/Charset;Z[Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/io/File;[Ljava/lang/String;[Ljava/io/InputStream;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 376
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/io/File;[Ljava/lang/String;[Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/io/File;[Ljava/lang/String;[Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 392
    invoke-static {p0, p3}, Lcn/hutool/core/compress/ZipWriter;->of(Ljava/io/File;Ljava/nio/charset/Charset;)Lcn/hutool/core/compress/ZipWriter;

    move-result-object p3

    .line 393
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lcn/hutool/core/compress/ZipWriter;->add([Ljava/lang/String;[Ljava/io/InputStream;)Lcn/hutool/core/compress/ZipWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 394
    invoke-virtual {p3}, Lcn/hutool/core/compress/ZipWriter;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 392
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p3, :cond_1

    .line 394
    :try_start_2
    invoke-virtual {p3}, Lcn/hutool/core/compress/ZipWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static zip(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 219
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 220
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 221
    invoke-static {p1, p2, p3, v0}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/io/File;Ljava/nio/charset/Charset;Z[Ljava/io/File;)Ljava/io/File;

    return-object p1
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0, p2}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 154
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zip(Ljava/io/OutputStream;Ljava/nio/charset/Charset;ZLjava/io/FileFilter;[Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 284
    invoke-static {p0, p1}, Lcn/hutool/core/compress/ZipWriter;->of(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcn/hutool/core/compress/ZipWriter;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcn/hutool/core/compress/ZipWriter;->add(ZLjava/io/FileFilter;[Ljava/io/File;)Lcn/hutool/core/compress/ZipWriter;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/compress/ZipWriter;->close()V

    return-void
.end method

.method public static zip(Ljava/io/OutputStream;[Ljava/lang/String;[Ljava/io/InputStream;)V
    .locals 1

    .line 408
    sget-object v0, Lcn/hutool/core/util/ZipUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/ZipUtil;->getZipOutputStream(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Ljava/util/zip/ZipOutputStream;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/ZipUtil;->zip(Ljava/util/zip/ZipOutputStream;[Ljava/lang/String;[Ljava/io/InputStream;)V

    return-void
.end method

.method public static varargs zip(Ljava/util/zip/ZipOutputStream;ZLjava/io/FileFilter;[Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    new-instance v0, Lcn/hutool/core/compress/ZipWriter;

    invoke-direct {v0, p0}, Lcn/hutool/core/compress/ZipWriter;-><init>(Ljava/util/zip/ZipOutputStream;)V

    .line 301
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcn/hutool/core/compress/ZipWriter;->add(ZLjava/io/FileFilter;[Ljava/io/File;)Lcn/hutool/core/compress/ZipWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {v0}, Lcn/hutool/core/compress/ZipWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 300
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 302
    :try_start_2
    invoke-virtual {v0}, Lcn/hutool/core/compress/ZipWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static zip(Ljava/util/zip/ZipOutputStream;[Ljava/lang/String;[Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 421
    new-instance v0, Lcn/hutool/core/compress/ZipWriter;

    invoke-direct {v0, p0}, Lcn/hutool/core/compress/ZipWriter;-><init>(Ljava/util/zip/ZipOutputStream;)V

    .line 422
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcn/hutool/core/compress/ZipWriter;->add([Ljava/lang/String;[Ljava/io/InputStream;)Lcn/hutool/core/compress/ZipWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-virtual {v0}, Lcn/hutool/core/compress/ZipWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 421
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 423
    :try_start_2
    invoke-virtual {v0}, Lcn/hutool/core/compress/ZipWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static zlib(Ljava/io/File;I)[B
    .locals 3

    .line 879
    :try_start_0
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->getInputStream(Ljava/io/File;)Ljava/io/BufferedInputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 880
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-static {v0, p1, p0}, Lcn/hutool/core/util/ZipUtil;->zlib(Ljava/io/InputStream;II)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 883
    throw p0
.end method

.method public static zlib(Ljava/io/InputStream;I)[B
    .locals 1

    const/16 v0, 0x20

    .line 907
    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/ZipUtil;->zlib(Ljava/io/InputStream;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static zlib(Ljava/io/InputStream;II)[B
    .locals 1

    .line 920
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 p2, 0x0

    .line 921
    invoke-static {p0, v0, p2}, Lcn/hutool/core/compress/Deflate;->of(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Lcn/hutool/core/compress/Deflate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/core/compress/Deflate;->deflater(I)Lcn/hutool/core/compress/Deflate;

    .line 922
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static zlib(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 0

    .line 865
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p2}, Lcn/hutool/core/util/ZipUtil;->zlib([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static zlib([BI)[B
    .locals 1

    .line 895
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p0, p0

    invoke-static {v0, p1, p0}, Lcn/hutool/core/util/ZipUtil;->zlib(Ljava/io/InputStream;II)[B

    move-result-object p0

    return-object p0
.end method
