.class public abstract Lcn/hutool/extra/ftp/AbstractFtp;
.super Ljava/lang/Object;
.source "AbstractFtp.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field protected ftpConfig:Lcn/hutool/extra/ftp/FtpConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcn/hutool/extra/ftp/AbstractFtp;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method protected constructor <init>(Lcn/hutool/extra/ftp/FtpConfig;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcn/hutool/extra/ftp/AbstractFtp;->ftpConfig:Lcn/hutool/extra/ftp/FtpConfig;

    return-void
.end method

.method private static containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 260
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 263
    :cond_0
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 266
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method


# virtual methods
.method public abstract cd(Ljava/lang/String;)Z
.end method

.method public abstract delDir(Ljava/lang/String;)Z
.end method

.method public abstract delFile(Ljava/lang/String;)Z
.end method

.method public abstract download(Ljava/lang/String;Ljava/io/File;)V
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 217
    invoke-static {p3}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, ".temp"

    goto :goto_0

    :cond_0
    const-string v0, "."

    .line 220
    invoke-static {p3, v0}, Lcn/hutool/core/util/StrUtil;->addPrefixIfNot(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 224
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 229
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    :goto_2
    invoke-direct {v1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcn/hutool/extra/ftp/AbstractFtp;->download(Ljava/lang/String;Ljava/io/File;)V

    const/4 p1, 0x1

    .line 233
    invoke-static {v1, v0, p1}, Lcn/hutool/core/io/FileUtil;->rename(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 236
    invoke-static {v1}, Lcn/hutool/core/io/FileUtil;->del(Ljava/io/File;)Z

    .line 237
    new-instance p2, Lcn/hutool/extra/ftp/FtpException;

    invoke-direct {p2, p1}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public exist(Ljava/lang/String;)Z
    .locals 4

    .line 100
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 104
    :cond_0
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ftp/AbstractFtp;->isDir(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 107
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcn/hutool/core/util/CharUtil;->isFileSeparator(C)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 110
    :cond_2
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, ".."

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 115
    :cond_3
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcn/hutool/core/util/StrUtil;->emptyToDefault(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ftp/AbstractFtp;->isDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 123
    :cond_4
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ftp/AbstractFtp;->ls(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcn/hutool/extra/ftp/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    invoke-static {p1, v0}, Lcn/hutool/extra/ftp/AbstractFtp;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    :cond_5
    :goto_0
    return v1
.end method

.method public isDir(Ljava/lang/String;)Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcn/hutool/extra/ftp/AbstractFtp;->pwd()Ljava/lang/String;

    move-result-object v0

    .line 79
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ftp/AbstractFtp;->cd(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ftp/AbstractFtp;->cd(Ljava/lang/String;)Z

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lcn/hutool/extra/ftp/AbstractFtp;->cd(Ljava/lang/String;)Z

    .line 82
    throw p1
.end method

.method public abstract ls(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public mkDirs(Ljava/lang/String;)V
    .locals 6

    .line 160
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\\\\/]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {p0}, Lcn/hutool/extra/ftp/AbstractFtp;->pwd()Ljava/lang/String;

    move-result-object v0

    .line 163
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v1, p1, v2

    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    .line 165
    invoke-virtual {p0, v1}, Lcn/hutool/extra/ftp/AbstractFtp;->cd(Ljava/lang/String;)Z

    .line 167
    :cond_0
    array-length v1, p1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 168
    invoke-static {v4}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    :try_start_0
    invoke-virtual {p0, v4}, Lcn/hutool/extra/ftp/AbstractFtp;->cd(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lcn/hutool/extra/ftp/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v5, v2

    :goto_1
    if-nez v5, :cond_1

    .line 179
    invoke-virtual {p0, v4}, Lcn/hutool/extra/ftp/AbstractFtp;->mkdir(Ljava/lang/String;)Z

    .line 180
    invoke-virtual {p0, v4}, Lcn/hutool/extra/ftp/AbstractFtp;->cd(Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ftp/AbstractFtp;->cd(Ljava/lang/String;)Z

    return-void
.end method

.method public abstract mkdir(Ljava/lang/String;)Z
.end method

.method public abstract pwd()Ljava/lang/String;
.end method

.method public abstract reconnectIfTimeout()Lcn/hutool/extra/ftp/AbstractFtp;
.end method

.method public abstract recursiveDownloadFolder(Ljava/lang/String;Ljava/io/File;)V
.end method

.method public toParent()Z
    .locals 1

    const-string v0, ".."

    .line 59
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ftp/AbstractFtp;->cd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract upload(Ljava/lang/String;Ljava/io/File;)Z
.end method
