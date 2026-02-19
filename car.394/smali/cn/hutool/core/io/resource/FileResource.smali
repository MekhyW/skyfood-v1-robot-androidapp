.class public Lcn/hutool/core/io/resource/FileResource;
.super Ljava/lang/Object;
.source "FileResource.java"

# interfaces
.implements Lcn/hutool/core/io/resource/Resource;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final file:Ljava/io/File;

.field private final lastModified:J

.field private final name:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$svrVDp_zN9TR6t4KRrvxuC3wZRw(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/io/resource/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "File must be not null !"

    .line 62
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcn/hutool/core/io/resource/FileResource;->file:Ljava/io/File;

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/hutool/core/io/resource/FileResource;->lastModified:J

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcn/hutool/core/io/resource/FileResource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/resource/FileResource$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;)V

    invoke-static {p2, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/hutool/core/io/resource/FileResource;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/io/resource/FileResource;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    .line 43
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/io/resource/FileResource;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/hutool/core/io/resource/FileResource;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcn/hutool/core/io/resource/FileResource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/resource/NoResourceException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcn/hutool/core/io/resource/FileResource;->file:Ljava/io/File;

    invoke-static {v0}, Lcn/hutool/core/io/FileUtil;->getInputStream(Ljava/io/File;)Ljava/io/BufferedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/hutool/core/io/resource/FileResource;->file:Ljava/io/File;

    invoke-static {v0}, Lcn/hutool/core/util/URLUtil;->getURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public isModified()Z
    .locals 4

    .line 96
    iget-wide v0, p0, Lcn/hutool/core/io/resource/FileResource;->lastModified:J

    iget-object v2, p0, Lcn/hutool/core/io/resource/FileResource;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcn/hutool/core/io/resource/FileResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
