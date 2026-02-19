.class public abstract Lcom/reglink/common/BaseActivity;
.super Lcom/reglink/common/ReglinkBaseActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/common/BaseActivity$PasscodeCallback;,
        Lcom/reglink/common/BaseActivity$HandlerCallback;,
        Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field protected H:Landroid/os/Handler;

.field private ReqCode_Passcode:I

.field private _droidService:Lcom/reglink/services/IDroidService;

.field private alreadyCallbackDroidService:Z

.field private final droidServiceConnection:Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;

.field private gotServiceFromBind:Z

.field private mPaused:Z

.field private mStarted:Z

.field protected messageService:Lcom/reglink/services/IMessageService;

.field private onResumeRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onServiceBoundRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private passcodeCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/reglink/common/BaseActivity$PasscodeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/reglink/common/ReglinkBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/reglink/common/BaseActivity;->alreadyCallbackDroidService:Z

    .line 30
    iput-boolean v0, p0, Lcom/reglink/common/BaseActivity;->mStarted:Z

    .line 31
    iput-boolean v0, p0, Lcom/reglink/common/BaseActivity;->mPaused:Z

    .line 32
    iput-boolean v0, p0, Lcom/reglink/common/BaseActivity;->gotServiceFromBind:Z

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/reglink/common/BaseActivity;->_droidService:Lcom/reglink/services/IDroidService;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/BaseActivity;->onResumeRunnables:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/BaseActivity;->onServiceBoundRunnables:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/BaseActivity;->passcodeCallbacks:Landroid/util/SparseArray;

    const/16 v0, 0x1000

    .line 42
    iput v0, p0, Lcom/reglink/common/BaseActivity;->ReqCode_Passcode:I

    .line 44
    new-instance v0, Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;

    invoke-direct {v0, p0}, Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;-><init>(Lcom/reglink/common/BaseActivity;)V

    iput-object v0, p0, Lcom/reglink/common/BaseActivity;->droidServiceConnection:Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/reglink/common/BaseActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/reglink/common/BaseActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/reglink/common/BaseActivity;Landroid/content/ComponentName;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/reglink/common/BaseActivity;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$200(Lcom/reglink/common/BaseActivity;Landroid/os/Message;)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/reglink/common/BaseActivity;->privateHandleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private bindDroidService()V
    .locals 3

    const-string v0, "reglink.droid"

    .line 87
    invoke-static {v0}, Lcom/reglink/common/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {v0}, Lcom/reglink/services/IDroidService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IDroidService;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/common/BaseActivity;->_droidService:Lcom/reglink/services/IDroidService;

    .line 90
    invoke-direct {p0}, Lcom/reglink/common/BaseActivity;->gotDroidService()V

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.reglink.action.DroidCarService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.reglink.services"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/reglink/common/BaseActivity;->droidServiceConnection:Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/reglink/common/BaseActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BaseActivity"

    const-string v1, "bind Service failure"

    .line 95
    invoke-static {v0, v1}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget v0, Lcom/reglink/common/R$string;->toast_bind_service_failure:I

    invoke-virtual {p0, v0}, Lcom/reglink/common/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/reglink/common/Toast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    iput-boolean v2, p0, Lcom/reglink/common/BaseActivity;->gotServiceFromBind:Z

    :goto_0
    return-void
.end method

.method private callbackDroidService()V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/reglink/common/BaseActivity;->alreadyCallbackDroidService:Z

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/BaseActivity;->_droidService:Lcom/reglink/services/IDroidService;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/reglink/common/BaseActivity;->alreadyCallbackDroidService:Z

    .line 116
    invoke-direct {p0}, Lcom/reglink/common/BaseActivity;->onDroidServiceBoundInternal()V

    .line 117
    iget-object v0, p0, Lcom/reglink/common/BaseActivity;->_droidService:Lcom/reglink/services/IDroidService;

    invoke-virtual {p0, v0}, Lcom/reglink/common/BaseActivity;->onDroidServiceBound(Lcom/reglink/services/IDroidService;)V

    .line 118
    invoke-direct {p0}, Lcom/reglink/common/BaseActivity;->handleServiceBoundCallback()V

    return-void
.end method

.method private gotDroidService()V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/reglink/common/BaseActivity;->mStarted:Z

    if-eqz v0, :cond_0

    .line 106
    iget-boolean v0, p0, Lcom/reglink/common/BaseActivity;->alreadyCallbackDroidService:Z

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/reglink/common/BaseActivity;->callbackDroidService()V

    :cond_0
    return-void
.end method

