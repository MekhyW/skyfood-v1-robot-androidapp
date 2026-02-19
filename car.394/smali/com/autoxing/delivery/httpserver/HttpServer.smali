.class public Lcom/autoxing/delivery/httpserver/HttpServer;
.super Lfi/iki/elonen/NanoHTTPD;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/httpserver/HttpServer$HttpServerUploadListener;
    }
.end annotation


# instance fields
.field private Listener:Lcom/autoxing/delivery/httpserver/HttpServer$HttpServerUploadListener;

.field private final TAG:Ljava/lang/String;

.field private languageType:I

.field private mainActivity:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x22b8

    .line 24
    invoke-direct {p0, v0}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->languageType:I

    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getFileName(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 162
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 163
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    invoke-static {v1}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-static {v1}, Lcom/autoxing/delivery/util/Utils;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 168
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    invoke-static {v0}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    invoke-static {v0}, Lcom/autoxing/delivery/util/Utils;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 172
    :cond_1
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private getIndexResponse(Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->mainActivity:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/autoxing/delivery/util/FileUtils;->getAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    iget p2, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->languageType:I

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const/16 v0, 0x8

    if-le p2, v0, :cond_2

    :cond_1
    const/4 p2, 0x2

    .line 139
    iput p2, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->languageType:I

    .line 141
    :cond_2
    iget p2, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->languageType:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "{languageType}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 143
    :goto_0
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private getResId(Ljava/lang/String;)I
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->mainActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->languageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->mainActivity:Landroid/content/Context;

    .line 124
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    .line 123
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->mainActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->mainActivity:Landroid/content/Context;

    .line 129
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "values"

    .line 128
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getUploadType(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)I
    .locals 5

    .line 147
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/animation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    return v2

    .line 149
    :cond_0
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    return v4

    .line 152
    :cond_1
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "referer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 153
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 155
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v4

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private index(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 11

    .line 65
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/httpserver/HttpServer;->getUploadType(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 70
    sget-object v0, Lcom/autoxing/delivery/constant/Configs;->localAnimationFilePath:Ljava/lang/String;

    const-string v3, "index_animation.html"

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 73
    sget-object v0, Lcom/autoxing/delivery/constant/Configs;->localApkZipPath:Ljava/lang/String;

    const-string v3, "index_apk.html"

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/autoxing/delivery/constant/Configs;->localResFilePath:Ljava/lang/String;

    const-string v3, "index.html"

    .line 79
    :goto_0
    iget-object v4, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->TAG:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v3, v5, v7

    const-string v8, "dirPath=%s,htmlFileName=%s"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v5

    .line 82
    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v8, v5}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v8, v5}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    :cond_2
    :try_start_0
    invoke-interface {p1, v4}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 86
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    .line 90
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    .line 91
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v8

    aput-object v8, v5, v7

    .line 92
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v8

    aput-object v8, v5, v2

    .line 93
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x4

    .line 94
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getQueryParameterString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x5

    aput-object v4, v5, v1

    const-string v1, "url=%s,method=%s,params=%s,headers=%s,queryParam=%s,files=%s"

    .line 89
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    iget-object v5, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->TAG:Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v6

    const-string v9, "paramsKey=%s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 103
    iget-object v8, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->TAG:Ljava/lang/String;

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v5, v9, v6

    const-string v10, "tmpFilePath=%s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_4

    .line 104
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 105
    invoke-direct {p0, p1, v2}, Lcom/autoxing/delivery/httpserver/HttpServer;->getFileName(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    iget-object v8, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->TAG:Ljava/lang/String;

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v2, v9, v6

    const-string v10, "fileName=%s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 108
    invoke-static {v8}, Lcom/autoxing/delivery/util/FileUtils;->generateNotExistFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "copyFile "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/autoxing/delivery/httpserver/HttpServer;->debug(Ljava/lang/String;)V

    .line 110
    invoke-static {v5, v8}, Lcom/autoxing/delivery/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "text_upload_succeeded"

    .line 111
    invoke-direct {p0, v5}, Lcom/autoxing/delivery/httpserver/HttpServer;->getResId(Ljava/lang/String;)I

    move-result v9

    .line 112
    invoke-virtual {p0, v8, v2, v7, v5}, Lcom/autoxing/delivery/httpserver/HttpServer;->uploadFileStatus(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->mainActivity:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_4
    const-string v2, "text_upload_failed"

    .line 115
    invoke-direct {p0, v2}, Lcom/autoxing/delivery/httpserver/HttpServer;->getResId(Ljava/lang/String;)I

    move-result v2

    .line 116
    iget-object v5, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->mainActivity:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 119
    :cond_5
    invoke-direct {p0, v2, v3}, Lcom/autoxing/delivery/httpserver/HttpServer;->getIndexResponse(Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3

    .line 58
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ContentType;

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "content-type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ContentType;->tryUTF8()Lfi/iki/elonen/NanoHTTPD$ContentType;

    move-result-object v0

    .line 59
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getContentTypeHeader()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->languageType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-LanguageType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/httpserver/HttpServer;->index(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public setLanguageType(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->languageType:I

    return-void
.end method

.method public start(Landroid/content/Context;Lcom/autoxing/delivery/httpserver/HttpServer$HttpServerUploadListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->mainActivity:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->Listener:Lcom/autoxing/delivery/httpserver/HttpServer$HttpServerUploadListener;

    .line 39
    :try_start_0
    invoke-super {p0}, Lfi/iki/elonen/NanoHTTPD;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public uploadFileStatus(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "uploadFileStatus=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/autoxing/delivery/httpserver/HttpServer;->Listener:Lcom/autoxing/delivery/httpserver/HttpServer$HttpServerUploadListener;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autoxing/delivery/httpserver/HttpServer$HttpServerUploadListener;->uploadFileStatus(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
