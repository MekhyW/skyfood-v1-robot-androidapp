.class public interface abstract Lcom/reglink/services/IProductTestListener;
.super Ljava/lang/Object;
.source "IProductTestListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/IProductTestListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract testCaseChanged(Lcom/reglink/parcel/ProductTestCase;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract testServiceEvent(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
