.class public Lcn/hutool/core/net/FormUrlencoded;
.super Ljava/lang/Object;
.source "FormUrlencoded.java"


# static fields
.field public static final ALL:Lcn/hutool/core/codec/PercentCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    sget-object v0, Lcn/hutool/core/net/RFC3986;->UNRESERVED:Lcn/hutool/core/codec/PercentCodec;

    invoke-static {v0}, Lcn/hutool/core/codec/PercentCodec;->of(Lcn/hutool/core/codec/PercentCodec;)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v0

    const/16 v1, 0x7e

    .line 18
    invoke-virtual {v0, v1}, Lcn/hutool/core/codec/PercentCodec;->removeSafe(C)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcn/hutool/core/codec/PercentCodec;->addSafe(C)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/hutool/core/codec/PercentCodec;->setEncodeSpaceAsPlus(Z)Lcn/hutool/core/codec/PercentCodec;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/net/FormUrlencoded;->ALL:Lcn/hutool/core/codec/PercentCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
