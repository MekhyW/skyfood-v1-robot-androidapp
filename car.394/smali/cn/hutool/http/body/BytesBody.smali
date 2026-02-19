.class public Lcn/hutool/http/body/BytesBody;
.super Ljava/lang/Object;
.source "BytesBody.java"

# interfaces
.implements Lcn/hutool/http/body/RequestBody;


# instance fields
.field private final content:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcn/hutool/http/body/BytesBody;->content:[B

    return-void
.end method

.method public static create([B)Lcn/hutool/http/body/BytesBody;
    .locals 1

    .line 23
    new-instance v0, Lcn/hutool/http/body/BytesBody;

    invoke-direct {v0, p0}, Lcn/hutool/http/body/BytesBody;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lcn/hutool/http/body/BytesBody;->content:[B

    invoke-static {p1, v0, v1}, Lcn/hutool/core/io/IoUtil;->write(Ljava/io/OutputStream;Z[B)V

    return-void
.end method
