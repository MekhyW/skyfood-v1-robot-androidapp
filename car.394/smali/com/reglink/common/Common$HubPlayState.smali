.class public Lcom/reglink/common/Common$HubPlayState;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HubPlayState"
.end annotation


# static fields
.field public static final Paused:Ljava/lang/String; = "paused"

.field public static final Playing:Ljava/lang/String; = "playing"

.field public static final Prepared:Ljava/lang/String; = "prepared"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
