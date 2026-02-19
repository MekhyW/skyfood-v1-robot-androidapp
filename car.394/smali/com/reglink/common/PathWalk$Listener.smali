.class public interface abstract Lcom/reglink/common/PathWalk$Listener;
.super Ljava/lang/Object;
.source "PathWalk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/PathWalk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract folderChangedNotify(Ljava/lang/String;)V
.end method

.method public abstract scanError()V
.end method

.method public abstract walkComplete(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/reglink/common/PathWalk$PathWalkItem;",
            ">;)V"
        }
    .end annotation
.end method
