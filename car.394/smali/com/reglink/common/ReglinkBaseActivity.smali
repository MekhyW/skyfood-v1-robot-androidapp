.class public Lcom/reglink/common/ReglinkBaseActivity;
.super Landroid/app/Activity;
.source "ReglinkBaseActivity.java"


# instance fields
.field private messenger:Lcom/reglink/common/Messenger;

.field private preferences:Lcom/reglink/common/Preferences;

.field private sharedVar:Lcom/reglink/common/SharedVar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    new-instance v0, Lcom/reglink/common/SharedVar;

    invoke-direct {v0, p0}, Lcom/reglink/common/SharedVar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->sharedVar:Lcom/reglink/common/SharedVar;

    .line 16
    new-instance v0, Lcom/reglink/common/Preferences;

    invoke-direct {v0, p0}, Lcom/reglink/common/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->preferences:Lcom/reglink/common/Preferences;

    .line 17
    new-instance v0, Lcom/reglink/common/Messenger;

    invoke-direct {v0, p0}, Lcom/reglink/common/Messenger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object p1, p0, Lcom/reglink/common/ReglinkBaseActivity;->sharedVar:Lcom/reglink/common/SharedVar;

    invoke-virtual {p1}, Lcom/reglink/common/SharedVar;->onCreate()V

    .line 24
    iget-object p1, p0, Lcom/reglink/common/ReglinkBaseActivity;->preferences:Lcom/reglink/common/Preferences;

    invoke-virtual {p1}, Lcom/reglink/common/Preferences;->onCreate()V

    .line 25
    iget-object p1, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    invoke-virtual {p1}, Lcom/reglink/common/Messenger;->onCreate()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 50
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->sharedVar:Lcom/reglink/common/SharedVar;

    invoke-virtual {v0}, Lcom/reglink/common/SharedVar;->onDestroy()V

    .line 51
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->preferences:Lcom/reglink/common/Preferences;

    invoke-virtual {v0}, Lcom/reglink/common/Preferences;->onDestroy()V

    .line 52
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    invoke-virtual {v0}, Lcom/reglink/common/Messenger;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 41
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->sharedVar:Lcom/reglink/common/SharedVar;

    invoke-virtual {v0}, Lcom/reglink/common/SharedVar;->onPause()V

    .line 42
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->preferences:Lcom/reglink/common/Preferences;

    invoke-virtual {v0}, Lcom/reglink/common/Preferences;->onPause()V

    .line 43
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    invoke-virtual {v0}, Lcom/reglink/common/Messenger;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 32
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->sharedVar:Lcom/reglink/common/SharedVar;

    invoke-virtual {v0}, Lcom/reglink/common/SharedVar;->onResume()V

    .line 33
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->preferences:Lcom/reglink/common/Preferences;

    invoke-virtual {v0}, Lcom/reglink/common/Preferences;->onResume()V

    .line 34
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    invoke-virtual {v0}, Lcom/reglink/common/Messenger;->onResume()V

    return-void
.end method

.method public registerMessageCallback(ILandroid/os/Handler;I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/reglink/common/Messenger;->registerMessageCallback(ILandroid/os/Handler;I)V

    return-void
.end method

.method public registerMessageCallback(ILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/reglink/common/Messenger;->registerMessageCallback(ILandroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerMessageCallback(ILjava/lang/Runnable;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    invoke-virtual {v0, p1, p2}, Lcom/reglink/common/Messenger;->registerMessageCallback(ILjava/lang/Runnable;)V

    return-void
.end method

.method public registerPreferencesObserver(Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->preferences:Lcom/reglink/common/Preferences;

    invoke-virtual {v0, p1, p2}, Lcom/reglink/common/Preferences;->registerContentObserver(Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V

    return-void
.end method

.method public registerPreferencesObserver(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->preferences:Lcom/reglink/common/Preferences;

    new-instance v1, Lcom/reglink/common/ContentObserver;

    invoke-direct {v1, p2}, Lcom/reglink/common/ContentObserver;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/reglink/common/Preferences;->registerContentObserver(Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V

    return-void
.end method

.method public registerPreferencesObserver([Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->preferences:Lcom/reglink/common/Preferences;

    invoke-virtual {v0, p1, p2}, Lcom/reglink/common/Preferences;->registerContentObserver([Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V

    return-void
.end method

.method public registerPreferencesObserver([Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->preferences:Lcom/reglink/common/Preferences;

    new-instance v1, Lcom/reglink/common/ContentObserver;

    invoke-direct {v1, p2}, Lcom/reglink/common/ContentObserver;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/reglink/common/Preferences;->registerContentObserver([Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V

    return-void
.end method

.method public registerSharedVarObserver(Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->sharedVar:Lcom/reglink/common/SharedVar;

    invoke-virtual {v0, p1, p2}, Lcom/reglink/common/SharedVar;->registerContentObserver(Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V

    return-void
.end method

.method public registerSharedVarObserver(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->sharedVar:Lcom/reglink/common/SharedVar;

    new-instance v1, Lcom/reglink/common/ContentObserver;

    invoke-direct {v1, p2}, Lcom/reglink/common/ContentObserver;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/reglink/common/SharedVar;->registerContentObserver(Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V

    return-void
.end method

.method public registerSharedVarObserver([Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->sharedVar:Lcom/reglink/common/SharedVar;

    invoke-virtual {v0, p1, p2}, Lcom/reglink/common/SharedVar;->registerContentObserver([Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V

    return-void
.end method

.method public registerSharedVarObserver([Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->sharedVar:Lcom/reglink/common/SharedVar;

    new-instance v1, Lcom/reglink/common/ContentObserver;

    invoke-direct {v1, p2}, Lcom/reglink/common/ContentObserver;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/reglink/common/SharedVar;->registerContentObserver([Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V

    return-void
.end method

.method public sendEmptyMessage(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    invoke-virtual {v0, p1}, Lcom/reglink/common/Messenger;->sendEmptyMessage(I)V

    return-void
.end method

.method public sendEmptyMessageDelayed(II)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    invoke-virtual {v0, p1, p2}, Lcom/reglink/common/Messenger;->sendEmptyMessageDelayed(II)V

    return-void
.end method

.method public sendMessage(Lcom/reglink/parcel/Message;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    invoke-virtual {v0, p1}, Lcom/reglink/common/Messenger;->sendMessage(Lcom/reglink/parcel/Message;)V

    return-void
.end method

.method public sendMessageDelayed(Lcom/reglink/parcel/Message;I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    invoke-virtual {v0, p1, p2}, Lcom/reglink/common/Messenger;->sendMessageDelayed(Lcom/reglink/parcel/Message;I)V

    return-void
.end method

.method public sendMessageSync(Lcom/reglink/parcel/Message;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/reglink/common/ReglinkBaseActivity;->messenger:Lcom/reglink/common/Messenger;

    invoke-virtual {v0, p1}, Lcom/reglink/common/Messenger;->sendMessageSync(Lcom/reglink/parcel/Message;)V

    return-void
.end method
