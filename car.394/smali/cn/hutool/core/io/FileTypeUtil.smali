.class public Lcn/hutool/core/io/FileTypeUtil;
.super Ljava/lang/Object;
.source "FileTypeUtil.java"


# static fields
.field private static final FILE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    sput-object v0, Lcn/hutool/core/io/FileTypeUtil;->FILE_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getType(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 225
    invoke-static {p0, v0}, Lcn/hutool/core/io/FileTypeUtil;->getType(Ljava/io/File;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/io/File;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 199
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->isFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->toStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 205
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcn/hutool/core/io/FileTypeUtil;->getType(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
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

    .line 208
    throw p0

    .line 200
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a regular file!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getType(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-static {p0, v0}, Lcn/hutool/core/io/FileTypeUtil;->getType(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    invoke-static {p0, p1, v0}, Lcn/hutool/core/io/IoUtil;->readHex(Ljava/io/InputStream;IZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/io/FileTypeUtil;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 122
    invoke-static {p0, p1, v0}, Lcn/hutool/core/io/FileTypeUtil;->getType(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 142
    invoke-static {p0, p2}, Lcn/hutool/core/io/FileTypeUtil;->getType(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 145
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->extName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    :cond_0
    const-string p2, "zip"

    .line 146
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "jar"

    const-string v2, "apk"

    const-string v3, "pptx"

    const-string v4, "xlsx"

    const-string v5, "docx"

    if-eqz v0, :cond_7

    .line 148
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->extName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 155
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    move-object p0, v1

    goto :goto_5

    :cond_4
    const-string p2, "war"

    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const-string p2, "ofd"

    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 161
    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    .line 164
    :cond_7
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 166
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->extName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    move-object p0, v4

    goto :goto_5

    .line 169
    :cond_8
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_1
    move-object p0, v5

    goto :goto_5

    .line 172
    :cond_9
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_2
    move-object p0, v3

    goto :goto_5

    .line 175
    :cond_a
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_3
    move-object p0, p2

    goto :goto_5

    .line 177
    :cond_b
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    :goto_4
    move-object p0, v2

    :cond_c
    :goto_5
    return-object p0
.end method

.method public static getType(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 89
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->readHex8192Upper(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/io/FileTypeUtil;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->readHex64Upper(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/io/FileTypeUtil;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 56
    sget-object v0, Lcn/hutool/core/io/FileTypeUtil;->FILE_TYPE_MAP:Ljava/util/Map;

    invoke-static {v0}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p0, v2}, Lcn/hutool/core/util/StrUtil;->startWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 63
    :cond_1
    invoke-static {p0}, Lcn/hutool/core/util/HexUtil;->decodeHex(Ljava/lang/String;)[B

    move-result-object p0

    .line 64
    invoke-static {p0}, Lcn/hutool/core/io/FileMagicNumber;->getMagicNumber([B)Lcn/hutool/core/io/FileMagicNumber;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/io/FileMagicNumber;->getExtension()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 248
    invoke-static {p0, v0}, Lcn/hutool/core/io/FileTypeUtil;->getTypeByPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeByPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 237
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/io/FileTypeUtil;->getType(Ljava/io/File;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putFileType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcn/hutool/core/io/FileTypeUtil;->FILE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static removeFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcn/hutool/core/io/FileTypeUtil;->FILE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
