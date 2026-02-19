.class public Lcom/reglink/common/Common$McuCommandSource;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McuCommandSource"
.end annotation


# static fields
.field public static final ADD_USER_CAN:B = 0x21t

.field public static final CAN1:B = 0x1t

.field public static final CAN2:B = 0x2t

.field public static final COM_ON_MCU:B = -0x5t

.field public static final GMCAN:B = 0x3t

.field public static final GMCOM:B = 0x4t

.field public static final MCU:B = -0x2t

.field public static final QUERY_USER_CAN:B = 0x22t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
