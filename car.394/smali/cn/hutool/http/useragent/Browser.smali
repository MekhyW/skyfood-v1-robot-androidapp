.class public Lcn/hutool/http/useragent/Browser;
.super Lcn/hutool/http/useragent/UserAgentInfo;
.source "Browser.java"


# static fields
.field public static final Other_Version:Ljava/lang/String; = "[\\/ ]([\\d\\w\\.\\-]+)"

.field public static final Unknown:Lcn/hutool/http/useragent/Browser;

.field public static final browers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/hutool/http/useragent/Browser;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private versionPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lcn/hutool/http/useragent/Browser;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/hutool/http/useragent/Browser;->Unknown:Lcn/hutool/http/useragent/Browser;

    const/16 v0, 0x23

    new-array v0, v0, [Lcn/hutool/http/useragent/Browser;

    .line 30
    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "wxwork"

    const-string v3, "wxwork\\/([\\d\\w\\.\\-]+)"

    invoke-direct {v1, v2, v2, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "MicroMessenger"

    const-string v3, "[\\/ ]([\\d\\w\\.\\-]+)"

    invoke-direct {v1, v2, v2, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "miniProgram"

    invoke-direct {v1, v2, v2, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "MQQBrowser"

    const-string v4, "MQQBrowser\\/([\\d\\w\\.\\-]+)"

    const-string v5, "QQBrowser"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "dingtalk-win"

    const-string v4, "DingTalk\\(([\\d\\w\\.\\-]+)\\)"

    const-string v5, "DingTalk-win"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "DingTalk"

    const-string v4, "AliApp\\(DingTalk\\/([\\d\\w\\.\\-]+)\\)"

    invoke-direct {v1, v2, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "AlipayClient"

    const-string v4, "AliApp\\(AP\\/([\\d\\w\\.\\-]+)\\)"

    const-string v5, "Alipay"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "taobao"

    const-string v4, "AliApp\\(TB\\/([\\d\\w\\.\\-]+)\\)"

    const-string v5, "Taobao"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "UC?Browser"

    const-string v4, "UC?Browser\\/([\\d\\w\\.\\-]+)"

    const-string v5, "UCBrowser"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "MiuiBrowser|mibrowser"

    const-string v4, "MiuiBrowser\\/([\\d\\w\\.\\-]+)"

    const-string v5, "MiuiBrowser"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Quark"

    invoke-direct {v1, v2, v2, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "SLBrowser"

    const-string v4, "SLBrowser/([\\d\\w\\.\\-]+)"

    const-string v5, "Lenovo"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Edge|Edg"

    const-string v4, "(?:edge|Edg|EdgA)\\/([\\d\\w\\.\\-]+)"

    const-string v5, "MSEdge"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Chrome"

    const-string v4, "chrome"

    invoke-direct {v1, v2, v4, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Firefox"

    const-string v4, "firefox"

    invoke-direct {v1, v2, v4, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "IEMobile"

    const-string v4, "iemobile"

    invoke-direct {v1, v2, v4, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Android Browser"

    const-string v4, "android"

    const-string v5, "version\\/([\\d\\w\\.\\-]+)"

    invoke-direct {v1, v2, v4, v5}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Safari"

    const-string v4, "safari"

    invoke-direct {v1, v2, v4, v5}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Opera"

    const-string v4, "opera"

    invoke-direct {v1, v2, v4, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Konqueror"

    const-string v4, "konqueror"

    invoke-direct {v1, v2, v4, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "playstation 3"

    const-string v4, "([\\d\\w\\.\\-]+)\\)\\s*$"

    const-string v5, "PS3"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "playstation portable"

    const-string v4, "([\\d\\w\\.\\-]+)\\)?\\s*$"

    const-string v5, "PSP"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "lotus.notes"

    const-string v4, "Lotus-Notes\\/([\\w.]+)"

    const-string v5, "Lotus"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Thunderbird"

    const-string v4, "thunderbird"

    invoke-direct {v1, v2, v4, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Netscape"

    const-string v4, "netscape"

    invoke-direct {v1, v2, v4, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Seamonkey"

    const-string v4, "seamonkey"

    invoke-direct {v1, v2, v4, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Outlook"

    const-string v4, "microsoft.outlook"

    invoke-direct {v1, v2, v4, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Evolution"

    const-string v4, "evolution"

    invoke-direct {v1, v2, v4, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "msie"

    const-string v4, "msie ([\\d\\w\\.\\-]+)"

    const-string v5, "MSIE"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "rv:11"

    const-string v4, "rv:([\\d\\w\\.\\-]+)"

    const-string v5, "MSIE11"

    invoke-direct {v1, v5, v2, v4}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Gabble"

    invoke-direct {v1, v2, v2, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "AdobeAir"

    const-string v3, "([\\d\\w\\.\\-]+)\\/Yammer"

    const-string v4, "Yammer Desktop"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Yammer Mobile"

    const-string v3, "Yammer[\\s]+([\\d\\w\\.\\-]+)"

    invoke-direct {v1, v2, v3, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "Apache\\\\-HttpClient"

    const-string v3, "Apache\\-HttpClient\\/([\\d\\w\\.\\-]+)"

    const-string v4, "Apache HTTP Client"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Browser;

    const-string v2, "BlackBerry"

    const-string v3, "BlackBerry[\\d]+\\/([\\d\\w\\.\\-]+)"

    invoke-direct {v1, v2, v2, v3}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcn/hutool/http/useragent/Browser;->browers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcn/hutool/http/useragent/UserAgentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "[\\/ ]([\\d\\w\\.\\-]+)"

    .line 104
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x2

    .line 108
    invoke-static {p3, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/http/useragent/Browser;->versionPattern:Ljava/util/regex/Pattern;

    :cond_1
    return-void
.end method

.method public static declared-synchronized addCustomBrowser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcn/hutool/http/useragent/Browser;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcn/hutool/http/useragent/Browser;->browers:Ljava/util/List;

    new-instance v2, Lcn/hutool/http/useragent/Browser;

    invoke-direct {v2, p0, p1, p2}, Lcn/hutool/http/useragent/Browser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcn/hutool/http/useragent/Browser;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_0
    iget-object v0, p0, Lcn/hutool/http/useragent/Browser;->versionPattern:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcn/hutool/core/util/ReUtil;->getGroup1(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isMobile()Z
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcn/hutool/http/useragent/Browser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PSP"

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Yammer Mobile"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Android Browser"

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "IEMobile"

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MicroMessenger"

    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "miniProgram"

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DingTalk"

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
