.class public interface abstract Lcom/reglink/services/ford/IIPodCallback;
.super Ljava/lang/Object;
.source "IIPodCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/ford/IIPodCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract ipodEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
