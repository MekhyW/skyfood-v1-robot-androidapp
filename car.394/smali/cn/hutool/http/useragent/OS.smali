.class public Lcn/hutool/http/useragent/OS;
.super Lcn/hutool/http/useragent/UserAgentInfo;
.source "OS.java"


# static fields
.field public static final Unknown:Lcn/hutool/http/useragent/OS;

.field public static final oses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/hutool/http/useragent/OS;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private versionPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcn/hutool/http/useragent/OS;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/hutool/http/useragent/OS;->Unknown:Lcn/hutool/http/useragent/OS;

    const/16 v0, 0x1a

    new-array v0, v0, [Lcn/hutool/http/useragent/OS;

    .line 26
    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "windows nt 10\\.0"

    const-string v3, "windows nt (10\\.0)"

    const-string v4, "Windows 10 or Windows Server 2016"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "windows nt 6\\.3"

    const-string v3, "windows nt (6\\.3)"

    const-string v4, "Windows 8.1 or Windows Server 2012R2"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "windows nt 6\\.2"

    const-string v3, "windows nt (6\\.2)"

    const-string v4, "Windows 8 or Windows Server 2012"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "windows nt 6\\.0"

    const-string v3, "windows nt (6\\.0)"

    const-string v4, "Windows Vista"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "windows nt 6\\.1"

    const-string v3, "windows nt (6\\.1)"

    const-string v4, "Windows 7 or Windows Server 2008R2"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "windows nt 5\\.2"

    const-string v3, "windows nt (5\\.2)"

    const-string v4, "Windows 2003"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "windows nt 5\\.1"

    const-string v3, "windows nt (5\\.1)"

    const-string v4, "Windows XP"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "windows nt 5\\.0"

    const-string v3, "windows nt (5\\.0)"

    const-string v4, "Windows 2000"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "windows (ce|phone|mobile)( os)?"

    const-string v3, "windows (?:ce|phone|mobile) (\\d+([._]\\d+)*)"

    const-string v4, "Windows Phone"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "Windows"

    const-string v3, "windows"

    invoke-direct {v1, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "os x (\\d+)[._](\\d+)"

    const-string v3, "os x (\\d+([._]\\d+)*)"

    const-string v4, "OSX"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "Android (\\d+([._]\\d+)*)"

    const-string v3, "Android"

    invoke-direct {v1, v3, v3, v2}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "XiaoMi|MI\\s+"

    const-string v4, "\\(X(\\d+([._]\\d+)*)"

    invoke-direct {v1, v3, v2, v4}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "Linux"

    const-string v3, "linux"

    invoke-direct {v1, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "wii"

    const-string v3, "wii libnup/(\\d+([._]\\d+)*)"

    const-string v4, "Wii"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "playstation 3"

    const-string v3, "playstation 3; (\\d+([._]\\d+)*)"

    const-string v4, "PS3"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "playstation portable"

    const-string v3, "Portable\\); (\\d+([._]\\d+)*)"

    const-string v4, "PSP"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "\\(iPad.*os (\\d+)[._](\\d+)"

    const-string v3, "\\(iPad.*os (\\d+([._]\\d+)*)"

    const-string v4, "iPad"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "\\(iPhone.*os (\\d+)[._](\\d+)"

    const-string v3, "\\(iPhone.*os (\\d+([._]\\d+)*)"

    const-string v4, "iPhone"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "iPod touch[\\s\\;]+iPhone.*os (\\d+)[._](\\d+)"

    const-string v3, "iPod touch[\\s\\;]+iPhone.*os (\\d+([._]\\d+)*)"

    const-string v4, "YPod"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "iPad[\\s\\;]+iPhone.*os (\\d+)[._](\\d+)"

    const-string v3, "iPad[\\s\\;]+iPhone.*os (\\d+([._]\\d+)*)"

    const-string v4, "YPad"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "iPhone[\\s\\;]+iPhone.*os (\\d+)[._](\\d+)"

    const-string v3, "iPhone[\\s\\;]+iPhone.*os (\\d+([._]\\d+)*)"

    const-string v4, "YPhone"

    invoke-direct {v1, v4, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "Symbian"

    const-string v3, "symbian(os)?"

    invoke-direct {v1, v2, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "Darwin"

    const-string v3, "Darwin\\/([\\d\\w\\.\\-]+)"

    invoke-direct {v1, v2, v3, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "Adobe Air"

    const-string v3, "AdobeAir\\/([\\d\\w\\.\\-]+)"

    invoke-direct {v1, v2, v3, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/OS;

    const-string v2, "Java"

    const-string v3, "Java[\\s]+([\\d\\w\\.\\-]+)"

    invoke-direct {v1, v2, v3, v3}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcn/hutool/http/useragent/OS;->oses:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcn/hutool/http/useragent/UserAgentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    .line 90
    invoke-static {p3, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/http/useragent/OS;->versionPattern:Ljava/util/regex/Pattern;

    :cond_0
    return-void
.end method

.method public static declared-synchronized addCustomOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcn/hutool/http/useragent/OS;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcn/hutool/http/useragent/OS;->oses:Ljava/util/List;

    new-instance v2, Lcn/hutool/http/useragent/OS;

    invoke-direct {v2, p0, p1, p2}, Lcn/hutool/http/useragent/OS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
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

    .line 101
    invoke-virtual {p0}, Lcn/hutool/http/useragent/OS;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/hutool/http/useragent/OS;->versionPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {v0, p1}, Lcn/hutool/core/util/ReUtil;->getGroup1(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
