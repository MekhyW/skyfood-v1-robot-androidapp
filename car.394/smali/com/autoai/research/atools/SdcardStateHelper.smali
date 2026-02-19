.class public Lcom/autoai/research/atools/SdcardStateHelper;
.super Ljava/lang/Object;
.source "SdcardStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoai/research/atools/SdcardStateHelper$OnSdcardChangedListener;,
        Lcom/autoai/research/atools/SdcardStateHelper$SdcardBroadcastReceiver;
    }
.end annotation


# static fields
.field private static mSdcardIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private isRunning:Z

.field private mContext:Landroid/content/Context;

.field private mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autoai/research/atools/SdcardStateHelper$OnSdcardChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSdcardBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->isRunning:Z

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mListenerList:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/autoai/research/atools/SdcardStateHelper$SdcardBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autoai/research/atools/SdcardStateHelper$SdcardBroadcastReceiver;-><init>(Lcom/autoai/research/atools/SdcardStateHelper;Lcom/autoai/research/atools/SdcardStateHelper$1;)V

    iput-object v0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    iput-object p1, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/autoai/research/atools/SdcardStateHelper;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mListenerList:Ljava/util/List;

    return-object p0
.end method

.method private registerReceiver()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/autoai/research/atools/SdcardStateHelper;->removeAllListener()V

    .line 86
    iget-object v0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mSdcardBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/autoai/research/atools/SdcardStateHelper$OnSdcardChangedListener;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAllListener()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mListenerList:Ljava/util/List;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeListener(Lcom/autoai/research/atools/SdcardStateHelper$OnSdcardChangedListener;)Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mListenerList:Ljava/util/List;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/autoai/research/atools/SdcardStateHelper;->mListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->isRunning:Z

    .line 45
    invoke-direct {p0}, Lcom/autoai/research/atools/SdcardStateHelper;->registerReceiver()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/autoai/research/atools/SdcardStateHelper;->isRunning:Z

    .line 57
    invoke-direct {p0}, Lcom/autoai/research/atools/SdcardStateHelper;->unregisterReceiver()V

    return-void
.end method
