.class public final enum Lcn/hutool/http/Header;
.super Ljava/lang/Enum;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/http/Header;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/http/Header;

.field public static final enum ACCEPT:Lcn/hutool/http/Header;

.field public static final enum ACCEPT_CHARSET:Lcn/hutool/http/Header;

.field public static final enum ACCEPT_ENCODING:Lcn/hutool/http/Header;

.field public static final enum ACCEPT_LANGUAGE:Lcn/hutool/http/Header;

.field public static final enum AUTHORIZATION:Lcn/hutool/http/Header;

.field public static final enum CACHE_CONTROL:Lcn/hutool/http/Header;

.field public static final enum CONNECTION:Lcn/hutool/http/Header;

.field public static final enum CONTENT_DISPOSITION:Lcn/hutool/http/Header;

.field public static final enum CONTENT_ENCODING:Lcn/hutool/http/Header;

.field public static final enum CONTENT_LENGTH:Lcn/hutool/http/Header;

.field public static final enum CONTENT_TYPE:Lcn/hutool/http/Header;

.field public static final enum COOKIE:Lcn/hutool/http/Header;

.field public static final enum DATE:Lcn/hutool/http/Header;

.field public static final enum ETAG:Lcn/hutool/http/Header;

.field public static final enum HOST:Lcn/hutool/http/Header;

.field public static final enum LOCATION:Lcn/hutool/http/Header;

.field public static final enum MIME_VERSION:Lcn/hutool/http/Header;

.field public static final enum ORIGIN:Lcn/hutool/http/Header;

.field public static final enum PRAGMA:Lcn/hutool/http/Header;

.field public static final enum PROXY_AUTHORIZATION:Lcn/hutool/http/Header;

.field public static final enum REFERER:Lcn/hutool/http/Header;

.field public static final enum SET_COOKIE:Lcn/hutool/http/Header;

.field public static final enum TRAILER:Lcn/hutool/http/Header;

.field public static final enum TRANSFER_ENCODING:Lcn/hutool/http/Header;

.field public static final enum UPGRADE:Lcn/hutool/http/Header;

.field public static final enum USER_AGENT:Lcn/hutool/http/Header;

.field public static final enum VIA:Lcn/hutool/http/Header;

