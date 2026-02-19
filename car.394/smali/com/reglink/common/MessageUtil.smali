.class public Lcom/reglink/common/MessageUtil;
.super Ljava/lang/Object;
.source "MessageUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcast(Lcom/reglink/services/IMessageService;I)V
    .locals 0

    .line 34
    invoke-static {p1}, Lcom/reglink/parcel/Message;->obtain(I)Lcom/reglink/parcel/Message;

    move-result-object p1

    .line 36
    :try_start_0
    invoke-interface {p0, p1}, Lcom/reglink/services/IMessageService;->sendMessage(Lcom/reglink/parcel/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-static {p0}, Lcom/reglink/common/ExceptionHandler;->handleException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static broadcast(Lcom/reglink/services/IMessageService;II)V
    .locals 0

    .line 25
    invoke-static {p1, p2}, Lcom/reglink/parcel/Message;->obtain(II)Lcom/reglink/parcel/Message;

    move-result-object p1

    .line 27
    :try_start_0
    invoke-interface {p0, p1}, Lcom/reglink/services/IMessageService;->sendMessage(Lcom/reglink/parcel/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 29
    invoke-static {p0}, Lcom/reglink/common/ExceptionHandler;->handleException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static broadcast(Lcom/reglink/services/IMessageService;ILandroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-static {p1, p2}, Lcom/reglink/parcel/Message;->obtain(ILandroid/os/Bundle;)Lcom/reglink/parcel/Message;

    move-result-object p1

    .line 45
    :try_start_0
    invoke-interface {p0, p1}, Lcom/reglink/services/IMessageService;->sendMessage(Lcom/reglink/parcel/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 47
    invoke-static {p0}, Lcom/reglink/common/ExceptionHandler;->handleException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static broadcast(Lcom/reglink/services/IMessageService;ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-static {p1, p2}, Lcom/reglink/parcel/Message;->obtain(ILjava/lang/String;)Lcom/reglink/parcel/Message;

    move-result-object p1

    .line 18
    :try_start_0
    invoke-interface {p0, p1}, Lcom/reglink/services/IMessageService;->sendMessage(Lcom/reglink/parcel/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    invoke-static {p0}, Lcom/reglink/common/ExceptionHandler;->handleException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
