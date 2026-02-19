.class public Lcn/hutool/http/useragent/Engine;
.super Lcn/hutool/http/useragent/UserAgentInfo;
.source "Engine.java"


# static fields
.field public static final Unknown:Lcn/hutool/http/useragent/Engine;

.field public static final engines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/hutool/http/useragent/Engine;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final versionPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcn/hutool/http/useragent/Engine;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/http/useragent/Engine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/hutool/http/useragent/Engine;->Unknown:Lcn/hutool/http/useragent/Engine;

    const/16 v0, 0x9

    new-array v0, v0, [Lcn/hutool/http/useragent/Engine;

    .line 24
    new-instance v1, Lcn/hutool/http/useragent/Engine;

    const-string v2, "Trident"

    const-string v3, "trident"

    invoke-direct {v1, v2, v3}, Lcn/hutool/http/useragent/Engine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Engine;

    const-string v2, "Webkit"

    const-string v3, "webkit"

    invoke-direct {v1, v2, v3}, Lcn/hutool/http/useragent/Engine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Engine;

    const-string v2, "Chrome"

    const-string v3, "chrome"

    invoke-direct {v1, v2, v3}, Lcn/hutool/http/useragent/Engine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Engine;

    const-string v2, "Opera"

    const-string v3, "opera"

    invoke-direct {v1, v2, v3}, Lcn/hutool/http/useragent/Engine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Engine;

    const-string v2, "Presto"

    const-string v3, "presto"

    invoke-direct {v1, v2, v3}, Lcn/hutool/http/useragent/Engine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Engine;

    const-string v2, "Gecko"

    const-string v3, "gecko"

    invoke-direct {v1, v2, v3}, Lcn/hutool/http/useragent/Engine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Engine;

    const-string v2, "KHTML"

    const-string v3, "khtml"

    invoke-direct {v1, v2, v3}, Lcn/hutool/http/useragent/Engine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Engine;

    const-string v2, "Konqueror"

    const-string v3, "konqueror"

    invoke-direct {v1, v2, v3}, Lcn/hutool/http/useragent/Engine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/http/useragent/Engine;

    const-string v2, "MIDP"

    invoke-direct {v1, v2, v2}, Lcn/hutool/http/useragent/Engine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcn/hutool/http/useragent/Engine;->engines:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcn/hutool/http/useragent/UserAgentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "[/\\- ]([\\d\\w.\\-]+)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/http/useragent/Engine;->versionPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcn/hutool/http/useragent/Engine;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 60
    :cond_0
    iget-object v0, p0, Lcn/hutool/http/useragent/Engine;->versionPattern:Ljava/util/regex/Pattern;

    invoke-static {v0, p1}, Lcn/hutool/core/util/ReUtil;->getGroup1(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