.method private handleMessageInternal(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private handleServiceBoundCallback()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/reglink/common/BaseActivity;->onServiceBoundRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/BaseActivity;->onServiceBoundRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 297
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/reglink/common/BaseActivity;->onServiceBoundRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 300
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onDroidServiceBoundInternal()V
    .locals 2

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/reglink/common/BaseActivity;->_droidService:Lcom/reglink/services/IDroidService;

    const-string v1, "Message"

    invoke-interface {v0, v1}, Lcom/reglink/services/IDroidService;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/reglink/services/IMessageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IMessageService;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/common/BaseActivity;->messageService:Lcom/reglink/services/IMessageService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 68
    invoke-static {p2}, Lcom/reglink/services/IDroidService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IDroidService;

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/common/BaseActivity;->_droidService:Lcom/reglink/services/IDroidService;

    .line 69
    invoke-direct {p0}, Lcom/reglink/common/BaseActivity;->gotDroidService()V

    return-void
.end method

.method private onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/reglink/common/BaseActivity;->_droidService:Lcom/reglink/services/IDroidService;

    return-void
.end method

.method private privateHandleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/reglink/common/BaseActivity;->handleMessageInternal(Landroid/os/Message;)Z

    .line 139
    invoke-virtual {p0, p1}, Lcom/reglink/common/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addOnResumeRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/reglink/common/BaseActivity;->onResumeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDroidService()Lcom/reglink/services/IDroidService;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/reglink/common/BaseActivity;->_droidService:Lcom/reglink/services/IDroidService;

    if-eqz v0, :cond_0

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "droidService == NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDroidServiceSM()Lcom/reglink/services/IDroidService;
    .locals 1

    const-string v0, "reglink.droid"

    .line 78
    invoke-static {v0}, Lcom/reglink/common/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {v0}, Lcom/reglink/services/IDroidService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IDroidService;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/reglink/common/BaseActivity;->passcodeCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/reglink/common/BaseActivity$PasscodeCallback;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 275
    invoke-interface {v0}, Lcom/reglink/common/BaseActivity$PasscodeCallback;->canceled()V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "passcode"

    .line 278
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 279
    invoke-interface {v0, p2}, Lcom/reglink/common/BaseActivity$PasscodeCallback;->pass(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 281
    invoke-interface {v0, p2}, Lcom/reglink/common/BaseActivity$PasscodeCallback;->pass(Ljava/lang/String;)V

    .line 285
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/reglink/common/BaseActivity;->passcodeCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/reglink/common/ReglinkBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 158
    invoke-super {p0, p1}, Lcom/reglink/common/ReglinkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/reglink/common/BaseActivity$HandlerCallback;

    invoke-direct {v0, p0}, Lcom/reglink/common/BaseActivity$HandlerCallback;-><init>(Lcom/reglink/common/BaseActivity;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/reglink/common/BaseActivity;->H:Landroid/os/Handler;

    .line 160
    invoke-direct {p0}, Lcom/reglink/common/BaseActivity;->bindDroidService()V

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lcom/reglink/common/BaseActivity;->mPaused:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 191
    invoke-super {p0}, Lcom/reglink/common/ReglinkBaseActivity;->onDestroy()V

    .line 192
    iget-boolean v0, p0, Lcom/reglink/common/BaseActivity;->gotServiceFromBind:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/reglink/common/BaseActivity;->droidServiceConnection:Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;

    invoke-virtual {p0, v0}, Lcom/reglink/common/BaseActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/BaseActivity;->H:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDroidServiceBound(Lcom/reglink/services/IDroidService;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 185
    invoke-super {p0}, Lcom/reglink/common/ReglinkBaseActivity;->onPause()V

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/reglink/common/BaseActivity;->mPaused:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/reglink/common/ReglinkBaseActivity;->onResume()V

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/reglink/common/BaseActivity;->mPaused:Z

    .line 175
    iget-object v1, p0, Lcom/reglink/common/BaseActivity;->onResumeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/reglink/common/BaseActivity;->onResumeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/reglink/common/BaseActivity;->onResumeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/BaseActivity;->onResumeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/reglink/common/ReglinkBaseActivity;->onStart()V

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/reglink/common/BaseActivity;->mStarted:Z

    .line 168
    invoke-direct {p0}, Lcom/reglink/common/BaseActivity;->callbackDroidService()V

    return-void
.end method

.method public runUntilResume(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/reglink/common/BaseActivity;->runUntilResume(Ljava/lang/Runnable;Z)Z

    move-result p1

    return p1
.end method

.method public runUntilResume(Ljava/lang/Runnable;Z)Z
    .locals 2

    .line 206
    iget-boolean v0, p0, Lcom/reglink/common/BaseActivity;->mPaused:Z

    if-eqz v0, :cond_1

    const-string v0, "BaseActivity"

    const-string v1, "Deferring update until onResume"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 209
    :goto_0
    iget-object p2, p0, Lcom/reglink/common/BaseActivity;->onResumeRunnables:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object p2, p0, Lcom/reglink/common/BaseActivity;->onResumeRunnables:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public runUntilServiceConnected(Ljava/lang/Runnable;)V
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/reglink/common/BaseActivity;->alreadyCallbackDroidService:Z

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/reglink/common/BaseActivity;->onServiceBoundRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public varargs startPasscodeActivity(Lcom/reglink/common/BaseActivity$PasscodeCallback;[Ljava/lang/String;)V
    .locals 3

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.reglink.action.passcode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    iget v1, p0, Lcom/reglink/common/BaseActivity;->ReqCode_Passcode:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/reglink/common/BaseActivity;->ReqCode_Passcode:I

    .line 258
    iget-object v2, p0, Lcom/reglink/common/BaseActivity;->passcodeCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    array-length p1, p2

    if-lez p1, :cond_1

    .line 260
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 261
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 262
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "passcode"

    .line 264
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 266
    :cond_1
    iget p1, p0, Lcom/reglink/common/BaseActivity;->ReqCode_Passcode:I

    invoke-virtual {p0, v0, p1}, Lcom/reglink/common/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startPasscodeActivity(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    .line 242
    new-instance v0, Lcom/reglink/common/BaseActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/reglink/common/BaseActivity$1;-><init>(Lcom/reglink/common/BaseActivity;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/reglink/common/BaseActivity;->startPasscodeActivity(Lcom/reglink/common/BaseActivity$PasscodeCallback;[Ljava/lang/String;)V

    return-void
.end method
