.class public interface abstract Lcom/reglink/services/ICANCallback;
.super Ljava/lang/Object;
.source "ICANCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/ICANCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract canDataCallback(Lcom/reglink/parcel/CANPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
