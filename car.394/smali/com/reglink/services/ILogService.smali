.class public interface abstract Lcom/reglink/services/ILogService;
.super Ljava/lang/Object;
.source "ILogService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/ILogService$Stub;
    }
.end annotation


# virtual methods
.method public abstract createLogger(Ljava/lang/String;)Lcom/reglink/services/ILogClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract log(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
