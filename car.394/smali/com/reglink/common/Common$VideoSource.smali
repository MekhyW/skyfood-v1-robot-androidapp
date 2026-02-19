.class public Lcom/reglink/common/Common$VideoSource;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoSource"
.end annotation


# static fields
.field public static final Android:I = 0x1

.field public static final Aux:I = 0x4

.field public static final DTV:I = 0x6

.field public static final DVD:I = 0x7

.field public static final DVR:I = 0x8

.field public static final Front:I = 0x3

.field public static final MHL:I = 0x5

.field public static final Rear:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "DVR"

    return-object p0

    :pswitch_1
    const-string p0, "DVD"

    return-object p0

    :pswitch_2
    const-string p0, "DTV"

    return-object p0

    :pswitch_3
    const-string p0, "MHL"

    return-object p0

    :pswitch_4
    const-string p0, "Aux"

    return-object p0

    :pswitch_5
    const-string p0, "Front"

    return-object p0

    :pswitch_6
    const-string p0, "Rear"

    return-object p0

    :pswitch_7
    const-string p0, "Android"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
