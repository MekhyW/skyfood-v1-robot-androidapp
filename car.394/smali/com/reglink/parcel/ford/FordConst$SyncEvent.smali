.class public Lcom/reglink/parcel/ford/FordConst$SyncEvent;
.super Ljava/lang/Object;
.source "FordConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/ford/FordConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncEvent"
.end annotation


# static fields
.field public static final PhoneStateChanged:Ljava/lang/String; = "phone_state_changed"

.field public static final PhoneTalkTimeChanged:Ljava/lang/String; = "talk_time_changed"

.field public static final SyncMediaChanged:Ljava/lang/String; = "sync_media_changed"

.field public static final UsbPlayPositionChanged:Ljava/lang/String; = "play_position_changed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
