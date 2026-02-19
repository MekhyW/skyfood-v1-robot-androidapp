.class public Lcn/hutool/http/HttpResource;
.super Ljava/lang/Object;
.source "HttpResource.java"

# interfaces
.implements Lcn/hutool/core/io/resource/Resource;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final resource:Lcn/hutool/core/io/resource/Resource;


# direct methods
.method public constructor <init>(Lcn/hutool/core/io/resource/Resource;Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Resource must be not null !"

    .line 29
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/io/resource/Resource;

    iput-object p1, p0, Lcn/hutool/http/HttpResource;->resource:Lcn/hutool/core/io/resource/Resource;

    .line 30
    iput-object p2, p0, Lcn/hutool/http/HttpResource;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/hutool/http/HttpResource;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcn/hutool/http/HttpResource;->resource:Lcn/hutool/core/io/resource/Resource;

    invoke-interface {v0}, Lcn/hutool/core/io/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/hutool/http/HttpResource;->resource:Lcn/hutool/core/io/resource/Resource;

    invoke-interface {v0}, Lcn/hutool/core/io/resource/Resource;->getStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/hutool/http/HttpResource;->resource:Lcn/hutool/core/io/resource/Resource;

    invoke-interface {v0}, Lcn/hutool/core/io/resource/Resource;->getUrl()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
