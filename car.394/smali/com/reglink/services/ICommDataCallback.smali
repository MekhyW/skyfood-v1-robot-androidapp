.class public interface abstract Lcom/reglink/services/ICommDataCallback;
.super Ljava/lang/Object;
.source "ICommDataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/ICommDataCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract commDataCallback(Lcom/reglink/parcel/McuProtocolPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
