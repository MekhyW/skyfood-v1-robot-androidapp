.class public Lcn/hutool/http/MultipartOutputStream;
.super Ljava/io/OutputStream;
.source "MultipartOutputStream.java"


# static fields
.field private static final CONTENT_DISPOSITION_FILE_TEMPLATE:Ljava/lang/String; = "Content-Disposition: form-data; name=\"{}\"; filename=\"{}\"\r\n"

.field private static final CONTENT_DISPOSITION_TEMPLATE:Ljava/lang/String; = "Content-Disposition: form-data; name=\"{}\"\r\n"

.field private static final CONTENT_TYPE_FILE_TEMPLATE:Ljava/lang/String; = "Content-Type: {}\r\n"


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final charset:Ljava/nio/charset/Charset;

.field private isFinish:Z

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    .line 42
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->getBoundary()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/http/MultipartOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 54
    iput-object p1, p0, Lcn/hutool/http/MultipartOutputStream;->out:Ljava/io/OutputStream;

    .line 55
    iput-object p2, p0, Lcn/hutool/http/MultipartOutputStream;->charset:Ljava/nio/charset/Charset;

    .line 56
    iput-object p3, p0, Lcn/hutool/http/MultipartOutputStream;->boundary:Ljava/lang/String;

    return-void
.end method

.method private appendResource(Ljava/lang/String;Lcn/hutool/core/io/resource/Resource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 137
    invoke-interface {p2}, Lcn/hutool/core/io/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const-string p1, "Content-Disposition: form-data; name=\"{}\"\r\n"

    .line 142
    invoke-static {p1, v4}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-direct {p0, v3}, Lcn/hutool/http/MultipartOutputStream;->write([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v0, v4, v2

    const-string p1, "Content-Disposition: form-data; name=\"{}\"; filename=\"{}\"\r\n"

    .line 145
    invoke-static {p1, v4}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-direct {p0, v3}, Lcn/hutool/http/MultipartOutputStream;->write([Ljava/lang/Object;)V

    .line 149
    :goto_0
    instance-of p1, p2, Lcn/hutool/http/HttpResource;

    const-string v3, "Content-Type: {}\r\n"

    if-eqz p1, :cond_1

    .line 150
    move-object p1, p2

    check-cast p1, Lcn/hutool/http/HttpResource;

    invoke-virtual {p1}, Lcn/hutool/http/HttpResource;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 153
    invoke-static {v3, v4}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcn/hutool/http/MultipartOutputStream;->write([Ljava/lang/Object;)V

    goto :goto_1

    .line 155
    :cond_1
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    .line 157
    sget-object v5, Lcn/hutool/http/ContentType;->OCTET_STREAM:Lcn/hutool/http/ContentType;

    .line 158
    invoke-virtual {v5}, Lcn/hutool/http/ContentType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/hutool/http/HttpUtil;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 157
    invoke-static {v3, v4}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-direct {p0, p1}, Lcn/hutool/http/MultipartOutputStream;->write([Ljava/lang/Object;)V

    :cond_2
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\r\n"

    aput-object v0, p1, v1

    .line 162
    invoke-direct {p0, p1}, Lcn/hutool/http/MultipartOutputStream;->write([Ljava/lang/Object;)V

    .line 163
    invoke-interface {p2, p0}, Lcn/hutool/core/io/resource/Resource;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method private beginPart()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "--"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 174
    iget-object v2, p0, Lcn/hutool/http/MultipartOutputStream;->boundary:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\r\n"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcn/hutool/http/MultipartOutputStream;->write([Ljava/lang/Object;)V

    return-void
.end method

.method private varargs write([Ljava/lang/Object;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcn/hutool/http/MultipartOutputStream;->charset:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcn/hutool/core/io/IoUtil;->write(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Z[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcn/hutool/http/MultipartOutputStream;->finish()V

    .line 126
    iget-object v0, p0, Lcn/hutool/http/MultipartOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lcn/hutool/http/MultipartOutputStream;->isFinish:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    .line 118
    iget-object v3, p0, Lcn/hutool/http/MultipartOutputStream;->boundary:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "--{}--\r\n"

    invoke-static {v3, v2}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Lcn/hutool/http/MultipartOutputStream;->write([Ljava/lang/Object;)V

    .line 119
    iput-boolean v0, p0, Lcn/hutool/http/MultipartOutputStream;->isFinish:Z

    :cond_0
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/http/MultipartOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 85
    instance-of v0, p2, Lcn/hutool/core/io/resource/MultiResource;

    if-eqz v0, :cond_1

    .line 86
    check-cast p2, Lcn/hutool/core/io/resource/MultiResource;

    invoke-virtual {p2}, Lcn/hutool/core/io/resource/MultiResource;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/io/resource/Resource;

    .line 87
    invoke-virtual {p0, p1, v0}, Lcn/hutool/http/MultipartOutputStream;->write(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/http/MultipartOutputStream;

    goto :goto_0

    :cond_0
    return-object p0

    .line 93
    :cond_1
    invoke-direct {p0}, Lcn/hutool/http/MultipartOutputStream;->beginPart()V

    .line 95
    instance-of v0, p2, Lcn/hutool/core/io/resource/Resource;

    if-eqz v0, :cond_2

    .line 96
    check-cast p2, Lcn/hutool/core/io/resource/Resource;

    invoke-direct {p0, p1, p2}, Lcn/hutool/http/MultipartOutputStream;->appendResource(Ljava/lang/String;Lcn/hutool/core/io/resource/Resource;)V

    goto :goto_1

    .line 98
    :cond_2
    new-instance v0, Lcn/hutool/core/io/resource/StringResource;

    .line 99
    invoke-static {p2}, Lcn/hutool/core/convert/Convert;->toStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/hutool/http/MultipartOutputStream;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1, v2}, Lcn/hutool/core/io/resource/StringResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 98
    invoke-direct {p0, p1, v0}, Lcn/hutool/http/MultipartOutputStream;->appendResource(Ljava/lang/String;Lcn/hutool/core/io/resource/Resource;)V

    :goto_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "\r\n"

    aput-object v0, p1, p2

    .line 102
    invoke-direct {p0, p1}, Lcn/hutool/http/MultipartOutputStream;->write([Ljava/lang/Object;)V

    return-object p0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcn/hutool/http/MultipartOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
