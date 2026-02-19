.class public Lcn/hutool/http/ssl/AndroidSupportSSLFactory;
.super Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;
.source "AndroidSupportSSLFactory.java"


# static fields
.field private static final protocols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "TLSv1.1"

    const-string v1, "TLSv1.2"

    const-string v2, "SSLv3"

    const-string v3, "TLSv1"

    .line 18
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/http/ssl/AndroidSupportSSLFactory;->protocols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 22
    sget-object v0, Lcn/hutool/http/ssl/AndroidSupportSSLFactory;->protocols:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;-><init>([Ljava/lang/String;)V

    return-void
.end method
