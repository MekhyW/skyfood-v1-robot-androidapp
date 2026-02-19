.class public Lcn/hutool/http/useragent/UserAgentParser;
.super Ljava/lang/Object;
.source "UserAgentParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/hutool/http/useragent/UserAgent;
    .locals 3

    .line 20
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lcn/hutool/http/useragent/UserAgent;

    invoke-direct {v0}, Lcn/hutool/http/useragent/UserAgent;-><init>()V

    .line 26
    invoke-static {p0}, Lcn/hutool/http/useragent/UserAgentParser;->parseBrowser(Ljava/lang/String;)Lcn/hutool/http/useragent/Browser;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcn/hutool/http/useragent/UserAgent;->setBrowser(Lcn/hutool/http/useragent/Browser;)V

    .line 28
    invoke-virtual {v1, p0}, Lcn/hutool/http/useragent/Browser;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/hutool/http/useragent/UserAgent;->setVersion(Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lcn/hutool/http/useragent/UserAgentParser;->parseEngine(Ljava/lang/String;)Lcn/hutool/http/useragent/Engine;

    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Lcn/hutool/http/useragent/UserAgent;->setEngine(Lcn/hutool/http/useragent/Engine;)V

    .line 33
    invoke-virtual {v2, p0}, Lcn/hutool/http/useragent/Engine;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/hutool/http/useragent/UserAgent;->setEngineVersion(Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lcn/hutool/http/useragent/UserAgentParser;->parseOS(Ljava/lang/String;)Lcn/hutool/http/useragent/OS;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcn/hutool/http/useragent/UserAgent;->setOs(Lcn/hutool/http/useragent/OS;)V

    .line 38
    invoke-virtual {v2, p0}, Lcn/hutool/http/useragent/OS;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/hutool/http/useragent/UserAgent;->setOsVersion(Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lcn/hutool/http/useragent/UserAgentParser;->parsePlatform(Ljava/lang/String;)Lcn/hutool/http/useragent/Platform;

    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Lcn/hutool/http/useragent/UserAgent;->setPlatform(Lcn/hutool/http/useragent/Platform;)V

    .line 43
    invoke-virtual {p0}, Lcn/hutool/http/useragent/Platform;->isMobile()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v1}, Lcn/hutool/http/useragent/Browser;->isMobile()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Lcn/hutool/http/useragent/UserAgent;->setMobile(Z)V

    return-object v0
.end method

.method private static parseBrowser(Ljava/lang/String;)Lcn/hutool/http/useragent/Browser;
    .locals 3

    .line 56
    sget-object v0, Lcn/hutool/http/useragent/Browser;->browers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/hutool/http/useragent/Browser;

    .line 57
    invoke-virtual {v1, p0}, Lcn/hutool/http/useragent/Browser;->isMatch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 61
    :cond_1
    sget-object p0, Lcn/hutool/http/useragent/Browser;->Unknown:Lcn/hutool/http/useragent/Browser;

    return-object p0
.end method

.method private static parseEngine(Ljava/lang/String;)Lcn/hutool/http/useragent/Engine;
    .locals 3

    .line 71
    sget-object v0, Lcn/hutool/http/useragent/Engine;->engines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/hutool/http/useragent/Engine;

    .line 72
    invoke-virtual {v1, p0}, Lcn/hutool/http/useragent/Engine;->isMatch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 76
    :cond_1
    sget-object p0, Lcn/hutool/http/useragent/Engine;->Unknown:Lcn/hutool/http/useragent/Engine;

    return-object p0
.end method

.method private static parseOS(Ljava/lang/String;)Lcn/hutool/http/useragent/OS;
    .locals 3

    .line 86
    sget-object v0, Lcn/hutool/http/useragent/OS;->oses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/hutool/http/useragent/OS;

    .line 87
    invoke-virtual {v1, p0}, Lcn/hutool/http/useragent/OS;->isMatch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 91
    :cond_1
    sget-object p0, Lcn/hutool/http/useragent/OS;->Unknown:Lcn/hutool/http/useragent/OS;

    return-object p0
.end method

.method private static parsePlatform(Ljava/lang/String;)Lcn/hutool/http/useragent/Platform;
    .locals 3

    .line 101
    sget-object v0, Lcn/hutool/http/useragent/Platform;->platforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/hutool/http/useragent/Platform;

    .line 102
    invoke-virtual {v1, p0}, Lcn/hutool/http/useragent/Platform;->isMatch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 106
    :cond_1
    sget-object p0, Lcn/hutool/http/useragent/Platform;->Unknown:Lcn/hutool/http/useragent/Platform;

    return-object p0
.end method
