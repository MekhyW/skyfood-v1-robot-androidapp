.class public interface abstract Lcom/reglink/services/IRadioCallback;
.super Ljava/lang/Object;
.source "IRadioCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/IRadioCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract radioChanged(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
