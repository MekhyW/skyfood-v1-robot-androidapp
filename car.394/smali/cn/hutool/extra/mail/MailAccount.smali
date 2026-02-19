.class public Lcn/hutool/extra/mail/MailAccount;
.super Ljava/lang/Object;
.source "MailAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAIL_DEBUG:Ljava/lang/String; = "mail.debug"

.field private static final MAIL_PROTOCOL:Ljava/lang/String; = "mail.transport.protocol"

.field public static final MAIL_SETTING_PATHS:[Ljava/lang/String;

.field private static final SMTP_AUTH:Ljava/lang/String; = "mail.smtp.auth"

.field private static final SMTP_CONNECTION_TIMEOUT:Ljava/lang/String; = "mail.smtp.connectiontimeout"

.field private static final SMTP_HOST:Ljava/lang/String; = "mail.smtp.host"

.field private static final SMTP_PORT:Ljava/lang/String; = "mail.smtp.port"

.field private static final SMTP_TIMEOUT:Ljava/lang/String; = "mail.smtp.timeout"

.field private static final SMTP_WRITE_TIMEOUT:Ljava/lang/String; = "mail.smtp.writetimeout"

.field private static final SOCKET_FACTORY:Ljava/lang/String; = "mail.smtp.socketFactory.class"

.field private static final SOCKET_FACTORY_FALLBACK:Ljava/lang/String; = "mail.smtp.socketFactory.fallback"

.field private static final SOCKET_FACTORY_PORT:Ljava/lang/String; = "smtp.socketFactory.port"

.field private static final SPLIT_LONG_PARAMS:Ljava/lang/String; = "mail.mime.splitlongparameters"

.field private static final SSL_ENABLE:Ljava/lang/String; = "mail.smtp.ssl.enable"

.field private static final SSL_PROTOCOLS:Ljava/lang/String; = "mail.smtp.ssl.protocols"

.field private static final STARTTLS_ENABLE:Ljava/lang/String; = "mail.smtp.starttls.enable"

.field private static final serialVersionUID:J = -0x604649cd3ae02524L


# instance fields
.field private auth:Ljava/lang/Boolean;

.field private charset:Ljava/nio/charset/Charset;

.field private connectionTimeout:J

.field private final customProperty:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private debug:Z

.field private encodefilename:Z

.field private from:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private pass:Ljava/lang/String;

.field private port:Ljava/lang/Integer;

.field private socketFactoryClass:Ljava/lang/String;

.field private socketFactoryFallback:Z

.field private socketFactoryPort:I

.field private splitlongparameters:Z

.field private sslEnable:Ljava/lang/Boolean;

.field private sslProtocols:Ljava/lang/String;

.field private starttlsEnable:Z

.field private timeout:J

.field private user:Ljava/lang/String;

.field private writeTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "config/mailAccount.setting"

    const-string v1, "mail.setting"

    const-string v2, "config/mail.setting"

    .line 46
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/extra/mail/MailAccount;->MAIL_SETTING_PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->charset:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcn/hutool/extra/mail/MailAccount;->splitlongparameters:Z

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lcn/hutool/extra/mail/MailAccount;->encodefilename:Z

    .line 93
    iput-boolean v0, p0, Lcn/hutool/extra/mail/MailAccount;->starttlsEnable:Z

    const-string v0, "javax.net.ssl.SSLSocketFactory"

    .line 107
    iput-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryClass:Ljava/lang/String;

    const/16 v0, 0x1d1

    .line 115
    iput v0, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryPort:I

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->customProperty:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcn/hutool/setting/Setting;)V
    .locals 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->charset:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcn/hutool/extra/mail/MailAccount;->splitlongparameters:Z

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lcn/hutool/extra/mail/MailAccount;->encodefilename:Z

    .line 93
    iput-boolean v0, p0, Lcn/hutool/extra/mail/MailAccount;->starttlsEnable:Z

    const-string v0, "javax.net.ssl.SSLSocketFactory"

    .line 107
    iput-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryClass:Ljava/lang/String;

    const/16 v0, 0x1d1

    .line 115
    iput v0, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryPort:I

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->customProperty:Ljava/util/Map;

    .line 158
    invoke-virtual {p1, p0}, Lcn/hutool/setting/Setting;->toBean(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 149
    new-instance v0, Lcn/hutool/setting/Setting;

    invoke-direct {v0, p1}, Lcn/hutool/setting/Setting;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/hutool/extra/mail/MailAccount;-><init>(Lcn/hutool/setting/Setting;)V

    return-void
.end method


# virtual methods
.method public defaultIfEmpty()Lcn/hutool/extra/mail/MailAccount;
    .locals 5

    .line 625
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->from:Ljava/lang/String;

    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcn/hutool/extra/mail/InternalMailUtil;->parseFirstAddress(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->host:Ljava/lang/String;

    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const/16 v3, 0x40

    .line 629
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcn/hutool/core/util/StrUtil;->subSuf(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "smtp.{}"

    invoke-static {v3, v1}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->host:Ljava/lang/String;

    .line 631
    :cond_0
    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->user:Ljava/lang/String;

    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 634
    iput-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->user:Ljava/lang/String;

    .line 636
    :cond_1
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->auth:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 638
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->pass:Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->auth:Ljava/lang/Boolean;

    .line 640
    :cond_2
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->port:Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 642
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->sslEnable:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryPort:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x19

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->port:Ljava/lang/Integer;

    .line 644
    :cond_4
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_5

    .line 646
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->charset:Ljava/nio/charset/Charset;

    :cond_5
    return-object p0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 317
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getCustomProperty()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->customProperty:Ljava/util/Map;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPass()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->pass:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/Integer;
    .locals 1

    .line 189
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->port:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSmtpProps()Ljava/util/Properties;
    .locals 6

    .line 570
    iget-boolean v0, p0, Lcn/hutool/extra/mail/MailAccount;->splitlongparameters:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mail.mime.splitlongparameters"

    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 572
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "mail.transport.protocol"

    const-string v2, "smtp"

    .line 573
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.host"

    .line 574
    iget-object v2, p0, Lcn/hutool/extra/mail/MailAccount;->host:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->port:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mail.smtp.port"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->auth:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mail.smtp.auth"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-wide v1, p0, Lcn/hutool/extra/mail/MailAccount;->timeout:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string v5, "mail.smtp.timeout"

    .line 578
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_0
    iget-wide v1, p0, Lcn/hutool/extra/mail/MailAccount;->connectionTimeout:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const-string v5, "mail.smtp.connectiontimeout"

    .line 581
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_1
    iget-wide v1, p0, Lcn/hutool/extra/mail/MailAccount;->writeTimeout:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    const-string v3, "mail.smtp.writetimeout"

    .line 585
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :cond_2
    iget-boolean v1, p0, Lcn/hutool/extra/mail/MailAccount;->debug:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mail.debug"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget-boolean v1, p0, Lcn/hutool/extra/mail/MailAccount;->starttlsEnable:Z

    const-string v2, "true"

    if-eqz v1, :cond_3

    const-string v1, "mail.smtp.starttls.enable"

    .line 592
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->sslEnable:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 596
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->sslEnable:Ljava/lang/Boolean;

    .line 601
    :cond_3
    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->sslEnable:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "mail.smtp.ssl.enable"

    .line 602
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.socketFactory.class"

    .line 603
    iget-object v2, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-boolean v1, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryFallback:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mail.smtp.socketFactory.fallback"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget v1, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryPort:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "smtp.socketFactory.port"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->sslProtocols:Ljava/lang/String;

    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "mail.smtp.ssl.protocols"

    .line 608
    iget-object v2, p0, Lcn/hutool/extra/mail/MailAccount;->sslProtocols:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_4
    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->customProperty:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public getSocketFactoryClass()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryClass:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketFactoryPort()I
    .locals 1

    .line 488
    iget v0, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryPort:I

    return v0
.end method

.method public getSslProtocols()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->sslProtocols:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->user:Ljava/lang/String;

    return-object v0
.end method

.method public isAuth()Ljava/lang/Boolean;
    .locals 1

    .line 209
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->auth:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcn/hutool/extra/mail/MailAccount;->debug:Z

    return v0
.end method

.method public isEncodefilename()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcn/hutool/extra/mail/MailAccount;->encodefilename:Z

    return v0
.end method

.method public isSocketFactoryFallback()Z
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryFallback:Z

    return v0
.end method

.method public isSplitlongparameters()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcn/hutool/extra/mail/MailAccount;->splitlongparameters:Z

    return v0
.end method

.method public isSslEnable()Ljava/lang/Boolean;
    .locals 1

    .line 408
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->sslEnable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isStarttlsEnable()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcn/hutool/extra/mail/MailAccount;->starttlsEnable:Z

    return v0
.end method

.method public setAuth(Z)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 219
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/extra/mail/MailAccount;->auth:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 330
    iput-object p1, p0, Lcn/hutool/extra/mail/MailAccount;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setConnectionTimeout(J)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 522
    iput-wide p1, p0, Lcn/hutool/extra/mail/MailAccount;->connectionTimeout:J

    return-object p0
.end method

.method public setCustomProperty(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/extra/mail/MailAccount;
    .locals 1

    .line 557
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcn/hutool/extra/mail/MailAccount;->customProperty:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setDebug(Z)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 307
    iput-boolean p1, p0, Lcn/hutool/extra/mail/MailAccount;->debug:Z

    return-object p0
.end method

.method public setEncodefilename(Z)V
    .locals 0

    .line 379
    iput-boolean p1, p0, Lcn/hutool/extra/mail/MailAccount;->encodefilename:Z

    return-void
.end method

.method public setFrom(Ljava/lang/String;)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 285
    iput-object p1, p0, Lcn/hutool/extra/mail/MailAccount;->from:Ljava/lang/String;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 179
    iput-object p1, p0, Lcn/hutool/extra/mail/MailAccount;->host:Ljava/lang/String;

    return-object p0
.end method

.method public setPass(Ljava/lang/String;)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 259
    iput-object p1, p0, Lcn/hutool/extra/mail/MailAccount;->pass:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(Ljava/lang/Integer;)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 199
    iput-object p1, p0, Lcn/hutool/extra/mail/MailAccount;->port:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSocketFactoryClass(Ljava/lang/String;)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 458
    iput-object p1, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryClass:Ljava/lang/String;

    return-object p0
.end method

.method public setSocketFactoryFallback(Z)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 478
    iput-boolean p1, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryFallback:Z

    return-object p0
.end method

.method public setSocketFactoryPort(I)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 498
    iput p1, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryPort:I

    return-object p0
.end method

.method public setSplitlongparameters(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lcn/hutool/extra/mail/MailAccount;->splitlongparameters:Z

    return-void
.end method

.method public setSslEnable(Ljava/lang/Boolean;)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 418
    iput-object p1, p0, Lcn/hutool/extra/mail/MailAccount;->sslEnable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSslProtocols(Ljava/lang/String;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcn/hutool/extra/mail/MailAccount;->sslProtocols:Ljava/lang/String;

    return-void
.end method

.method public setStarttlsEnable(Z)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 398
    iput-boolean p1, p0, Lcn/hutool/extra/mail/MailAccount;->starttlsEnable:Z

    return-object p0
.end method

.method public setTimeout(J)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 510
    iput-wide p1, p0, Lcn/hutool/extra/mail/MailAccount;->timeout:J

    return-object p0
.end method

.method public setUser(Ljava/lang/String;)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 239
    iput-object p1, p0, Lcn/hutool/extra/mail/MailAccount;->user:Ljava/lang/String;

    return-object p0
.end method

.method public setWriteTimeout(J)Lcn/hutool/extra/mail/MailAccount;
    .locals 0

    .line 534
    iput-wide p1, p0, Lcn/hutool/extra/mail/MailAccount;->writeTimeout:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MailAccount [host="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->port:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->auth:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->pass:Ljava/lang/String;

    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "******"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startttlsEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/hutool/extra/mail/MailAccount;->starttlsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", socketFactoryClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", socketFactoryFallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryFallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", socketFactoryPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/hutool/extra/mail/MailAccount;->socketFactoryPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
