.class public interface abstract Lcom/reglink/services/ford/ICDCallback;
.super Ljava/lang/Object;
.source "ICDCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/ford/ICDCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract cdEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
