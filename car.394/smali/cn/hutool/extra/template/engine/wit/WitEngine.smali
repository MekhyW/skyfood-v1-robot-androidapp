.class public Lcn/hutool/extra/template/engine/wit/WitEngine;
.super Ljava/lang/Object;
.source "WitEngine.java"

# interfaces
.implements Lcn/hutool/extra/template/TemplateEngine;


# instance fields
.field private engine:Lorg/febit/wit/Engine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/extra/template/TemplateConfig;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lcn/hutool/extra/template/engine/wit/WitEngine;->init(Lcn/hutool/extra/template/TemplateConfig;)Lcn/hutool/extra/template/TemplateEngine;

    return-void
.end method

.method public constructor <init>(Lorg/febit/wit/Engine;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1}, Lcn/hutool/extra/template/engine/wit/WitEngine;->init(Lorg/febit/wit/Engine;)V

    return-void
.end method

.method private static createEngine(Lcn/hutool/extra/template/TemplateConfig;)Lorg/febit/wit/Engine;
    .locals 7

    const-string v0, ""

    .line 93
    invoke-static {v0}, Lorg/febit/wit/Engine;->createConfigProps(Ljava/lang/String;)Lorg/febit/wit/util/Props;

    move-result-object v0

    if-eqz p0, :cond_4

    .line 97
    invoke-static {}, Lcn/hutool/core/lang/Dict;->create()Lcn/hutool/core/lang/Dict;

    move-result-object v1

    const-string v2, "DEFAULT_ENCODING"

    .line 99
    invoke-virtual {p0}, Lcn/hutool/extra/template/TemplateConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/hutool/core/lang/Dict;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/core/lang/Dict;

    .line 101
    sget-object v2, Lcn/hutool/extra/template/engine/wit/WitEngine$1;->$SwitchMap$cn$hutool$extra$template$TemplateConfig$ResourceMode:[I

    invoke-virtual {p0}, Lcn/hutool/extra/template/TemplateConfig;->getResourceMode()Lcn/hutool/extra/template/TemplateConfig$ResourceMode;

    move-result-object v3

    invoke-virtual {v3}, Lcn/hutool/extra/template/TemplateConfig$ResourceMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-string v4, "pathLoader.root"

    const-string v5, "routeLoader.defaultLoader"

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    const-string v6, "fileLoader"

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {}, Lcn/hutool/core/io/FileUtil;->getWebRoot()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lcn/hutool/extra/template/TemplateConfig;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 115
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lorg/febit/wit/util/Props;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v5, v6}, Lorg/febit/wit/util/Props;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcn/hutool/extra/template/TemplateConfig;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lorg/febit/wit/util/Props;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v5, v6}, Lorg/febit/wit/util/Props;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "stringLoader"

    .line 107
    invoke-virtual {v0, v5, p0}, Lorg/febit/wit/util/Props;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcn/hutool/extra/template/TemplateConfig;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lorg/febit/wit/util/Props;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "classpathLoader"

    .line 104
    invoke-virtual {v0, v5, p0}, Lorg/febit/wit/util/Props;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-static {v0, v1}, Lorg/febit/wit/Engine;->create(Lorg/febit/wit/util/Props;Ljava/util/Map;)Lorg/febit/wit/Engine;

    move-result-object p0

    return-object p0
.end method

.method private init(Lorg/febit/wit/Engine;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/hutool/extra/template/engine/wit/WitEngine;->engine:Lorg/febit/wit/Engine;

    return-void
.end method


# virtual methods
.method public getRawEngine()Lorg/febit/wit/Engine;
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/hutool/extra/template/engine/wit/WitEngine;->engine:Lorg/febit/wit/Engine;

    return-object v0
.end method

.method public getTemplate(Ljava/lang/String;)Lcn/hutool/extra/template/Template;
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/hutool/extra/template/engine/wit/WitEngine;->engine:Lorg/febit/wit/Engine;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcn/hutool/extra/template/TemplateConfig;->DEFAULT:Lcn/hutool/extra/template/TemplateConfig;

    invoke-virtual {p0, v0}, Lcn/hutool/extra/template/engine/wit/WitEngine;->init(Lcn/hutool/extra/template/TemplateConfig;)Lcn/hutool/extra/template/TemplateEngine;

    .line 70
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/template/engine/wit/WitEngine;->engine:Lorg/febit/wit/Engine;

    invoke-virtual {v0, p1}, Lorg/febit/wit/Engine;->getTemplate(Ljava/lang/String;)Lorg/febit/wit/Template;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/extra/template/engine/wit/WitTemplate;->wrap(Lorg/febit/wit/Template;)Lcn/hutool/extra/template/engine/wit/WitTemplate;

    move-result-object p1
    :try_end_0
    .catch Lorg/febit/wit/exceptions/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 72
    new-instance v0, Lcn/hutool/extra/template/TemplateException;

    invoke-direct {v0, p1}, Lcn/hutool/extra/template/TemplateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public init(Lcn/hutool/extra/template/TemplateConfig;)Lcn/hutool/extra/template/TemplateEngine;
    .locals 0

    .line 52
    invoke-static {p1}, Lcn/hutool/extra/template/engine/wit/WitEngine;->createEngine(Lcn/hutool/extra/template/TemplateConfig;)Lorg/febit/wit/Engine;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/extra/template/engine/wit/WitEngine;->init(Lorg/febit/wit/Engine;)V

    return-object p0
.end method
