.class public Lcn/hutool/http/webservice/SoapClient;
.super Lcn/hutool/http/HttpBase;
.source "SoapClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/http/HttpBase<",
        "Lcn/hutool/http/webservice/SoapClient;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE_SOAP11_TEXT_XML:Ljava/lang/String; = "text/xml;charset="

.field private static final CONTENT_TYPE_SOAP12_SOAP_XML:Ljava/lang/String; = "application/soap+xml;charset="


# instance fields
.field private connectionTimeout:I

.field private factory:Ljavax/xml/soap/MessageFactory;

.field private message:Ljavax/xml/soap/SOAPMessage;

.field private methodEle:Ljavax/xml/soap/SOAPBodyElement;

.field private final namespaceURI:Ljava/lang/String;

.field private final protocol:Lcn/hutool/http/webservice/SoapProtocol;

.field private readTimeout:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 141
    sget-object v0, Lcn/hutool/http/webservice/SoapProtocol;->SOAP_1_1:Lcn/hutool/http/webservice/SoapProtocol;

    invoke-direct {p0, p1, v0}, Lcn/hutool/http/webservice/SoapClient;-><init>(Ljava/lang/String;Lcn/hutool/http/webservice/SoapProtocol;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/hutool/http/webservice/SoapProtocol;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/http/webservice/SoapClient;-><init>(Ljava/lang/String;Lcn/hutool/http/webservice/SoapProtocol;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/hutool/http/webservice/SoapProtocol;Ljava/lang/String;)V
    .locals 1

    .line 162
    invoke-direct {p0}, Lcn/hutool/http/HttpBase;-><init>()V

    .line 72
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->getTimeout()I

    move-result v0

    iput v0, p0, Lcn/hutool/http/webservice/SoapClient;->connectionTimeout:I

    .line 76
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->getTimeout()I

    move-result v0

    iput v0, p0, Lcn/hutool/http/webservice/SoapClient;->readTimeout:I

    .line 163
    iput-object p1, p0, Lcn/hutool/http/webservice/SoapClient;->url:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcn/hutool/http/webservice/SoapClient;->namespaceURI:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcn/hutool/http/webservice/SoapClient;->protocol:Lcn/hutool/http/webservice/SoapProtocol;

    .line 166
    invoke-virtual {p0, p2}, Lcn/hutool/http/webservice/SoapClient;->init(Lcn/hutool/http/webservice/SoapProtocol;)Lcn/hutool/http/webservice/SoapClient;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcn/hutool/http/webservice/SoapClient;
    .locals 1

    .line 108
    new-instance v0, Lcn/hutool/http/webservice/SoapClient;

    invoke-direct {v0, p0}, Lcn/hutool/http/webservice/SoapClient;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lcn/hutool/http/webservice/SoapProtocol;)Lcn/hutool/http/webservice/SoapClient;
    .locals 1

    .line 119
    new-instance v0, Lcn/hutool/http/webservice/SoapClient;

    invoke-direct {v0, p0, p1}, Lcn/hutool/http/webservice/SoapClient;-><init>(Ljava/lang/String;Lcn/hutool/http/webservice/SoapProtocol;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lcn/hutool/http/webservice/SoapProtocol;Ljava/lang/String;)Lcn/hutool/http/webservice/SoapClient;
    .locals 1

    .line 132
    new-instance v0, Lcn/hutool/http/webservice/SoapClient;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/http/webservice/SoapClient;-><init>(Ljava/lang/String;Lcn/hutool/http/webservice/SoapProtocol;Ljava/lang/String;)V

    return-object v0
.end method

