.class public Lcn/hutool/http/useragent/Platform;
.super Lcn/hutool/http/useragent/UserAgentInfo;
.source "Platform.java"


# static fields
.field public static final ANDROID:Lcn/hutool/http/useragent/Platform;

.field public static final GOOGLE_TV:Lcn/hutool/http/useragent/Platform;

.field public static final IPAD:Lcn/hutool/http/useragent/Platform;

.field public static final IPHONE:Lcn/hutool/http/useragent/Platform;

.field public static final IPOD:Lcn/hutool/http/useragent/Platform;

.field public static final Unknown:Lcn/hutool/http/useragent/Platform;

.field public static final WINDOWS_PHONE:Lcn/hutool/http/useragent/Platform;

.field public static final desktopPlatforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/hutool/http/useragent/Platform;",
            ">;"
        }
    .end annotation
.end field

.field public static final mobilePlatforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/hutool/http/useragent/Platform;",
            ">;"
        }
    .end annotation
.end field

.field public static final platforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/hutool/http/useragent/Platform;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 20
    new-instance v0, Lcn/hutool/http/useragent/Platform;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/hutool/http/useragent/Platform;->Unknown:Lcn/hutool/http/useragent/Platform;

    .line 25
    new-instance v0, Lcn/hutool/http/useragent/Platform;

    const-string v1, "iPhone"

    const-string v2, "iphone"

    invoke-direct {v0, v1, v2}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/hutool/http/useragent/Platform;->IPHONE:Lcn/hutool/http/useragent/Platform;

    .line 29
    new-instance v1, Lcn/hutool/http/useragent/Platform;

    const-string v2, "iPod"

    const-string v3, "ipod"

    invoke-direct {v1, v2, v3}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/hutool/http/useragent/Platform;->IPOD:Lcn/hutool/http/useragent/Platform;

    .line 33
    new-instance v2, Lcn/hutool/http/useragent/Platform;

    const-string v3, "iPad"

    const-string v4, "ipad"

    invoke-direct {v2, v3, v4}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcn/hutool/http/useragent/Platform;->IPAD:Lcn/hutool/http/useragent/Platform;

    .line 38
    new-instance v3, Lcn/hutool/http/useragent/Platform;

    const-string v4, "android"

    const-string v5, "Android"

    invoke-direct {v3, v5, v4}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcn/hutool/http/useragent/Platform;->ANDROID:Lcn/hutool/http/useragent/Platform;

    .line 42
    new-instance v4, Lcn/hutool/http/useragent/Platform;

    const-string v6, "GoogleTV"

    const-string v7, "googletv"

    invoke-direct {v4, v6, v7}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcn/hutool/http/useragent/Platform;->GOOGLE_TV:Lcn/hutool/http/useragent/Platform;

    .line 47
    new-instance v6, Lcn/hutool/http/useragent/Platform;

    const-string v7, "Windows Phone"

    const-string v8, "windows (ce|phone|mobile)( os)?"

    invoke-direct {v6, v7, v8}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcn/hutool/http/useragent/Platform;->WINDOWS_PHONE:Lcn/hutool/http/useragent/Platform;

    const/16 v7, 0xa

    new-array v7, v7, [Lcn/hutool/http/useragent/Platform;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v2, v7, v6

    const/4 v2, 0x2

    aput-object v1, v7, v2

    const/4 v1, 0x3

    aput-object v0, v7, v1

    .line 52
    new-instance v0, Lcn/hutool/http/useragent/Platform;

    const-string v9, "XiaoMi|MI\\s+"

    invoke-direct {v0, v5, v9}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v0, v7, v5

    const/4 v0, 0x5

    aput-object v3, v7, v0

    const/4 v3, 0x6

    aput-object v4, v7, v3

    new-instance v4, Lcn/hutool/http/useragent/Platform;

    const-string v9, "htcFlyer"

    const-string v10, "htc_flyer"

    invoke-direct {v4, v9, v10}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x7

    aput-object v4, v7, v9

    new-instance v4, Lcn/hutool/http/useragent/Platform;

    const-string v9, "Symbian"

    const-string v10, "symbian(os)?"

    invoke-direct {v4, v9, v10}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x8

    aput-object v4, v7, v9

    new-instance v4, Lcn/hutool/http/useragent/Platform;

    const-string v9, "Blackberry"

    const-string v10, "blackberry"

    invoke-direct {v4, v9, v10}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x9

    aput-object v4, v7, v9

    invoke-static {v7}, Lcn/hutool/core/collection/CollUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    sput-object v4, Lcn/hutool/http/useragent/Platform;->mobilePlatforms:Ljava/util/List;

    new-array v3, v3, [Lcn/hutool/http/useragent/Platform;

    .line 68
    new-instance v7, Lcn/hutool/http/useragent/Platform;

    const-string v9, "Windows"

    const-string v10, "windows"

    invoke-direct {v7, v9, v10}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v8

    new-instance v7, Lcn/hutool/http/useragent/Platform;

    const-string v8, "Mac"

    const-string v9, "(macintosh|darwin)"

    invoke-direct {v7, v8, v9}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    new-instance v6, Lcn/hutool/http/useragent/Platform;

    const-string v7, "Linux"

    const-string v8, "linux"

    invoke-direct {v6, v7, v8}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v2

    new-instance v2, Lcn/hutool/http/useragent/Platform;

    const-string v6, "Wii"

    const-string v7, "wii"

    invoke-direct {v2, v6, v7}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v3, v1

    new-instance v1, Lcn/hutool/http/useragent/Platform;

    const-string v2, "Playstation"

    const-string v6, "playstation"

    invoke-direct {v1, v2, v6}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v3, v5

    new-instance v1, Lcn/hutool/http/useragent/Platform;

    const-string v2, "Java"

    const-string v5, "java"

    invoke-direct {v1, v2, v5}, Lcn/hutool/http/useragent/Platform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v3, v0

    invoke-static {v3}, Lcn/hutool/core/collection/CollUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcn/hutool/http/useragent/Platform;->desktopPlatforms:Ljava/util/List;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcn/hutool/http/useragent/Platform;->platforms:Ljava/util/List;

    .line 84
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcn/hutool/http/useragent/UserAgentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isAndroid()Z
    .locals 1

    .line 144
    sget-object v0, Lcn/hutool/http/useragent/Platform;->ANDROID:Lcn/hutool/http/useragent/Platform;

    invoke-virtual {p0, v0}, Lcn/hutool/http/useragent/Platform;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/hutool/http/useragent/Platform;->GOOGLE_TV:Lcn/hutool/http/useragent/Platform;

    invoke-virtual {p0, v0}, Lcn/hutool/http/useragent/Platform;->equals(Ljava/lang/Object;)Z

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

.method public isIPad()Z
    .locals 1

    .line 124
    sget-object v0, Lcn/hutool/http/useragent/Platform;->IPAD:Lcn/hutool/http/useragent/Platform;

    invoke-virtual {p0, v0}, Lcn/hutool/http/useragent/Platform;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isIPhoneOrIPod()Z
    .locals 1

    .line 114
    sget-object v0, Lcn/hutool/http/useragent/Platform;->IPHONE:Lcn/hutool/http/useragent/Platform;

    invoke-virtual {p0, v0}, Lcn/hutool/http/useragent/Platform;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/hutool/http/useragent/Platform;->IPOD:Lcn/hutool/http/useragent/Platform;

    invoke-virtual {p0, v0}, Lcn/hutool/http/useragent/Platform;->equals(Ljava/lang/Object;)Z

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

.method public isIos()Z
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcn/hutool/http/useragent/Platform;->isIPhoneOrIPod()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/hutool/http/useragent/Platform;->isIPad()Z

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

.method public isMobile()Z
    .locals 1

    .line 104
    sget-object v0, Lcn/hutool/http/useragent/Platform;->mobilePlatforms:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
