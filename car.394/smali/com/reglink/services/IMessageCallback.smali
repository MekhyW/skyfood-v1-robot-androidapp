.class public interface abstract Lcom/reglink/services/IMessageCallback;
.super Ljava/lang/Object;
.source "IMessageCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/IMessageCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract handleMessage(Lcom/reglink/parcel/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
