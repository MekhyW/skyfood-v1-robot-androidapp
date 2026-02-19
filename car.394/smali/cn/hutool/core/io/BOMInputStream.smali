.class public Lcn/hutool/core/io/BOMInputStream;
.super Ljava/io/InputStream;
.source "BOMInputStream.java"


# static fields
.field private static final BOM_SIZE:I = 0x4


# instance fields
.field private charset:Ljava/lang/String;

.field private final defaultCharset:Ljava/lang/String;

.field private final in:Ljava/io/PushbackInputStream;

.field private isInited:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const-string v0, "UTF-8"

    .line 47
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/io/BOMInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcn/hutool/core/io/BOMInputStream;->isInited:Z

    .line 57
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcn/hutool/core/io/BOMInputStream;->in:Ljava/io/PushbackInputStream;

    .line 58
    iput-object p2, p0, Lcn/hutool/core/io/BOMInputStream;->defaultCharset:Ljava/lang/String;

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

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcn/hutool/core/io/BOMInputStream;->isInited:Z

    .line 90
    iget-object v0, p0, Lcn/hutool/core/io/BOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    .line 77
    iget-boolean v0, p0, Lcn/hutool/core/io/BOMInputStream;->isInited:Z

    if-nez v0, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcn/hutool/core/io/BOMInputStream;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/hutool/core/io/BOMInputStream;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/hutool/core/io/BOMInputStream;->defaultCharset:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-boolean v0, p0, Lcn/hutool/core/io/BOMInputStream;->isInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 111
    iget-object v2, p0, Lcn/hutool/core/io/BOMInputStream;->in:Ljava/io/PushbackInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    aget-byte v2, v1, v3

    const/4 v3, 0x3

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v2, :cond_1

    aget-byte v8, v1, v7

    if-nez v8, :cond_1

    aget-byte v8, v1, v6

    if-ne v8, v4, :cond_1

    aget-byte v8, v1, v3

    if-ne v8, v5, :cond_1

    const-string v2, "UTF-32BE"

    .line 114
    iput-object v2, p0, Lcn/hutool/core/io/BOMInputStream;->charset:Ljava/lang/String;

    :goto_0
    add-int/lit8 v2, v0, -0x4

    goto :goto_2

    :cond_1
    if-ne v2, v5, :cond_2

    aget-byte v8, v1, v7

    if-ne v8, v4, :cond_2

    aget-byte v8, v1, v6

    if-nez v8, :cond_2

    aget-byte v3, v1, v3

    if-nez v3, :cond_2

    const-string v2, "UTF-32LE"

    .line 117
    iput-object v2, p0, Lcn/hutool/core/io/BOMInputStream;->charset:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v3, -0x11

    if-ne v2, v3, :cond_3

    aget-byte v3, v1, v7

    const/16 v8, -0x45

    if-ne v3, v8, :cond_3

    aget-byte v3, v1, v6

    const/16 v6, -0x41

    if-ne v3, v6, :cond_3

    const-string v2, "UTF-8"

    .line 120
    iput-object v2, p0, Lcn/hutool/core/io/BOMInputStream;->charset:Ljava/lang/String;

    add-int/lit8 v2, v0, -0x3

    goto :goto_2

    :cond_3
    if-ne v2, v4, :cond_4

    aget-byte v3, v1, v7

    if-ne v3, v5, :cond_4

    const-string v2, "UTF-16BE"

    .line 123
    iput-object v2, p0, Lcn/hutool/core/io/BOMInputStream;->charset:Ljava/lang/String;

    :goto_1
    add-int/lit8 v2, v0, -0x2

    goto :goto_2

    :cond_4
    if-ne v2, v5, :cond_5

    aget-byte v2, v1, v7

    if-ne v2, v4, :cond_5

    const-string v2, "UTF-16LE"

    .line 126
    iput-object v2, p0, Lcn/hutool/core/io/BOMInputStream;->charset:Ljava/lang/String;

    goto :goto_1

    .line 130
    :cond_5
    iget-object v2, p0, Lcn/hutool/core/io/BOMInputStream;->defaultCharset:Ljava/lang/String;

    iput-object v2, p0, Lcn/hutool/core/io/BOMInputStream;->charset:Ljava/lang/String;

    move v2, v0

    :goto_2
    if-lez v2, :cond_6

    .line 135
    iget-object v3, p0, Lcn/hutool/core/io/BOMInputStream;->in:Ljava/io/PushbackInputStream;

    sub-int/2addr v0, v2

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 138
    :cond_6
    iput-boolean v7, p0, Lcn/hutool/core/io/BOMInputStream;->isInited:Z

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcn/hutool/core/io/BOMInputStream;->isInited:Z

    .line 96
    iget-object v0, p0, Lcn/hutool/core/io/BOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    return v0
.end method
