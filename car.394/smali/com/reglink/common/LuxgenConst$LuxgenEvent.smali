.class public Lcom/reglink/common/LuxgenConst$LuxgenEvent;
.super Ljava/lang/Object;
.source "LuxgenConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/LuxgenConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LuxgenEvent"
.end annotation


# static fields
.field public static final MediaChanged:Ljava/lang/String; = "media"

.field public static final MuteChanged:Ljava/lang/String; = "mute"

.field public static final VideoSourceChanged:Ljava/lang/String; = "videosource"

.field public static final VolumeChanged:Ljava/lang/String; = "volume"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