.field public static final enum WWW_AUTHENTICATE:Lcn/hutool/http/Header;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 17
    new-instance v0, Lcn/hutool/http/Header;

    const-string v1, "Authorization"

    const-string v2, "AUTHORIZATION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/hutool/http/Header;->AUTHORIZATION:Lcn/hutool/http/Header;

    .line 24
    new-instance v1, Lcn/hutool/http/Header;

    const-string v2, "Proxy-Authorization"

    const-string v4, "PROXY_AUTHORIZATION"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/hutool/http/Header;->PROXY_AUTHORIZATION:Lcn/hutool/http/Header;

    .line 28
    new-instance v2, Lcn/hutool/http/Header;

    const-string v4, "Date"

    const-string v6, "DATE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcn/hutool/http/Header;->DATE:Lcn/hutool/http/Header;

    .line 32
    new-instance v4, Lcn/hutool/http/Header;

    const-string v6, "Connection"

    const-string v8, "CONNECTION"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcn/hutool/http/Header;->CONNECTION:Lcn/hutool/http/Header;

    .line 36
    new-instance v6, Lcn/hutool/http/Header;

    const-string v8, "MIME-Version"

    const-string v10, "MIME_VERSION"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcn/hutool/http/Header;->MIME_VERSION:Lcn/hutool/http/Header;

    .line 40
    new-instance v8, Lcn/hutool/http/Header;

    const-string v10, "Trailer"

    const-string v12, "TRAILER"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcn/hutool/http/Header;->TRAILER:Lcn/hutool/http/Header;

    .line 44
    new-instance v10, Lcn/hutool/http/Header;

    const-string v12, "Transfer-Encoding"

    const-string v14, "TRANSFER_ENCODING"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcn/hutool/http/Header;->TRANSFER_ENCODING:Lcn/hutool/http/Header;

    .line 48
    new-instance v12, Lcn/hutool/http/Header;

    const-string v14, "Upgrade"

    const-string v15, "UPGRADE"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcn/hutool/http/Header;->UPGRADE:Lcn/hutool/http/Header;

    .line 52
    new-instance v14, Lcn/hutool/http/Header;

    const-string v15, "Via"

    const-string v13, "VIA"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcn/hutool/http/Header;->VIA:Lcn/hutool/http/Header;

    .line 56
    new-instance v13, Lcn/hutool/http/Header;

    const-string v15, "Cache-Control"

    const-string v11, "CACHE_CONTROL"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcn/hutool/http/Header;->CACHE_CONTROL:Lcn/hutool/http/Header;

    .line 60
    new-instance v11, Lcn/hutool/http/Header;

    const-string v15, "Pragma"

    const-string v9, "PRAGMA"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcn/hutool/http/Header;->PRAGMA:Lcn/hutool/http/Header;

    .line 64
    new-instance v9, Lcn/hutool/http/Header;

    const-string v15, "Content-Type"

    const-string v7, "CONTENT_TYPE"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcn/hutool/http/Header;->CONTENT_TYPE:Lcn/hutool/http/Header;

    .line 70
    new-instance v7, Lcn/hutool/http/Header;

    const-string v15, "Host"

    const-string v5, "HOST"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcn/hutool/http/Header;->HOST:Lcn/hutool/http/Header;

    .line 74
    new-instance v5, Lcn/hutool/http/Header;

    const-string v15, "Referer"

    const-string v3, "REFERER"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcn/hutool/http/Header;->REFERER:Lcn/hutool/http/Header;

    .line 78
    new-instance v3, Lcn/hutool/http/Header;

    const-string v15, "Origin"

    const-string v7, "ORIGIN"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/hutool/http/Header;->ORIGIN:Lcn/hutool/http/Header;

    .line 82
    new-instance v7, Lcn/hutool/http/Header;

    const-string v15, "User-Agent"

    const-string v5, "USER_AGENT"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcn/hutool/http/Header;->USER_AGENT:Lcn/hutool/http/Header;

    .line 86
    new-instance v5, Lcn/hutool/http/Header;

    const-string v15, "Accept"

    const-string v3, "ACCEPT"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcn/hutool/http/Header;->ACCEPT:Lcn/hutool/http/Header;

    .line 90
    new-instance v3, Lcn/hutool/http/Header;

    const-string v15, "Accept-Language"

    const-string v7, "ACCEPT_LANGUAGE"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/hutool/http/Header;->ACCEPT_LANGUAGE:Lcn/hutool/http/Header;

    .line 94
    new-instance v7, Lcn/hutool/http/Header;

    const-string v15, "Accept-Encoding"

    const-string v5, "ACCEPT_ENCODING"

    move-object/from16 v21, v3

    const/16 v3, 0x12

    invoke-direct {v7, v5, v3, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcn/hutool/http/Header;->ACCEPT_ENCODING:Lcn/hutool/http/Header;

    .line 98
    new-instance v5, Lcn/hutool/http/Header;

    const-string v15, "Accept-Charset"

    const-string v3, "ACCEPT_CHARSET"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v5, v3, v7, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcn/hutool/http/Header;->ACCEPT_CHARSET:Lcn/hutool/http/Header;

    .line 102
    new-instance v3, Lcn/hutool/http/Header;

    const-string v15, "Cookie"

    const-string v7, "COOKIE"

    move-object/from16 v23, v5

    const/16 v5, 0x14

    invoke-direct {v3, v7, v5, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/hutool/http/Header;->COOKIE:Lcn/hutool/http/Header;

    .line 106
    new-instance v7, Lcn/hutool/http/Header;

    const-string v15, "Content-Length"

    const-string v5, "CONTENT_LENGTH"

    move-object/from16 v24, v3

    const/16 v3, 0x15

    invoke-direct {v7, v5, v3, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcn/hutool/http/Header;->CONTENT_LENGTH:Lcn/hutool/http/Header;

    .line 112
    new-instance v5, Lcn/hutool/http/Header;

    const/16 v15, 0x16

    const-string v3, "WWW-Authenticate"

    move-object/from16 v25, v7

    const-string v7, "WWW_AUTHENTICATE"

    invoke-direct {v5, v7, v15, v3}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcn/hutool/http/Header;->WWW_AUTHENTICATE:Lcn/hutool/http/Header;

    .line 116
    new-instance v3, Lcn/hutool/http/Header;

    const/16 v7, 0x17

    const-string v15, "Set-Cookie"

    move-object/from16 v26, v5

    const-string v5, "SET_COOKIE"

    invoke-direct {v3, v5, v7, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/hutool/http/Header;->SET_COOKIE:Lcn/hutool/http/Header;

    .line 120
    new-instance v5, Lcn/hutool/http/Header;

    const/16 v7, 0x18

    const-string v15, "Content-Encoding"

    move-object/from16 v27, v3

    const-string v3, "CONTENT_ENCODING"

    invoke-direct {v5, v3, v7, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcn/hutool/http/Header;->CONTENT_ENCODING:Lcn/hutool/http/Header;

    .line 124
    new-instance v3, Lcn/hutool/http/Header;

    const/16 v7, 0x19

    const-string v15, "Content-Disposition"

    move-object/from16 v28, v5

    const-string v5, "CONTENT_DISPOSITION"

    invoke-direct {v3, v5, v7, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/hutool/http/Header;->CONTENT_DISPOSITION:Lcn/hutool/http/Header;

    .line 128
    new-instance v5, Lcn/hutool/http/Header;

    const/16 v7, 0x1a

    const-string v15, "ETag"

    move-object/from16 v29, v3

    const-string v3, "ETAG"

    invoke-direct {v5, v3, v7, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcn/hutool/http/Header;->ETAG:Lcn/hutool/http/Header;

    .line 132
    new-instance v3, Lcn/hutool/http/Header;

    const/16 v7, 0x1b

    const-string v15, "Location"

    move-object/from16 v30, v5

    const-string v5, "LOCATION"

    invoke-direct {v3, v5, v7, v15}, Lcn/hutool/http/Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/hutool/http/Header;->LOCATION:Lcn/hutool/http/Header;

    const/16 v5, 0x1c

    new-array v5, v5, [Lcn/hutool/http/Header;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    const/16 v0, 0x15

    aput-object v25, v5, v0

    const/16 v0, 0x16

    aput-object v26, v5, v0

    const/16 v0, 0x17

    aput-object v27, v5, v0

    const/16 v0, 0x18

    aput-object v28, v5, v0

    const/16 v0, 0x19

    aput-object v29, v5, v0

    const/16 v0, 0x1a

    aput-object v30, v5, v0

    const/16 v0, 0x1b

    aput-object v3, v5, v0

    .line 8
    sput-object v5, Lcn/hutool/http/Header;->$VALUES:[Lcn/hutool/http/Header;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput-object p3, p0, Lcn/hutool/http/Header;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/http/Header;
    .locals 1

    .line 8
    const-class v0, Lcn/hutool/http/Header;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/http/Header;

    return-object p0
.end method

.method public static values()[Lcn/hutool/http/Header;
    .locals 1

    .line 8
    sget-object v0, Lcn/hutool/http/Header;->$VALUES:[Lcn/hutool/http/Header;

    invoke-virtual {v0}, [Lcn/hutool/http/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/http/Header;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcn/hutool/http/Header;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcn/hutool/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
