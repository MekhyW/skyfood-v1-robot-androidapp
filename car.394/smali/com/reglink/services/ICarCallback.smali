.class public interface abstract Lcom/reglink/services/ICarCallback;
.super Ljava/lang/Object;
.source "ICarCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/ICarCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract carEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
