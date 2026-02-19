.class public Lcn/hutool/http/body/FormUrlEncodedBody;
.super Lcn/hutool/http/body/BytesBody;
.source "FormUrlEncodedBody.java"


# direct methods
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

    const/4 v0, 0x1

    .line 36
    invoke-static {p1, v0}, Lcn/hutool/core/net/url/UrlQuery;->of(Ljava/util/Map;Z)Lcn/hutool/core/net/url/UrlQuery;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/hutool/core/net/url/UrlQuery;->build(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/http/body/BytesBody;-><init>([B)V

    return-void
.end method

.method public static create(Ljava/util/Map;Ljava/nio/charset/Charset;)Lcn/hutool/http/body/FormUrlEncodedBody;
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
            "Lcn/hutool/http/body/FormUrlEncodedBody;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcn/hutool/http/body/FormUrlEncodedBody;

    invoke-direct {v0, p0, p1}, Lcn/hutool/http/body/FormUrlEncodedBody;-><init>(Ljava/util/Map;Ljava/nio/charset/Charset;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    invoke-virtual {p0, v0}, Lcn/hutool/http/body/FormUrlEncodedBody;->write(Ljava/io/OutputStream;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
