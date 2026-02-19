.class public Lcn/hutool/core/io/resource/UrlResource;
.super Ljava/lang/Object;
.source "UrlResource.java"

# interfaces
.implements Lcn/hutool/core/io/resource/Resource;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private lastModified:J

.field protected name:Ljava/lang/String;

.field protected url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcn/hutool/core/io/resource/UrlResource;->lastModified:J

    .line 63
    invoke-static {p1}, Lcn/hutool/core/util/URLUtil;->getURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/io/resource/UrlResource;->url:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 32
    invoke-static {p1}, Lcn/hutool/core/util/URLUtil;->url(Ljava/net/URI;)Ljava/net/URL;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/hutool/core/io/resource/UrlResource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/io/resource/UrlResource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcn/hutool/core/io/resource/UrlResource;->lastModified:J

    .line 49
    iput-object p1, p0, Lcn/hutool/core/io/resource/UrlResource;->url:Ljava/net/URL;

    if-eqz p1, :cond_0

    const-string v0, "file"

    .line 50
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/net/URL;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/hutool/core/io/resource/UrlResource;->lastModified:J

    .line 53
    :cond_0
    new-instance v0, Lcn/hutool/core/io/resource/UrlResource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/resource/UrlResource$$ExternalSyntheticLambda0;-><init>(Ljava/net/URL;)V

    invoke-static {p2, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/hutool/core/io/resource/UrlResource;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/net/URL;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/hutool/core/io/resource/UrlResource;->url:Ljava/net/URL;

    invoke-static {v0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/net/URL;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcn/hutool/core/io/resource/UrlResource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/resource/NoResourceException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcn/hutool/core/io/resource/UrlResource;->url:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 82
    invoke-static {v0}, Lcn/hutool/core/util/URLUtil;->getStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Lcn/hutool/core/io/resource/NoResourceException;

    const-string v1, "Resource URL is null!"

    invoke-direct {v0, v1}, Lcn/hutool/core/io/resource/NoResourceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/hutool/core/io/resource/UrlResource;->url:Ljava/net/URL;

    return-object v0
.end method

.method public isModified()Z
    .locals 4

    .line 88
    iget-wide v0, p0, Lcn/hutool/core/io/resource/UrlResource;->lastModified:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcn/hutool/core/io/resource/UrlResource;->getFile()Ljava/io/File;

    move-result-object v2

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
    iget-object v0, p0, Lcn/hutool/core/io/resource/UrlResource;->url:Ljava/net/URL;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
