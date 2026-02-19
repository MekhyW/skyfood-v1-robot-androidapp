.class public Lcn/hutool/http/body/ResourceBody;
.super Ljava/lang/Object;
.source "ResourceBody.java"

# interfaces
.implements Lcn/hutool/http/body/RequestBody;


# instance fields
.field private final resource:Lcn/hutool/core/io/resource/Resource;


# direct methods
.method public constructor <init>(Lcn/hutool/core/io/resource/Resource;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcn/hutool/http/body/ResourceBody;->resource:Lcn/hutool/core/io/resource/Resource;

    return-void
.end method

.method public static create(Lcn/hutool/core/io/resource/Resource;)Lcn/hutool/http/body/ResourceBody;
    .locals 1

    .line 24
    new-instance v0, Lcn/hutool/http/body/ResourceBody;

    invoke-direct {v0, p0}, Lcn/hutool/http/body/ResourceBody;-><init>(Lcn/hutool/core/io/resource/Resource;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/hutool/http/body/ResourceBody;->resource:Lcn/hutool/core/io/resource/Resource;

    invoke-interface {v0}, Lcn/hutool/core/io/resource/Resource;->readUtf8Str()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/hutool/http/body/ResourceBody;->resource:Lcn/hutool/core/io/resource/Resource;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1}, Lcn/hutool/core/io/resource/Resource;->writeTo(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method
