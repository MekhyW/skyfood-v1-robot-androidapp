.class Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader$StringTemplateResource;
.super Ljetbrick/io/resource/AbstractResource;
.source "StringResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringTemplateResource"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljetbrick/io/resource/AbstractResource;-><init>()V

    .line 53
    iput-object p1, p0, Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader$StringTemplateResource;->content:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader$StringTemplateResource;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public exist()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader$StringTemplateResource;->content:Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public lastModified()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljetbrick/io/resource/ResourceNotFoundException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader$StringTemplateResource;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader$StringTemplateResource;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcn/hutool/core/io/IoUtil;->toStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/ByteArrayInputStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader$StringTemplateResource;->content:Ljava/lang/String;

    return-object v0
.end method
