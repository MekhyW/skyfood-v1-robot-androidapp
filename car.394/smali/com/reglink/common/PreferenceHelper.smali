.class public Lcom/reglink/common/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# instance fields
.field bundle:Landroid/os/Bundle;

.field newBundle:Z

.field preferenceService:Lcom/reglink/services/IPreferenceService;

.field section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/reglink/services/IPreferenceService;Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/reglink/common/PreferenceHelper;->newBundle:Z

    .line 21
    iput-object p1, p0, Lcom/reglink/common/PreferenceHelper;->preferenceService:Lcom/reglink/services/IPreferenceService;

    .line 22
    iput-object p2, p0, Lcom/reglink/common/PreferenceHelper;->section:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bundle()Landroid/os/Bundle;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/reglink/common/PreferenceHelper;->peek()Landroid/os/Bundle;

    .line 36
    iget-object v0, p0, Lcom/reglink/common/PreferenceHelper;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/PreferenceHelper;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/reglink/common/PreferenceHelper;->newBundle:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/reglink/common/PreferenceHelper;->newBundle:Z

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/reglink/common/PreferenceHelper;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public peek()Landroid/os/Bundle;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/reglink/common/PreferenceHelper;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    return-object v0

    .line 27
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/reglink/common/PreferenceHelper;->preferenceService:Lcom/reglink/services/IPreferenceService;

    iget-object v1, p0, Lcom/reglink/common/PreferenceHelper;->section:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/reglink/services/IPreferenceService;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/common/PreferenceHelper;->bundle:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 29
    invoke-static {v0}, Lcom/reglink/common/ExceptionHandler;->handleException(Ljava/lang/Exception;)V

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/reglink/common/PreferenceHelper;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public save()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/reglink/common/PreferenceHelper;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/PreferenceHelper;->preferenceService:Lcom/reglink/services/IPreferenceService;

    iget-object v2, p0, Lcom/reglink/common/PreferenceHelper;->section:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/reglink/services/IPreferenceService;->setBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/reglink/common/ExceptionHandler;->handleException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public saveAndBroadcastChanged(Lcom/reglink/services/IMessageService;)V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/reglink/common/PreferenceHelper;->save()V

    const/16 v0, 0xc9

    .line 54
    invoke-static {v0}, Lcom/reglink/parcel/Message;->obtain(I)Lcom/reglink/parcel/Message;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/reglink/common/PreferenceHelper;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/reglink/parcel/Message;->setParamString(Ljava/lang/String;)Lcom/reglink/parcel/Message;

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Lcom/reglink/parcel/Message;->setParamInt(I)Lcom/reglink/parcel/Message;

    .line 58
    :try_start_0
    invoke-interface {p1, v0}, Lcom/reglink/services/IMessageService;->sendMessage(Lcom/reglink/parcel/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-static {p1}, Lcom/reglink/common/ExceptionHandler;->handleException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
