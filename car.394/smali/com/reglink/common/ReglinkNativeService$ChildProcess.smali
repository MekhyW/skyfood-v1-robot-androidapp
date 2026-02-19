.class public Lcom/reglink/common/ReglinkNativeService$ChildProcess;
.super Ljava/lang/Object;
.source "ReglinkNativeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/ReglinkNativeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildProcess"
.end annotation


# instance fields
.field public fd:Landroid/os/ParcelFileDescriptor;

.field public pid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
