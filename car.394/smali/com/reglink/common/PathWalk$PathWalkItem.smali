.class public Lcom/reglink/common/PathWalk$PathWalkItem;
.super Ljava/lang/Object;
.source "PathWalk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/PathWalk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathWalkItem"
.end annotation


# instance fields
.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/reglink/common/PathWalk$PathWalkItem;->path:Ljava/lang/String;

    return-void
.end method
