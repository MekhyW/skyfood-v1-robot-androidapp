.class public interface abstract Lcom/reglink/services/IRecorderInterface;
.super Ljava/lang/Object;
.source "IRecorderInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/IRecorderInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendTouch(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setUiTouchBounds(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
