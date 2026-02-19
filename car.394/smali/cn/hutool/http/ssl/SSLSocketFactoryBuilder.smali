.class public Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;
.super Ljava/lang/Object;
.source "SSLSocketFactoryBuilder.java"

# interfaces
.implements Lcn/hutool/core/net/SSLProtocols;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field sslContextBuilder:Lcn/hutool/core/net/SSLContextBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcn/hutool/core/net/SSLContextBuilder;->create()Lcn/hutool/core/net/SSLContextBuilder;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;->sslContextBuilder:Lcn/hutool/core/net/SSLContextBuilder;

    return-void
.end method

.method public static create()Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;
    .locals 1

    .line 38
    new-instance v0, Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;

    invoke-direct {v0}, Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;->sslContextBuilder:Lcn/hutool/core/net/SSLContextBuilder;

    invoke-virtual {v0}, Lcn/hutool/core/net/SSLContextBuilder;->buildChecked()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public varargs setKeyManagers([Ljavax/net/ssl/KeyManager;)Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;->sslContextBuilder:Lcn/hutool/core/net/SSLContextBuilder;

    invoke-virtual {v0, p1}, Lcn/hutool/core/net/SSLContextBuilder;->setKeyManagers([Ljavax/net/ssl/KeyManager;)Lcn/hutool/core/net/SSLContextBuilder;

    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;->sslContextBuilder:Lcn/hutool/core/net/SSLContextBuilder;

    invoke-virtual {v0, p1}, Lcn/hutool/core/net/SSLContextBuilder;->setProtocol(Ljava/lang/String;)Lcn/hutool/core/net/SSLContextBuilder;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;->sslContextBuilder:Lcn/hutool/core/net/SSLContextBuilder;

    invoke-virtual {v0, p1}, Lcn/hutool/core/net/SSLContextBuilder;->setSecureRandom(Ljava/security/SecureRandom;)Lcn/hutool/core/net/SSLContextBuilder;

    return-object p0
.end method

.method public varargs setTrustManagers([Ljavax/net/ssl/TrustManager;)Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/hutool/http/ssl/SSLSocketFactoryBuilder;->sslContextBuilder:Lcn/hutool/core/net/SSLContextBuilder;

    invoke-virtual {v0, p1}, Lcn/hutool/core/net/SSLContextBuilder;->setTrustManagers([Ljavax/net/ssl/TrustManager;)Lcn/hutool/core/net/SSLContextBuilder;

    return-object p0
.end method