.method private getXmlContentType()Ljava/lang/String;
    .locals 4

    .line 605
    sget-object v0, Lcn/hutool/http/webservice/SoapClient$1;->$SwitchMap$cn$hutool$http$webservice$SoapProtocol:[I

    iget-object v1, p0, Lcn/hutool/http/webservice/SoapClient;->protocol:Lcn/hutool/http/webservice/SoapProtocol;

    invoke-virtual {v1}, Lcn/hutool/http/webservice/SoapProtocol;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 609
    iget-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/soap+xml;charset="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 611
    :cond_0
    new-instance v0, Lcn/hutool/http/webservice/SoapRuntimeException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/hutool/http/webservice/SoapClient;->protocol:Lcn/hutool/http/webservice/SoapProtocol;

    aput-object v3, v1, v2

    const-string v2, "Unsupported protocol: {}"

    invoke-direct {v0, v2, v1}, Lcn/hutool/http/webservice/SoapRuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 607
    :cond_1
    iget-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/xml;charset="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static setParam(Ljavax/xml/soap/SOAPElement;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljavax/xml/soap/SOAPElement;
    .locals 1

    .line 628
    :try_start_0
    invoke-static {p3}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-interface {p0, p1, p3}, Ljavax/xml/soap/SOAPElement;->addChildElement(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/soap/SOAPElement;

    move-result-object p1

    goto :goto_0

    .line 631
    :cond_0
    invoke-interface {p0, p1}, Ljavax/xml/soap/SOAPElement;->addChildElement(Ljava/lang/String;)Ljavax/xml/soap/SOAPElement;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/soap/SOAPException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz p2, :cond_3

    .line 638
    instance-of v0, p2, Ljavax/xml/soap/SOAPElement;

    if-eqz v0, :cond_1

    .line 641
    :try_start_1
    check-cast p2, Ljavax/xml/soap/SOAPElement;

    invoke-interface {p0, p2}, Ljavax/xml/soap/SOAPElement;->addChildElement(Ljavax/xml/soap/SOAPElement;)Ljavax/xml/soap/SOAPElement;
    :try_end_1
    .catch Ljavax/xml/soap/SOAPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 643
    new-instance p1, Lcn/hutool/http/webservice/SoapRuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/http/webservice/SoapRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 645
    :cond_1
    instance-of p0, p2, Ljava/util/Map;

    if-eqz p0, :cond_2

    .line 648
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 649
    check-cast p2, Ljava/util/Map$Entry;

    .line 650
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2, p3}, Lcn/hutool/http/webservice/SoapClient;->setParam(Ljavax/xml/soap/SOAPElement;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljavax/xml/soap/SOAPElement;

    goto :goto_1

    .line 654
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljavax/xml/soap/SOAPElement;->setValue(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object p1

    :catch_1
    move-exception p0

    .line 634
    new-instance p1, Lcn/hutool/http/webservice/SoapRuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/http/webservice/SoapRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public addSOAPHeader(Ljava/lang/String;)Ljavax/xml/soap/SOAPHeaderElement;
    .locals 1

    .line 285
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/hutool/http/webservice/SoapClient;->addSOAPHeader(Ljavax/xml/namespace/QName;)Ljavax/xml/soap/SOAPHeaderElement;

    move-result-object p1

    return-object p1
.end method

.method public addSOAPHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/soap/SOAPHeaderElement;
    .locals 0

    .line 297
    invoke-virtual {p0, p1}, Lcn/hutool/http/webservice/SoapClient;->addSOAPHeader(Ljava/lang/String;)Ljavax/xml/soap/SOAPHeaderElement;

    move-result-object p1

    .line 298
    invoke-interface {p1, p2}, Ljavax/xml/soap/SOAPHeaderElement;->setTextContent(Ljava/lang/String;)V

    return-object p1
.end method

.method public addSOAPHeader(Ljavax/xml/namespace/QName;)Ljavax/xml/soap/SOAPHeaderElement;
    .locals 1

    .line 312
    :try_start_0
    iget-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->message:Ljavax/xml/soap/SOAPMessage;

    invoke-virtual {v0}, Ljavax/xml/soap/SOAPMessage;->getSOAPHeader()Ljavax/xml/soap/SOAPHeader;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/xml/soap/SOAPHeader;->addHeaderElement(Ljavax/xml/namespace/QName;)Ljavax/xml/soap/SOAPHeaderElement;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/soap/SOAPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 314
    new-instance v0, Lcn/hutool/http/webservice/SoapRuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/http/webservice/SoapRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public addSOAPHeader(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljavax/xml/soap/SOAPHeaderElement;
    .locals 1

    .line 255
    invoke-virtual {p0, p1}, Lcn/hutool/http/webservice/SoapClient;->addSOAPHeader(Ljavax/xml/namespace/QName;)Ljavax/xml/soap/SOAPHeaderElement;

    move-result-object p1

    .line 257
    :try_start_0
    invoke-static {p3}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {p1, p3}, Ljavax/xml/soap/SOAPHeaderElement;->setRole(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    .line 261
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-interface {p1, p3}, Ljavax/xml/soap/SOAPHeaderElement;->setRelay(Z)V
    :try_end_0
    .catch Ljavax/xml/soap/SOAPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_1
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 268
    invoke-interface {p1, p2}, Ljavax/xml/soap/SOAPHeaderElement;->setActor(Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 271
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Ljavax/xml/soap/SOAPHeaderElement;->setMustUnderstand(Z)V

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    .line 264
    new-instance p2, Lcn/hutool/http/webservice/SoapRuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/http/webservice/SoapRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public charset(Ljava/nio/charset/Charset;)Lcn/hutool/http/webservice/SoapClient;
    .locals 2

    .line 221
    invoke-super {p0, p1}, Lcn/hutool/http/HttpBase;->charset(Ljava/nio/charset/Charset;)Ljava/lang/Object;

    .line 223
    :try_start_0
    iget-object p1, p0, Lcn/hutool/http/webservice/SoapClient;->message:Ljavax/xml/soap/SOAPMessage;

    const-string v0, "javax.xml.soap.character-set-encoding"

    invoke-virtual {p0}, Lcn/hutool/http/webservice/SoapClient;->charset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/xml/soap/SOAPMessage;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    iget-object p1, p0, Lcn/hutool/http/webservice/SoapClient;->message:Ljavax/xml/soap/SOAPMessage;

    const-string v0, "javax.xml.soap.write-xml-declaration"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Ljavax/xml/soap/SOAPMessage;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/soap/SOAPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public bridge synthetic charset(Ljava/nio/charset/Charset;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcn/hutool/http/webservice/SoapClient;->charset(Ljava/nio/charset/Charset;)Lcn/hutool/http/webservice/SoapClient;

    move-result-object p1

    return-object p1
.end method

.method public getMessage()Ljavax/xml/soap/SOAPMessage;
    .locals 1

    .line 466
    iget-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->message:Ljavax/xml/soap/SOAPMessage;

    return-object v0
.end method

.method public getMethodEle()Ljavax/xml/soap/SOAPBodyElement;
    .locals 1

    .line 456
    iget-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->methodEle:Ljavax/xml/soap/SOAPBodyElement;

    return-object v0
.end method

.method public getMsgStr(Z)Ljava/lang/String;
    .locals 2

    .line 476
    iget-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->message:Ljavax/xml/soap/SOAPMessage;

    iget-object v1, p0, Lcn/hutool/http/webservice/SoapClient;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, p1, v1}, Lcn/hutool/http/webservice/SoapUtil;->toString(Ljavax/xml/soap/SOAPMessage;ZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Lcn/hutool/http/webservice/SoapProtocol;)Lcn/hutool/http/webservice/SoapClient;
    .locals 1

    .line 178
    :try_start_0
    invoke-virtual {p1}, Lcn/hutool/http/webservice/SoapProtocol;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/xml/soap/MessageFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/soap/MessageFactory;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/http/webservice/SoapClient;->factory:Ljavax/xml/soap/MessageFactory;

    .line 180
    invoke-virtual {p1}, Ljavax/xml/soap/MessageFactory;->createMessage()Ljavax/xml/soap/SOAPMessage;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/http/webservice/SoapClient;->message:Ljavax/xml/soap/SOAPMessage;
    :try_end_0
    .catch Ljavax/xml/soap/SOAPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 182
    new-instance v0, Lcn/hutool/http/webservice/SoapRuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/http/webservice/SoapRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reset()Lcn/hutool/http/webservice/SoapClient;
    .locals 2

    .line 199
    :try_start_0
    iget-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->factory:Ljavax/xml/soap/MessageFactory;

    invoke-virtual {v0}, Ljavax/xml/soap/MessageFactory;->createMessage()Ljavax/xml/soap/SOAPMessage;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->message:Ljavax/xml/soap/SOAPMessage;
    :try_end_0
    .catch Ljavax/xml/soap/SOAPException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->methodEle:Ljavax/xml/soap/SOAPBodyElement;

    return-object p0

    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Lcn/hutool/http/webservice/SoapRuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/http/webservice/SoapRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public send()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 567
    invoke-virtual {p0, v0}, Lcn/hutool/http/webservice/SoapClient;->send(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public send(Z)Ljava/lang/String;
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcn/hutool/http/webservice/SoapClient;->sendForResponse()Lcn/hutool/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 578
    invoke-static {v0}, Lcn/hutool/core/util/XmlUtil;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public sendForMessage()Ljavax/xml/soap/SOAPMessage;
    .locals 6

    .line 545
    invoke-virtual {p0}, Lcn/hutool/http/webservice/SoapClient;->sendForResponse()Lcn/hutool/http/HttpResponse;

    move-result-object v0

    .line 546
    new-instance v1, Ljavax/xml/soap/MimeHeaders;

    invoke-direct {v1}, Ljavax/xml/soap/MimeHeaders;-><init>()V

    .line 547
    invoke-virtual {v0}, Lcn/hutool/http/HttpResponse;->headers()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 548
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 549
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcn/hutool/core/collection/CollUtil;->get(Ljava/util/Collection;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljavax/xml/soap/MimeHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcn/hutool/http/webservice/SoapClient;->factory:Ljavax/xml/soap/MessageFactory;

    invoke-virtual {v0}, Lcn/hutool/http/HttpResponse;->bodyStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljavax/xml/soap/MessageFactory;->createMessage(Ljavax/xml/soap/MimeHeaders;Ljava/io/InputStream;)Ljavax/xml/soap/SOAPMessage;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/soap/SOAPException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 555
    :goto_1
    :try_start_1
    new-instance v2, Lcn/hutool/http/webservice/SoapRuntimeException;

    invoke-direct {v2, v1}, Lcn/hutool/http/webservice/SoapRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    :goto_2
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 558
    throw v1
.end method

.method public sendForResponse()Lcn/hutool/http/HttpResponse;
    .locals 2

    .line 589
    iget-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->url:Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/http/HttpRequest;->post(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 590
    invoke-virtual {v0, v1}, Lcn/hutool/http/HttpRequest;->setFollowRedirects(Z)Lcn/hutool/http/HttpRequest;

    move-result-object v0

    iget v1, p0, Lcn/hutool/http/webservice/SoapClient;->connectionTimeout:I

    .line 591
    invoke-virtual {v0, v1}, Lcn/hutool/http/HttpRequest;->setConnectionTimeout(I)Lcn/hutool/http/HttpRequest;

    move-result-object v0

    iget v1, p0, Lcn/hutool/http/webservice/SoapClient;->readTimeout:I

    .line 592
    invoke-virtual {v0, v1}, Lcn/hutool/http/HttpRequest;->setReadTimeout(I)Lcn/hutool/http/HttpRequest;

    move-result-object v0

    .line 593
    invoke-direct {p0}, Lcn/hutool/http/webservice/SoapClient;->getXmlContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/hutool/http/HttpRequest;->contentType(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object v0

    .line 594
    invoke-virtual {p0}, Lcn/hutool/http/webservice/SoapClient;->headers()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/hutool/http/HttpRequest;->header(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/http/HttpRequest;

    const/4 v1, 0x0

    .line 595
    invoke-virtual {p0, v1}, Lcn/hutool/http/webservice/SoapClient;->getMsgStr(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/hutool/http/HttpRequest;->body(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Lcn/hutool/http/HttpRequest;->executeAsync()Lcn/hutool/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lcn/hutool/http/webservice/SoapClient;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcn/hutool/http/webservice/SoapClient;->charset(Ljava/nio/charset/Charset;)Lcn/hutool/http/webservice/SoapClient;

    move-result-object p1

    return-object p1
.end method

.method public setConnectionTimeout(I)Lcn/hutool/http/webservice/SoapClient;
    .locals 0

    .line 523
    iput p1, p0, Lcn/hutool/http/webservice/SoapClient;->connectionTimeout:I

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcn/hutool/http/webservice/SoapClient;
    .locals 2

    .line 359
    iget-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->namespaceURI:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcn/hutool/http/webservice/SoapClient;->setMethod(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/http/webservice/SoapClient;

    move-result-object p1

    return-object p1
.end method

.method public setMethod(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/http/webservice/SoapClient;
    .locals 3

    const/16 v0, 0x3a

    .line 372
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->split(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    .line 374
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 375
    new-instance p1, Ljavax/xml/namespace/QName;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, p2, v1, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p2, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 379
    :goto_0
    invoke-virtual {p0, p1}, Lcn/hutool/http/webservice/SoapClient;->setMethod(Ljavax/xml/namespace/QName;)Lcn/hutool/http/webservice/SoapClient;

    move-result-object p1

    return-object p1
.end method

.method public setMethod(Ljavax/xml/namespace/QName;)Lcn/hutool/http/webservice/SoapClient;
    .locals 1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->message:Ljavax/xml/soap/SOAPMessage;

    invoke-virtual {v0}, Ljavax/xml/soap/SOAPMessage;->getSOAPBody()Ljavax/xml/soap/SOAPBody;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/xml/soap/SOAPBody;->addBodyElement(Ljavax/xml/namespace/QName;)Ljavax/xml/soap/SOAPBodyElement;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/http/webservice/SoapClient;->methodEle:Ljavax/xml/soap/SOAPBodyElement;
    :try_end_0
    .catch Ljavax/xml/soap/SOAPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 392
    new-instance v0, Lcn/hutool/http/webservice/SoapRuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/http/webservice/SoapRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setMethod(Ljavax/xml/namespace/QName;Ljava/util/Map;Z)Lcn/hutool/http/webservice/SoapClient;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcn/hutool/http/webservice/SoapClient;"
        }
    .end annotation

    .line 340
    invoke-virtual {p0, p1}, Lcn/hutool/http/webservice/SoapClient;->setMethod(Ljavax/xml/namespace/QName;)Lcn/hutool/http/webservice/SoapClient;

    if-eqz p3, :cond_0

    .line 341
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 342
    :goto_0
    iget-object p3, p0, Lcn/hutool/http/webservice/SoapClient;->methodEle:Ljavax/xml/soap/SOAPBodyElement;

    .line 343
    invoke-static {p2}, Lcn/hutool/core/map/MapUtil;->wrap(Ljava/util/Map;)Lcn/hutool/core/map/MapWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcn/hutool/core/map/MapWrapper;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 344
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v1, v0, p1}, Lcn/hutool/http/webservice/SoapClient;->setParam(Ljavax/xml/soap/SOAPElement;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljavax/xml/soap/SOAPElement;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public setMethod(Ljavax/xml/soap/Name;Ljava/util/Map;Z)Lcn/hutool/http/webservice/SoapClient;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/soap/Name;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcn/hutool/http/webservice/SoapClient;"
        }
    .end annotation

    .line 328
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-interface {p1}, Ljavax/xml/soap/Name;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/soap/Name;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljavax/xml/soap/Name;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcn/hutool/http/webservice/SoapClient;->setMethod(Ljavax/xml/namespace/QName;Ljava/util/Map;Z)Lcn/hutool/http/webservice/SoapClient;

    move-result-object p1

    return-object p1
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/http/webservice/SoapClient;
    .locals 1

    const/4 v0, 0x1

    .line 406
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/http/webservice/SoapClient;->setParam(Ljava/lang/String;Ljava/lang/Object;Z)Lcn/hutool/http/webservice/SoapClient;

    move-result-object p1

    return-object p1
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/Object;Z)Lcn/hutool/http/webservice/SoapClient;
    .locals 1

    .line 418
    iget-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->methodEle:Ljavax/xml/soap/SOAPBodyElement;

    if-eqz p3, :cond_0

    invoke-interface {v0}, Ljavax/xml/soap/SOAPBodyElement;->getPrefix()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p1, p2, p3}, Lcn/hutool/http/webservice/SoapClient;->setParam(Ljavax/xml/soap/SOAPElement;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljavax/xml/soap/SOAPElement;

    return-object p0
.end method

.method public setParams(Ljava/util/Map;)Lcn/hutool/http/webservice/SoapClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/hutool/http/webservice/SoapClient;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 430
    invoke-virtual {p0, p1, v0}, Lcn/hutool/http/webservice/SoapClient;->setParams(Ljava/util/Map;Z)Lcn/hutool/http/webservice/SoapClient;

    move-result-object p1

    return-object p1
.end method

.method public setParams(Ljava/util/Map;Z)Lcn/hutool/http/webservice/SoapClient;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcn/hutool/http/webservice/SoapClient;"
        }
    .end annotation

    .line 442
    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->wrap(Ljava/util/Map;)Lcn/hutool/core/map/MapWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/map/MapWrapper;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 443
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lcn/hutool/http/webservice/SoapClient;->setParam(Ljava/lang/String;Ljava/lang/Object;Z)Lcn/hutool/http/webservice/SoapClient;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setReadTimeout(I)Lcn/hutool/http/webservice/SoapClient;
    .locals 0

    .line 535
    iput p1, p0, Lcn/hutool/http/webservice/SoapClient;->readTimeout:I

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcn/hutool/http/webservice/SoapClient;
    .locals 0

    .line 239
    iput-object p1, p0, Lcn/hutool/http/webservice/SoapClient;->url:Ljava/lang/String;

    return-object p0
.end method

.method public timeout(I)Lcn/hutool/http/webservice/SoapClient;
    .locals 0

    .line 510
    invoke-virtual {p0, p1}, Lcn/hutool/http/webservice/SoapClient;->setConnectionTimeout(I)Lcn/hutool/http/webservice/SoapClient;

    .line 511
    invoke-virtual {p0, p1}, Lcn/hutool/http/webservice/SoapClient;->setReadTimeout(I)Lcn/hutool/http/webservice/SoapClient;

    return-object p0
.end method

.method public write(Ljava/io/OutputStream;)Lcn/hutool/http/webservice/SoapClient;
    .locals 1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcn/hutool/http/webservice/SoapClient;->message:Ljavax/xml/soap/SOAPMessage;

    invoke-virtual {v0, p1}, Ljavax/xml/soap/SOAPMessage;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/xml/soap/SOAPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 490
    :goto_0
    new-instance v0, Lcn/hutool/http/webservice/SoapRuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/http/webservice/SoapRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
