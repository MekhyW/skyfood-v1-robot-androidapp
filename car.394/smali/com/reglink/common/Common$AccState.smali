.class public Lcom/reglink/common/Common$AccState;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccState"
.end annotation


# static fields
.field public static final BOOT_ACC:I = 0x1

.field public static final OFF:I = 0x0

.field public static final WORK_ACC:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
