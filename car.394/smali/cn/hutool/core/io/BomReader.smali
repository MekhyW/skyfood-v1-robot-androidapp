.class public Lcn/hutool/core/io/BomReader;
.super Ljava/io/Reader;
.source "BomReader.java"


# instance fields
.field private reader:Ljava/io/InputStreamReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InputStream must be not null!"

    .line 41
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    instance-of v0, p1, Lcn/hutool/core/io/BOMInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lcn/hutool/core/io/BOMInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/hutool/core/io/BOMInputStream;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/BOMInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 44
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lcn/hutool/core/io/BOMInputStream;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/hutool/core/io/BomReader;->reader:Ljava/io/InputStreamReader;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcn/hutool/core/io/BomReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    return-void
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcn/hutool/core/io/BomReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result p1

    return p1
.end method
