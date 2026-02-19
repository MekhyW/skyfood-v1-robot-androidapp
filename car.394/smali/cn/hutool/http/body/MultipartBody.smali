.class public Lcn/hutool/http/body/MultipartBody;
.super Ljava/lang/Object;
.source "MultipartBody.java"

# interfaces
.implements Lcn/hutool/http/body/RequestBody;


# static fields
.field private static final CONTENT_TYPE_MULTIPART_PREFIX:Ljava/lang/String;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final charset:Ljava/nio/charset/Charset;

.field private final form:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/hutool/http/ContentType;->MULTIPART:Lcn/hutool/http/ContentType;

    invoke-virtual {v1}, Lcn/hutool/http/ContentType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/http/body/MultipartBody;->CONTENT_TYPE_MULTIPART_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->getBoundary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/http/body/MultipartBody;->boundary:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcn/hutool/http/body/MultipartBody;->form:Ljava/util/Map;

    .line 66
    iput-object p2, p0, Lcn/hutool/http/body/MultipartBody;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static create(Ljava/util/Map;Ljava/nio/charset/Charset;)Lcn/hutool/http/body/MultipartBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcn/hutool/http/body/MultipartBody;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcn/hutool/http/body/MultipartBody;

    invoke-direct {v0, p0, p1}, Lcn/hutool/http/body/MultipartBody;-><init>(Ljava/util/Map;Ljava/nio/charset/Charset;)V

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/hutool/http/body/MultipartBody;->CONTENT_TYPE_MULTIPART_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/http/body/MultipartBody;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    invoke-virtual {p0, v0}, Lcn/hutool/http/body/MultipartBody;->write(Ljava/io/OutputStream;)V

    .line 87
    iget-object v1, p0, Lcn/hutool/http/body/MultipartBody;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcn/hutool/core/io/IoUtil;->toStr(Ljava/io/ByteArrayOutputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 3

    .line 76
    new-instance v0, Lcn/hutool/http/MultipartOutputStream;

    iget-object v1, p0, Lcn/hutool/http/body/MultipartBody;->charset:Ljava/nio/charset/Charset;

    iget-object v2, p0, Lcn/hutool/http/body/MultipartBody;->boundary:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcn/hutool/http/MultipartOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcn/hutool/http/body/MultipartBody;->form:Ljava/util/Map;

    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcn/hutool/http/body/MultipartBody;->form:Ljava/util/Map;

    new-instance v1, Lcn/hutool/http/body/MultipartBody$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcn/hutool/http/body/MultipartBody$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/http/MultipartOutputStream;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcn/hutool/http/MultipartOutputStream;->finish()V

    return-void
.end method
