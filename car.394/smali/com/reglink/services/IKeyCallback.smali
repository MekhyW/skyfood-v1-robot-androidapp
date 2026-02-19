.class public interface abstract Lcom/reglink/services/IKeyCallback;
.super Ljava/lang/Object;
.source "IKeyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/IKeyCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract keyCallback(Lcom/reglink/parcel/KeyEvent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
