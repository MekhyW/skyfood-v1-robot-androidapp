.class synthetic Lcn/hutool/core/text/StrJoiner$1;
.super Ljava/lang/Object;
.source "StrJoiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/text/StrJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$hutool$core$text$StrJoiner$NullMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 299
    invoke-static {}, Lcn/hutool/core/text/StrJoiner$NullMode;->values()[Lcn/hutool/core/text/StrJoiner$NullMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/hutool/core/text/StrJoiner$1;->$SwitchMap$cn$hutool$core$text$StrJoiner$NullMode:[I

    :try_start_0
    sget-object v1, Lcn/hutool/core/text/StrJoiner$NullMode;->IGNORE:Lcn/hutool/core/text/StrJoiner$NullMode;

    invoke-virtual {v1}, Lcn/hutool/core/text/StrJoiner$NullMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/hutool/core/text/StrJoiner$1;->$SwitchMap$cn$hutool$core$text$StrJoiner$NullMode:[I

    sget-object v1, Lcn/hutool/core/text/StrJoiner$NullMode;->TO_EMPTY:Lcn/hutool/core/text/StrJoiner$NullMode;

    invoke-virtual {v1}, Lcn/hutool/core/text/StrJoiner$NullMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcn/hutool/core/text/StrJoiner$1;->$SwitchMap$cn$hutool$core$text$StrJoiner$NullMode:[I

    sget-object v1, Lcn/hutool/core/text/StrJoiner$NullMode;->NULL_STRING:Lcn/hutool/core/text/StrJoiner$NullMode;

    invoke-virtual {v1}, Lcn/hutool/core/text/StrJoiner$NullMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
