.class public interface abstract Lcom/reglink/services/luxgen/ILuxgenCallback;
.super Ljava/lang/Object;
.source "ILuxgenCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/luxgen/ILuxgenCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract luxgenEvent(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
