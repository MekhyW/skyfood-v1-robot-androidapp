.class public Lcom/reglink/parcel/ford/FordConst$RadioEvent;
.super Ljava/lang/Object;
.source "FordConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/ford/FordConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioEvent"
.end annotation


# static fields
.field public static final BandChanged:Ljava/lang/String; = "band_changed"

.field public static final FreqChanged:Ljava/lang/String; = "freq_changed"

.field public static final ListChanged:Ljava/lang/String; = "list_changed"

.field public static final PresetChanged:Ljava/lang/String; = "preset_changed"

.field public static final ScanStateChanged:Ljava/lang/String; = "scan_state_changed"

.field public static final TAStateChanged:Ljava/lang/String; = "ta_state_changed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
