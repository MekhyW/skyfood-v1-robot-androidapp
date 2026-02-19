.class public Lcn/hutool/core/net/RFC3986;
.super Ljava/lang/Object;
.source "RFC3986.java"


# static fields
.field public static final FRAGMENT:Lcn/hutool/core/codec/PercentCodec;

.field public static final GEN_DELIMS:Lcn/hutool/core/codec/PercentCodec;

.field public static final PATH:Lcn/hutool/core/codec/PercentCodec;

.field public static final PCHAR:Lcn/hutool/core/codec/PercentCodec;

.field public static final QUERY:Lcn/hutool/core/codec/PercentCodec;

.field public static final QUERY_PARAM_NAME:Lcn/hutool/core/codec/PercentCodec;

.field public static final QUERY_PARAM_NAME_STRICT:Lcn/hutool/core/codec/PercentCodec;

.field public static final QUERY_PARAM_VALUE:Lcn/hutool/core/codec/PercentCodec;

.field public static final QUERY_PARAM_VALUE_STRICT:Lcn/hutool/core/codec/PercentCodec;

.field public static final RESERVED:Lcn/hutool/core/codec/PercentCodec;

.field public static final SEGMENT:Lcn/hutool/core/codec/PercentCodec;

.field public static final SEGMENT_NZ_NC:Lcn/hutool/core/codec/PercentCodec;

.field public static final SUB_DELIMS:Lcn/hutool/core/codec/PercentCodec;

.field public static final UNRESERVED:Lcn/hutool/core/codec/PercentCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, ":/?#[]@"

    .line 17
    invoke-static {v0}, Lcn/hutool/core/codec/PercentCodec;->of(Ljava/lang/CharSequence;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/net/RFC3986;->GEN_DELIMS:Lcn/hutool/core/codec/PercentCodec;

    const-string v1, "!$&\'()*+,;="

    .line 22
    invoke-static {v1}, Lcn/hutool/core/codec/PercentCodec;->of(Ljava/lang/CharSequence;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v1

    sput-object v1, Lcn/hutool/core/net/RFC3986;->SUB_DELIMS:Lcn/hutool/core/codec/PercentCodec;

    .line 28
    invoke-virtual {v0, v1}, Lcn/hutool/core/codec/PercentCodec;->orNew(Lcn/hutool/core/codec/PercentCodec;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/net/RFC3986;->RESERVED:Lcn/hutool/core/codec/PercentCodec;

    .line 34
    invoke-static {}, Lcn/hutool/core/net/RFC3986;->unreservedChars()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/codec/PercentCodec;->of(Ljava/lang/CharSequence;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/net/RFC3986;->UNRESERVED:Lcn/hutool/core/codec/PercentCodec;

    .line 39
    invoke-virtual {v0, v1}, Lcn/hutool/core/codec/PercentCodec;->orNew(Lcn/hutool/core/codec/PercentCodec;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v1

    const-string v2, ":@"

    invoke-static {v2}, Lcn/hutool/core/codec/PercentCodec;->of(Ljava/lang/CharSequence;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/hutool/core/codec/PercentCodec;->or(Lcn/hutool/core/codec/PercentCodec;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v1

    sput-object v1, Lcn/hutool/core/net/RFC3986;->PCHAR:Lcn/hutool/core/codec/PercentCodec;

    .line 45
    sput-object v1, Lcn/hutool/core/net/RFC3986;->SEGMENT:Lcn/hutool/core/codec/PercentCodec;

    .line 49
    invoke-static {v1}, Lcn/hutool/core/codec/PercentCodec;->of(Lcn/hutool/core/codec/PercentCodec;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lcn/hutool/core/codec/PercentCodec;->removeSafe(C)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v2

    sput-object v2, Lcn/hutool/core/net/RFC3986;->SEGMENT_NZ_NC:Lcn/hutool/core/codec/PercentCodec;

    const-string v2, "/"

    .line 54
    invoke-static {v2}, Lcn/hutool/core/codec/PercentCodec;->of(Ljava/lang/CharSequence;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/hutool/core/codec/PercentCodec;->orNew(Lcn/hutool/core/codec/PercentCodec;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v2

    sput-object v2, Lcn/hutool/core/net/RFC3986;->PATH:Lcn/hutool/core/codec/PercentCodec;

    const-string v2, "/?"

    .line 59
    invoke-static {v2}, Lcn/hutool/core/codec/PercentCodec;->of(Ljava/lang/CharSequence;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/hutool/core/codec/PercentCodec;->orNew(Lcn/hutool/core/codec/PercentCodec;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v1

    sput-object v1, Lcn/hutool/core/net/RFC3986;->QUERY:Lcn/hutool/core/codec/PercentCodec;

    .line 64
    sput-object v1, Lcn/hutool/core/net/RFC3986;->FRAGMENT:Lcn/hutool/core/codec/PercentCodec;

    .line 70
    invoke-static {v1}, Lcn/hutool/core/codec/PercentCodec;->of(Lcn/hutool/core/codec/PercentCodec;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lcn/hutool/core/codec/PercentCodec;->removeSafe(C)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v1

    sput-object v1, Lcn/hutool/core/net/RFC3986;->QUERY_PARAM_VALUE:Lcn/hutool/core/codec/PercentCodec;

    .line 77
    sput-object v0, Lcn/hutool/core/net/RFC3986;->QUERY_PARAM_VALUE_STRICT:Lcn/hutool/core/codec/PercentCodec;

    .line 83
    invoke-static {v1}, Lcn/hutool/core/codec/PercentCodec;->of(Lcn/hutool/core/codec/PercentCodec;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lcn/hutool/core/codec/PercentCodec;->removeSafe(C)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v1

    sput-object v1, Lcn/hutool/core/net/RFC3986;->QUERY_PARAM_NAME:Lcn/hutool/core/codec/PercentCodec;

    .line 90
    sput-object v0, Lcn/hutool/core/net/RFC3986;->QUERY_PARAM_NAME_STRICT:Lcn/hutool/core/codec/PercentCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static unreservedChars()Ljava/lang/StringBuilder;
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x41

    :goto_0
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_0

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x30

    :goto_2
    const/16 v2, 0x39

    if-gt v1, v2, :cond_2

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_2

    :cond_2
    const-string v1, "_.-~"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
