.class public interface abstract Lcom/reglink/services/ford/IDspCallback;
.super Ljava/lang/Object;
.source "IDspCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/ford/IDspCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract dspEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
