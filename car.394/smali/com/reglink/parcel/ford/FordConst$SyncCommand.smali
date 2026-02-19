.class public Lcom/reglink/parcel/ford/FordConst$SyncCommand;
.super Ljava/lang/Object;
.source "FordConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/ford/FordConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncCommand"
.end annotation


# static fields
.field public static final CmdClose:Ljava/lang/String; = "close"

.field public static final CmdCloseDialog:Ljava/lang/String; = "close_dialog"

.field public static final CmdCloseVrDialog:Ljava/lang/String; = "close_vr_dialog"

.field public static final CmdReturn:Ljava/lang/String; = "return"

.field public static final CmdSwitchAux:Ljava/lang/String; = "switch_aux"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
