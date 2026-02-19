.class public Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader;
.super Ljetbrick/template/loader/AbstractResourceLoader;
.source "StringResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader$StringTemplateResource;
    }
.end annotation


# instance fields
.field private charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljetbrick/template/loader/AbstractResourceLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Ljetbrick/io/resource/Resource;
    .locals 2

    .line 26
    new-instance v0, Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader$StringTemplateResource;

    iget-object v1, p0, Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader$StringTemplateResource;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/hutool/extra/template/engine/jetbrick/loader/StringResourceLoader;->charset:Ljava/nio/charset/Charset;

    return-void
.end method
