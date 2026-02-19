.class public interface abstract Lcom/reglink/services/ITouchKeyCallback;
.super Ljava/lang/Object;
.source "ITouchKeyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/ITouchKeyCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract touchKeyCallback(III)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
