.class public Lcom/reglink/parcel/ford/FordConst$IpodEvent;
.super Ljava/lang/Object;
.source "FordConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/ford/FordConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpodEvent"
.end annotation


# static fields
.field public static final AlbumChanged:Ljava/lang/String; = "album_changed"

.field public static final ArtistChanged:Ljava/lang/String; = "artist_changed"

.field public static final AvailableStateChanged:Ljava/lang/String; = "available_state_changed"

.field public static final CurrentPlayChanged:Ljava/lang/String; = "current_play_changed"

.field public static final PlayStateChanged:Ljava/lang/String; = "play_state_changed"

.field public static final PositionChanged:Ljava/lang/String; = "position_changed"

.field public static final TitleChanged:Ljava/lang/String; = "title_changed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
