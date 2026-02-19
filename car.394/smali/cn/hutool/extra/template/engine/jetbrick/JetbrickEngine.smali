.class public Lcn/hutool/extra/template/engine/jetbrick/JetbrickEngine;
.super Ljava/lang/Object;
.source "JetbrickEngine.java"

# interfaces
.implements Lcn/hutool/extra/template/TemplateEngine;


# instance fields
.field private engine:Ljetbrick/template/JetEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/extra/template/TemplateConfig;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcn/hutool/extra/template/engine/jetbrick/JetbrickEngine;->init(Lcn/hutool/extra/template/TemplateConfig;)Lcn/hutool/extra/template/TemplateEngine;

    return-void
.end method

.method public constructor <init>(Ljetbrick/template/JetEngine;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-direct {p0, p1}, Lcn/hutool/extra/template/engine/jetbrick/JetbrickEngine;->init(Ljetbrick/template/JetEngine;)V

    return-void
.end method

.method private static createEngine(Lcn/hutool/extra/template/TemplateConfig;)Ljetbrick/template/JetEngine;
    .locals 5

    if-nez p0, :cond_0

    .line 87
    sget-object p0, Lcn/hutool/extra/template/TemplateConfig;->DEFAULT:Lcn/hutool/extra/template/TemplateConfig;

    .line 90
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "jetx.input.encoding"

    .line 91
    invoke-virtual {p0}, Lcn/hutool/extra/template/TemplateConfig;->getCharsetStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "jetx.output.encoding"

    .line 92
    invoke-virtual {p0}, Lcn/hutool/extra/template/TemplateConfig;->getCharsetStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "jetx.template.loaders"

    const-string v2, "$loader"

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcn/hutool/extra/template/engine/jetbrick/JetbrickEngine$1;->$SwitchMap$cn$hutool$extra$template$TemplateConfig$ResourceMode:[I

    invoke-virtual {p0}, Lcn/hutool/extra/template/TemplateConfig;->getResourceMode()Lcn/hutool/extra/template/TemplateConfig$ResourceMode;

    move-result-object v3

    invoke-virtual {v3}, Lcn/hutool/extra/template/TemplateConfig$ResourceMode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    const-string v4, "$loader.root"

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    .line 114
    invoke-static {}, Ljetbrick/template/JetEngine;->create()Ljetbrick/template/JetEngine;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "cn.hutool.extra.template.engine.jetbrick.loader.StringResourceLoader"

    .line 109
    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "$loader.charset"

    .line 110
    invoke-virtual {p0}, Lcn/hutool/extra/template/TemplateConfig;->getCharsetStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "jetbrick.template.loader.ServletResourceLoader"

    .line 105
    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0}, Lcn/hutool/extra/template/TemplateConfig;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v1, "jetbrick.template.loader.FileSystemResourceLoader"

    .line 101
    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Lcn/hutool/extra/template/TemplateConfig;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v1, "jetbrick.template.loader.ClasspathResourceLoader"

    .line 97
    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p0}, Lcn/hutool/extra/template/TemplateConfig;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    :goto_0
    invoke-static {v0}, Ljetbrick/template/JetEngine;->create(Ljava/util/Properties;)Ljetbrick/template/JetEngine;

    move-result-object p0

    return-object p0
.end method

.method private init(Ljetbrick/template/JetEngine;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/hutool/extra/template/engine/jetbrick/JetbrickEngine;->engine:Ljetbrick/template/JetEngine;

    return-void
.end method


# virtual methods
.method public getRawEngine()Ljetbrick/template/JetEngine;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/hutool/extra/template/engine/jetbrick/JetbrickEngine;->engine:Ljetbrick/template/JetEngine;

    return-object v0
.end method

.method public getTemplate(Ljava/lang/String;)Lcn/hutool/extra/template/Template;
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/hutool/extra/template/engine/jetbrick/JetbrickEngine;->engine:Ljetbrick/template/JetEngine;

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcn/hutool/extra/template/TemplateConfig;->DEFAULT:Lcn/hutool/extra/template/TemplateConfig;

    invoke-virtual {p0, v0}, Lcn/hutool/extra/template/engine/jetbrick/JetbrickEngine;->init(Lcn/hutool/extra/template/TemplateConfig;)Lcn/hutool/extra/template/TemplateEngine;

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/hutool/extra/template/engine/jetbrick/JetbrickEngine;->engine:Ljetbrick/template/JetEngine;

    invoke-virtual {v0, p1}, Ljetbrick/template/JetEngine;->getTemplate(Ljava/lang/String;)Ljetbrick/template/JetTemplate;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate;->wrap(Ljetbrick/template/JetTemplate;)Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate;

    move-result-object p1

    return-object p1
.end method

.method public init(Lcn/hutool/extra/template/TemplateConfig;)Lcn/hutool/extra/template/TemplateEngine;
    .locals 0

    .line 49
    invoke-static {p1}, Lcn/hutool/extra/template/engine/jetbrick/JetbrickEngine;->createEngine(Lcn/hutool/extra/template/TemplateConfig;)Ljetbrick/template/JetEngine;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/extra/template/engine/jetbrick/JetbrickEngine;->init(Ljetbrick/template/JetEngine;)V

    return-object p0
.end method
