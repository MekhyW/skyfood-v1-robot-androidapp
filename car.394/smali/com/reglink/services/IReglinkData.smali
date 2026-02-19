.class public interface abstract Lcom/reglink/services/IReglinkData;
.super Ljava/lang/Object;
.source "IReglinkData.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/IReglinkData$Stub;
    }
.end annotation


# virtual methods
.method public abstract getService(Ljava/lang/String;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
