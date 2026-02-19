.class public Lcom/autoxing/delivery/controller/EventController;
.super Ljava/lang/Object;
.source "EventController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;
    }
.end annotation


# static fields
.field private static final ACTION_HOVER:I = 0x2

.field private static final ACTION_KEY:I = 0x1

.field private static final ACTION_SCROLL:I = 0x3

.field private static final ACTION_TOUCH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EventController"

.field private static final TIME_INTERVAL:J = 0x493e0L


# instance fields
.field private iMessageClient:Lcom/reglink/services/IMessageClient;

.field private isSleepMode:Z

.field private lastCallbackTimestamp:J

.field private lastTime:J

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/autoxing/delivery/controller/EventController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/controller/EventController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisSleepMode(Lcom/autoxing/delivery/controller/EventController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autoxing/delivery/controller/EventController;->isSleepMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallOnTouchChanged(Lcom/autoxing/delivery/controller/EventController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/controller/EventController;->callOnTouchChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallOnTouchChanged(Lcom/autoxing/delivery/controller/EventController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autoxing/delivery/controller/EventController;->callOnTouchChanged(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckEnterStandby(Lcom/autoxing/delivery/controller/EventController;)V
    .locals 0

    invoke-direct {p0}, Lcom/autoxing/delivery/controller/EventController;->checkEnterStandby()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdebug(Lcom/autoxing/delivery/controller/EventController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/controller/EventController;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autoxing/delivery/controller/EventController;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, -0x1

    .line 169
    iput-wide v0, p0, Lcom/autoxing/delivery/controller/EventController;->lastCallbackTimestamp:J

    const/4 v2, 0x0

    .line 202
    iput-boolean v2, p0, Lcom/autoxing/delivery/controller/EventController;->isSleepMode:Z

    .line 231
    iput-wide v0, p0, Lcom/autoxing/delivery/controller/EventController;->lastTime:J

    .line 39
    iput-object p3, p0, Lcom/autoxing/delivery/controller/EventController;->mListener:Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;

    .line 40
    iput-object p2, p0, Lcom/autoxing/delivery/controller/EventController;->mContext:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/autoxing/delivery/controller/EventController;->mWebView:Landroid/webkit/WebView;

    .line 42
    invoke-static {}, Lcom/autoxing/delivery/util/Utils;->isOldRobot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    :try_start_0
    invoke-static {}, Lcom/reglink/common/ServiceManager;->getDroidService()Lcom/reglink/services/IDroidService;

    move-result-object p1

    const-string p3, "Message"

    .line 45
    invoke-interface {p1, p3}, Lcom/reglink/services/IDroidService;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/IMessageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IMessageService;

    move-result-object p1

    .line 46
    new-instance p3, Lcom/autoxing/delivery/controller/EventController$1;

    invoke-direct {p3, p0}, Lcom/autoxing/delivery/controller/EventController$1;-><init>(Lcom/autoxing/delivery/controller/EventController;)V

    invoke-interface {p1, p3}, Lcom/reglink/services/IMessageService;->registerCallback(Lcom/reglink/services/IMessageCallback;)Lcom/reglink/services/IMessageClient;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/controller/EventController;->iMessageClient:Lcom/reglink/services/IMessageClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :cond_0
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.TIME_TICK"

    .line 60
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    new-instance p3, Lcom/autoxing/delivery/controller/EventController$2;

    invoke-direct {p3, p0}, Lcom/autoxing/delivery/controller/EventController$2;-><init>(Lcom/autoxing/delivery/controller/EventController;)V

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private addTouchListener(Landroid/view/View;)V
    .locals 1

    .line 84
    new-instance v0, Lcom/autoxing/delivery/controller/EventController$3;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/EventController$3;-><init>(Lcom/autoxing/delivery/controller/EventController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    new-instance v0, Lcom/autoxing/delivery/controller/EventController$4;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/EventController$4;-><init>(Lcom/autoxing/delivery/controller/EventController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 100
    new-instance v0, Lcom/autoxing/delivery/controller/EventController$5;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/EventController$5;-><init>(Lcom/autoxing/delivery/controller/EventController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v0, Lcom/autoxing/delivery/controller/EventController$6;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/EventController$6;-><init>(Lcom/autoxing/delivery/controller/EventController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    new-instance v0, Lcom/autoxing/delivery/controller/EventController$7;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/EventController$7;-><init>(Lcom/autoxing/delivery/controller/EventController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 123
    new-instance v0, Lcom/autoxing/delivery/controller/EventController$8;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/EventController$8;-><init>(Lcom/autoxing/delivery/controller/EventController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 131
    new-instance v0, Lcom/autoxing/delivery/controller/EventController$9;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/EventController$9;-><init>(Lcom/autoxing/delivery/controller/EventController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method private callOnTouchChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, v0}, Lcom/autoxing/delivery/controller/EventController;->callOnTouchChanged(IZ)V

    return-void
.end method

.method private callOnTouchChanged(IZ)V
    .locals 6

    .line 176
    invoke-virtual {p0}, Lcom/autoxing/delivery/controller/EventController;->stopCheckStandby()V

    .line 177
    iget-boolean v0, p0, Lcom/autoxing/delivery/controller/EventController;->isSleepMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autoxing/delivery/util/Utils;->isOldRobot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/autoxing/delivery/controller/EventController;->exitSleepMode()V

    .line 179
    iput-boolean v1, p0, Lcom/autoxing/delivery/controller/EventController;->isSleepMode:Z

    :cond_0
    if-nez p2, :cond_1

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/autoxing/delivery/controller/EventController;->lastCallbackTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p2, v2, v4

    if-gez p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/autoxing/delivery/controller/EventController;->lastCallbackTimestamp:J

    cmp-long p2, v2, v4

    if-gez p2, :cond_2

    .line 183
    :cond_1
    iget-object p2, p0, Lcom/autoxing/delivery/controller/EventController;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "javascript:callOnTouchChanged("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/autoxing/delivery/controller/EventController;->lastCallbackTimestamp:J

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 185
    iget-boolean p2, p0, Lcom/autoxing/delivery/controller/EventController;->isSleepMode:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {}, Lcom/autoxing/delivery/util/Utils;->isOldRobot()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "isSleepMode = %b,Utils.isOldRobot()=%b"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EventController"

    invoke-static {p2, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/autoxing/delivery/controller/EventController;->mListener:Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;

    invoke-interface {p1}, Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;->onStopAnimation()V

    :cond_2
    return-void
.end method

.method private checkEnterStandby()V
    .locals 4

    .line 238
    iget-wide v0, p0, Lcom/autoxing/delivery/controller/EventController;->lastTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autoxing/delivery/controller/EventController;->lastTime:J

    sub-long/2addr v0, v2

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkEnterStandby interval="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autoxing/delivery/controller/EventController;->debug(Ljava/lang/String;)V

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/autoxing/delivery/controller/EventController;->stopCheckStandby()V

    const-string v0, "send EnterStandby"

    .line 243
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/controller/EventController;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0, v0}, Lcom/autoxing/delivery/controller/EventController;->setSleepMode(Z)V

    .line 246
    iget-object v0, p0, Lcom/autoxing/delivery/controller/EventController;->mListener:Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;

    invoke-interface {v0}, Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;->onStopAnimation()V

    :cond_1
    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EventController"

    .line 227
    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private exitSleepMode()V
    .locals 5

    .line 191
    invoke-static {}, Lcom/autoxing/delivery/controller/AndroidSDKAdapter;->getBrightPercent()I

    move-result v0

    const-wide v1, 0x4004666666666666L    # 2.55

    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int v0, v3

    .line 193
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/controller/EventController;->setBrightLight(I)V

    return-void
.end method

.method private onTouchChanged()V
    .locals 2

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autoxing/delivery/controller/EventController;->lastTime:J

    return-void
.end method

.method private setBrightLight(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "echo %d > /sys/devices/platform/backlight/backlight/backlight/brightness"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-static {p1}, Lcom/autoxing/delivery/controller/AndroidSDKAdapter;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object v1, v3, v0

    const-string p1, "%s = %s"

    .line 199
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EventController"

    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enterStandby()V
    .locals 1

    const-string v0, "startCheckStandby"

    .line 262
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/controller/EventController;->debug(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/autoxing/delivery/controller/EventController;->onTouchChanged()V

    return-void
.end method

.method public exitStandby()V
    .locals 2

    const-string v0, "send ExitStandby"

    .line 256
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/controller/EventController;->debug(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 257
    iput-wide v0, p0, Lcom/autoxing/delivery/controller/EventController;->lastTime:J

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, v0}, Lcom/autoxing/delivery/controller/EventController;->setSleepMode(Z)V

    return-void
.end method

.method public listenSleepStatus()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/autoxing/delivery/controller/EventController;->iMessageClient:Lcom/reglink/services/IMessageClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput v3, v1, v2

    .line 144
    invoke-interface {v0, v1}, Lcom/reglink/services/IMessageClient;->subscribe([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSleepMode(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 205
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setSleepMode = %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventController"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iput-boolean p1, p0, Lcom/autoxing/delivery/controller/EventController;->isSleepMode:Z

    .line 207
    invoke-static {}, Lcom/autoxing/delivery/util/Utils;->isOldRobot()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "sendEmptyMessage(Common.Broadcast.EnterStandby)"

    new-array v0, v2, [Ljava/lang/Object;

    .line 209
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance p1, Lcom/reglink/common/Messenger;

    iget-object v0, p0, Lcom/autoxing/delivery/controller/EventController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/reglink/common/Messenger;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/reglink/common/Messenger;->sendEmptyMessage(I)V

    .line 211
    invoke-virtual {p0}, Lcom/autoxing/delivery/controller/EventController;->listenSleepStatus()V

    goto :goto_0

    :cond_0
    const-string p1, "sendEmptyMessage(Common.Broadcast.ExitStandby)"

    new-array v0, v2, [Ljava/lang/Object;

    .line 213
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/autoxing/delivery/controller/EventController;->unListenSleepStatus()V

    .line 215
    new-instance p1, Lcom/reglink/common/Messenger;

    iget-object v0, p0, Lcom/autoxing/delivery/controller/EventController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/reglink/common/Messenger;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/reglink/common/Messenger;->sendEmptyMessage(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 219
    invoke-direct {p0, v2}, Lcom/autoxing/delivery/controller/EventController;->setBrightLight(I)V

    goto :goto_0

    .line 221
    :cond_2
    invoke-direct {p0}, Lcom/autoxing/delivery/controller/EventController;->exitSleepMode()V

    :goto_0
    return-void
.end method

.method public start(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/autoxing/delivery/controller/EventController;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/autoxing/delivery/controller/EventController;->addTouchListener(Landroid/view/View;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/controller/EventController;->addTouchListener(Landroid/view/View;)V

    .line 80
    invoke-direct {p0, p2}, Lcom/autoxing/delivery/controller/EventController;->addTouchListener(Landroid/view/View;)V

    return-void
.end method

.method public stopCheckStandby()V
    .locals 2

    const-string v0, "stopCheckStandby"

    .line 251
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/controller/EventController;->debug(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 252
    iput-wide v0, p0, Lcom/autoxing/delivery/controller/EventController;->lastTime:J

    return-void
.end method

.method public unListenSleepStatus()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/autoxing/delivery/controller/EventController;->iMessageClient:Lcom/reglink/services/IMessageClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput v3, v1, v2

    .line 157
    invoke-interface {v0, v1}, Lcom/reglink/services/IMessageClient;->unsubscribe([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateWebView(Landroid/webkit/WebView;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/autoxing/delivery/controller/EventController;->mWebView:Landroid/webkit/WebView;

    .line 72
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/controller/EventController;->addTouchListener(Landroid/view/View;)V

    return-void
.end method
