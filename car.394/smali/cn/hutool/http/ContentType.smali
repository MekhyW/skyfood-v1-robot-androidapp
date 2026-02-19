.class public final enum Lcn/hutool/http/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/http/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/http/ContentType;

.field public static final enum EVENT_STREAM:Lcn/hutool/http/ContentType;

.field public static final enum FORM_URLENCODED:Lcn/hutool/http/ContentType;

.field public static final enum JSON:Lcn/hutool/http/ContentType;

.field public static final enum MULTIPART:Lcn/hutool/http/ContentType;

.field public static final enum OCTET_STREAM:Lcn/hutool/http/ContentType;

.field public static final enum TEXT_HTML:Lcn/hutool/http/ContentType;

.field public static final enum TEXT_PLAIN:Lcn/hutool/http/ContentType;

.field public static final enum TEXT_XML:Lcn/hutool/http/ContentType;

.field public static final enum XML:Lcn/hutool/http/ContentType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Lcn/hutool/http/ContentType;

    const-string v1, "application/x-www-form-urlencoded"

    const-string v2, "FORM_URLENCODED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcn/hutool/http/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/hutool/http/ContentType;->FORM_URLENCODED:Lcn/hutool/http/ContentType;

    .line 22
    new-instance v1, Lcn/hutool/http/ContentType;

    const-string v2, "multipart/form-data"

    const-string v4, "MULTIPART"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcn/hutool/http/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/hutool/http/ContentType;->MULTIPART:Lcn/hutool/http/ContentType;

    .line 26
    new-instance v2, Lcn/hutool/http/ContentType;

    const-string v4, "application/json"

    const-string v6, "JSON"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcn/hutool/http/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcn/hutool/http/ContentType;->JSON:Lcn/hutool/http/ContentType;

    .line 30
    new-instance v4, Lcn/hutool/http/ContentType;

    const-string v6, "application/xml"

    const-string v8, "XML"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcn/hutool/http/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcn/hutool/http/ContentType;->XML:Lcn/hutool/http/ContentType;

    .line 34
    new-instance v6, Lcn/hutool/http/ContentType;

    const-string v8, "text/plain"

    const-string v10, "TEXT_PLAIN"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcn/hutool/http/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcn/hutool/http/ContentType;->TEXT_PLAIN:Lcn/hutool/http/ContentType;

    .line 38
    new-instance v8, Lcn/hutool/http/ContentType;

    const-string v10, "text/xml"

    const-string v12, "TEXT_XML"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcn/hutool/http/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcn/hutool/http/ContentType;->TEXT_XML:Lcn/hutool/http/ContentType;

    .line 42
    new-instance v10, Lcn/hutool/http/ContentType;

    const-string v12, "text/html"

    const-string v14, "TEXT_HTML"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcn/hutool/http/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcn/hutool/http/ContentType;->TEXT_HTML:Lcn/hutool/http/ContentType;

    .line 46
    new-instance v12, Lcn/hutool/http/ContentType;

    const-string v14, "application/octet-stream"

    const-string v15, "OCTET_STREAM"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcn/hutool/http/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcn/hutool/http/ContentType;->OCTET_STREAM:Lcn/hutool/http/ContentType;

    .line 50
    new-instance v14, Lcn/hutool/http/ContentType;

    const-string v15, "text/event-stream"

    const-string v13, "EVENT_STREAM"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcn/hutool/http/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcn/hutool/http/ContentType;->EVENT_STREAM:Lcn/hutool/http/ContentType;

    const/16 v13, 0x9

    new-array v13, v13, [Lcn/hutool/http/ContentType;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    .line 13
    sput-object v13, Lcn/hutool/http/ContentType;->$VALUES:[Lcn/hutool/http/ContentType;

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

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcn/hutool/http/ContentType;->value:Ljava/lang/String;

    return-void
.end method

.method public static build(Lcn/hutool/http/ContentType;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcn/hutool/http/ContentType;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/http/ContentType;->build(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 151
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "{};charset={}"

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lcn/hutool/http/ContentType;
    .locals 1

    .line 122
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    sget-object p0, Lcn/hutool/http/ContentType;->JSON:Lcn/hutool/http/ContentType;

    goto :goto_1

    .line 132
    :cond_1
    sget-object p0, Lcn/hutool/http/ContentType;->XML:Lcn/hutool/http/ContentType;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static isDefault(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 96
    invoke-static {p0}, Lcn/hutool/http/ContentType;->isFormUrlEncode(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isFormUrlEncode(Ljava/lang/String;)Z
    .locals 1

    .line 106
    sget-object v0, Lcn/hutool/http/ContentType;->FORM_URLENCODED:Lcn/hutool/http/ContentType;

    invoke-virtual {v0}, Lcn/hutool/http/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->startWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/http/ContentType;
    .locals 1

    .line 13
    const-class v0, Lcn/hutool/http/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/http/ContentType;

    return-object p0
.end method

.method public static values()[Lcn/hutool/http/ContentType;
    .locals 1

    .line 13
    sget-object v0, Lcn/hutool/http/ContentType;->$VALUES:[Lcn/hutool/http/ContentType;

    invoke-virtual {v0}, [Lcn/hutool/http/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/http/ContentType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/hutool/http/ContentType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcn/hutool/http/ContentType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/hutool/http/ContentType;->value:Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/hutool/http/ContentType;->build(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
