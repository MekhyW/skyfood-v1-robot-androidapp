.class public Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "CustomProtocolsSSLFactory.java"


# instance fields
.field private final base:Ljavax/net/ssl/SSLSocketFactory;

.field private final protocols:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->protocols:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 31
    invoke-static {p1}, Lcn/hutool/core/net/SSLUtil;->createSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->base:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private resetProtocols(Ljavax/net/ssl/SSLSocket;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->protocols:[Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->protocols:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->base:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 47
    invoke-direct {p0, v0}, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->resetProtocols(Ljavax/net/ssl/SSLSocket;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->base:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 61
    invoke-direct {p0, p1}, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->resetProtocols(Ljavax/net/ssl/SSLSocket;)V

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->base:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 68
    invoke-direct {p0, p1}, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->resetProtocols(Ljavax/net/ssl/SSLSocket;)V

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->base:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 75
    invoke-direct {p0, p1}, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->resetProtocols(Ljavax/net/ssl/SSLSocket;)V

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->base:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 82
    invoke-direct {p0, p1}, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->resetProtocols(Ljavax/net/ssl/SSLSocket;)V

    return-object p1
.end method

.method public bridge synthetic createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLSocket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->base:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 54
    invoke-direct {p0, p1}, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->resetProtocols(Ljavax/net/ssl/SSLSocket;)V

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->base:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/hutool/http/ssl/CustomProtocolsSSLFactory;->base:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
