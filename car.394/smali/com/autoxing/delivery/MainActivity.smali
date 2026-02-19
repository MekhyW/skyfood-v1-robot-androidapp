.class public Lcom/autoxing/delivery/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/MainActivity$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MainActivityLog"


# instance fields
.field UsbBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private audioPlayer:Lcom/autoxing/delivery/util/AudioPlayer;

.field private downIndex:I

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private innerHandler:Landroid/os/Handler;

.field private isDownLoading:Z

.field private isFirstLaunch:Z

.field private isPlayAnimation:Z

.field private isResumed:Z

.field private lastAnimationPath:Ljava/lang/String;

.field private lastDownloadProgress:I

.field private launcherView:Landroid/view/View;

.field private mAnimationDateTextView:Landroid/widget/TextView;

.field private mAnimationVideoView:Landroid/widget/VideoView;

.field private mAnimationWebView:Lpl/droidsonroids/gif/GifImageView;

.field private mAnimationWeekTextView:Landroid/widget/TextView;

.field private mDownlaodListener:Lcom/autoxing/delivery/download/DownlaodListener;

.field private mEventController:Lcom/autoxing/delivery/controller/EventController;

.field private mJsEngine:Lcom/autoxing/delivery/js/JsEngine;

.field private mMyWSListener:Lcom/autoxing/delivery/websocket/MyWSListener;

.field private mOnJsEngineListener:Lcom/autoxing/delivery/js/JsEngine$OnJsEngineListener;

.field private mOnSmartTrayListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;

.field private final mSysSettings:Lcom/autoxing/delivery/view/SysSettingsView;

.field private mTaskNameTextView:Landroid/widget/TextView;

.field private mTaskTimeLayout:Landroid/widget/LinearLayout;

.field private mTaskTimeTextView:Landroid/widget/TextView;

.field private mUpdateController:Lcom/autoxing/delivery/controller/UpdateController;

.field private mVideoView:Landroid/widget/VideoView;

.field private mWaitImageView:Landroid/widget/ImageView;

.field private mWebViewClient:Landroid/webkit/WebViewClient;

.field private mainThread:Lcom/autoxing/delivery/MainThread;

.field private neturalView:Landroid/widget/ImageView;

.field private nowTime:Ljava/lang/String;

.field private onTouchListener:Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;

.field p:Landroid/os/Process;

.field private screenIndex:I

.field private taskThread:Ljava/lang/Thread;

.field private taskTime:I

.field private tasktimer:Ljava/util/Timer;

.field private timer:Ljava/util/Timer;

.field private webView:Landroid/webkit/WebView;

.field private wifiStateReceiver:Lcom/autoxing/delivery/MainActivity$WifiStateReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetaudioPlayer(Lcom/autoxing/delivery/MainActivity;)Lcom/autoxing/delivery/util/AudioPlayer;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/MainActivity;->audioPlayer:Lcom/autoxing/delivery/util/AudioPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdownIndex(Lcom/autoxing/delivery/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/autoxing/delivery/MainActivity;->downIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastDownloadProgress(Lcom/autoxing/delivery/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/autoxing/delivery/MainActivity;->lastDownloadProgress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationDateTextView(Lcom/autoxing/delivery/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationDateTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventController(Lcom/autoxing/delivery/MainActivity;)Lcom/autoxing/delivery/controller/EventController;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/MainActivity;->mEventController:Lcom/autoxing/delivery/controller/EventController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskTimeTextView(Lcom/autoxing/delivery/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/MainActivity;->mTaskTimeTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWebViewClient(Lcom/autoxing/delivery/MainActivity;)Landroid/webkit/WebViewClient;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/MainActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnowTime(Lcom/autoxing/delivery/MainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/MainActivity;->nowTime:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscreenIndex(Lcom/autoxing/delivery/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/autoxing/delivery/MainActivity;->screenIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettaskTime(Lcom/autoxing/delivery/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/autoxing/delivery/MainActivity;->taskTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwebView(Lcom/autoxing/delivery/MainActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdownIndex(Lcom/autoxing/delivery/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/autoxing/delivery/MainActivity;->downIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisDownLoading(Lcom/autoxing/delivery/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autoxing/delivery/MainActivity;->isDownLoading:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastDownloadProgress(Lcom/autoxing/delivery/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/autoxing/delivery/MainActivity;->lastDownloadProgress:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnowTime(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->nowTime:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscreenIndex(Lcom/autoxing/delivery/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/autoxing/delivery/MainActivity;->screenIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtaskTime(Lcom/autoxing/delivery/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/autoxing/delivery/MainActivity;->taskTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwebView(Lcom/autoxing/delivery/MainActivity;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeTimeStr(Lcom/autoxing/delivery/MainActivity;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/MainActivity;->changeTimeStr(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdynamicLoadLauchLogo(Lcom/autoxing/delivery/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/autoxing/delivery/MainActivity;->dynamicLoadLauchLogo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetNowDTime(Lcom/autoxing/delivery/MainActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/autoxing/delivery/MainActivity;->getNowDTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideSplashView(Lcom/autoxing/delivery/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/autoxing/delivery/MainActivity;->hideSplashView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitWebView(Lcom/autoxing/delivery/MainActivity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autoxing/delivery/MainActivity;->initWebView(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadWebView(Lcom/autoxing/delivery/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/autoxing/delivery/MainActivity;->loadWebView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadWebView(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/MainActivity;->loadWebView(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecreateWebView(Lcom/autoxing/delivery/MainActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/MainActivity;->recreateWebView(Landroid/webkit/WebView;)Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 108
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/autoxing/delivery/MainActivity;->isDownLoading:Z

    .line 118
    iput-boolean v0, p0, Lcom/autoxing/delivery/MainActivity;->isResumed:Z

    .line 122
    new-instance v1, Lcom/autoxing/delivery/view/SysSettingsView;

    invoke-direct {v1}, Lcom/autoxing/delivery/view/SysSettingsView;-><init>()V

    iput-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mSysSettings:Lcom/autoxing/delivery/view/SysSettingsView;

    .line 123
    new-instance v1, Lcom/autoxing/delivery/js/JsEngine;

    invoke-direct {v1}, Lcom/autoxing/delivery/js/JsEngine;-><init>()V

    iput-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mJsEngine:Lcom/autoxing/delivery/js/JsEngine;

    .line 253
    new-instance v1, Lcom/autoxing/delivery/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/MainActivity$4;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    iput-object v1, p0, Lcom/autoxing/delivery/MainActivity;->UsbBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 279
    new-instance v1, Lcom/autoxing/delivery/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/MainActivity$5;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    iput-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    const/4 v1, 0x0

    .line 733
    iput-object v1, p0, Lcom/autoxing/delivery/MainActivity;->p:Landroid/os/Process;

    .line 779
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/autoxing/delivery/MainActivity;->innerHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    .line 825
    iput v1, p0, Lcom/autoxing/delivery/MainActivity;->lastDownloadProgress:I

    .line 1040
    iput v0, p0, Lcom/autoxing/delivery/MainActivity;->downIndex:I

    .line 1042
    new-instance v1, Lcom/autoxing/delivery/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/MainActivity$11;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    iput-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mDownlaodListener:Lcom/autoxing/delivery/download/DownlaodListener;

    .line 1093
    iput v0, p0, Lcom/autoxing/delivery/MainActivity;->screenIndex:I

    .line 1095
    new-instance v1, Lcom/autoxing/delivery/MainActivity$12;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/MainActivity$12;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    iput-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mMyWSListener:Lcom/autoxing/delivery/websocket/MyWSListener;

    .line 1156
    new-instance v1, Lcom/autoxing/delivery/MainActivity$13;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/MainActivity$13;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    iput-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mOnSmartTrayListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;

    .line 1361
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/autoxing/delivery/MainActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 1403
    iput-boolean v0, p0, Lcom/autoxing/delivery/MainActivity;->isPlayAnimation:Z

    const-string v0, ""

    .line 1404
    iput-object v0, p0, Lcom/autoxing/delivery/MainActivity;->lastAnimationPath:Ljava/lang/String;

    .line 1651
    new-instance v0, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    iput-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mOnJsEngineListener:Lcom/autoxing/delivery/js/JsEngine$OnJsEngineListener;

    .line 1668
    new-instance v0, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    iput-object v0, p0, Lcom/autoxing/delivery/MainActivity;->onTouchListener:Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;

    return-void
.end method

.method private final calculateView(Landroid/widget/VideoView;II)V
    .locals 4

    .line 642
    invoke-virtual {p1}, Landroid/widget/VideoView;->getWidth()I

    move-result v0

    .line 643
    invoke-virtual {p1}, Landroid/widget/VideoView;->getHeight()I

    move-result v1

    .line 648
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 649
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 650
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 651
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v2, 0x40000000    # 2.0f

    if-ge p2, v0, :cond_0

    if-lt p3, v1, :cond_0

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, v1

    div-float/2addr p2, p3

    float-to-int p3, p2

    .line 656
    invoke-direct {p0, p1, p3}, Lcom/autoxing/delivery/MainActivity;->reSetVideoViewWidth(Landroid/widget/VideoView;I)V

    int-to-float p3, v3

    cmpl-float v0, p3, p2

    if-lez v0, :cond_1

    sub-float/2addr p3, p2

    div-float/2addr p3, v2

    float-to-int p2, p3

    .line 658
    invoke-direct {p0, p1, p2}, Lcom/autoxing/delivery/MainActivity;->reSetViewMargin(Landroid/widget/VideoView;I)V

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    if-lt p3, v1, :cond_1

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, v1

    div-float/2addr p2, p3

    float-to-int p3, p2

    .line 663
    invoke-direct {p0, p1, p3}, Lcom/autoxing/delivery/MainActivity;->reSetVideoViewWidth(Landroid/widget/VideoView;I)V

    int-to-float p3, v3

    cmpl-float v0, p3, p2

    if-lez v0, :cond_1

    sub-float/2addr p3, p2

    div-float/2addr p3, v2

    float-to-int p2, p3

    .line 665
    invoke-direct {p0, p1, p2}, Lcom/autoxing/delivery/MainActivity;->reSetViewMargin(Landroid/widget/VideoView;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private changeTimeStr(I)Ljava/lang/String;
    .locals 10

    const-string v0, "s"

    const/16 v1, 0x3c

    if-gt p1, v1, :cond_0

    .line 1517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const-string v2, "min"

    const-string v3, "0"

    const/16 v4, 0xa

    const/16 v5, 0xe10

    const-string v6, ""

    if-le p1, v1, :cond_3

    if-gt p1, v5, :cond_3

    .line 1519
    div-int/lit8 v5, p1, 0x3c

    .line 1520
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-ge v5, v4, :cond_1

    .line 1522
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1524
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v5, v1

    sub-int/2addr p1, v5

    .line 1526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-ge p1, v4, :cond_2

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-lez p1, :cond_6

    .line 1531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    if-le p1, v5, :cond_8

    .line 1534
    div-int/lit16 v7, p1, 0xe10

    .line 1535
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "h"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    mul-int/2addr v7, v5

    sub-int/2addr p1, v7

    if-lez p1, :cond_7

    .line 1538
    div-int/lit8 v5, p1, 0x3c

    .line 1539
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-ge v5, v4, :cond_4

    .line 1541
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1543
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v5, v1

    sub-int/2addr p1, v5

    .line 1545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-ge p1, v4, :cond_5

    .line 1547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-lez p1, :cond_6

    .line 1550
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    move-object p1, v2

    goto :goto_0

    :cond_7
    move-object p1, v8

    goto :goto_0

    :cond_8
    move-object p1, v6

    :goto_0
    return-object p1
.end method

.method private dynamicLoadLauchLogo()V
    .locals 6

    .line 589
    invoke-direct {p0}, Lcom/autoxing/delivery/MainActivity;->setHomeActivity()V

    const-string v0, "launcher/config.properties"

    const-string v1, "lauchType"

    const-string v2, "0"

    .line 590
    invoke-static {v0, v1, v2}, Lcom/autoxing/delivery/util/ConfigUtils;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 591
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/autoxing/delivery/MainActivity;->isFirstLaunch:Z

    .line 592
    sget-object v3, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isFirstLaunch="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/autoxing/delivery/MainActivity;->isFirstLaunch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-boolean v3, p0, Lcom/autoxing/delivery/MainActivity;->isFirstLaunch:Z

    const-string v4, "1"

    if-eqz v3, :cond_0

    .line 594
    invoke-static {v0, v1, v4}, Lcom/autoxing/delivery/util/ConfigUtils;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "logoType"

    .line 597
    invoke-static {v0, v1, v2}, Lcom/autoxing/delivery/util/ConfigUtils;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    sget-object v2, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "logoType=>"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f070077

    .line 600
    invoke-virtual {p0, v2}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 601
    iget-object v3, p0, Lcom/autoxing/delivery/MainActivity;->neturalView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    iget-object v3, p0, Lcom/autoxing/delivery/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 604
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const-string v1, "neturalFilePath"

    const-string v2, ""

    .line 606
    invoke-static {v0, v1, v2}, Lcom/autoxing/delivery/util/ConfigUtils;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    sget-object v1, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "neturalFilePath=%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-static {v0}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f060056

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 609
    invoke-static {v0}, Lcom/autoxing/delivery/util/FileUtils;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 611
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 613
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 614
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 619
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    goto :goto_0

    .line 621
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/autoxing/delivery/util/FileUtils;->isImage(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity;->neturalView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 623
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->neturalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 626
    :cond_2
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->neturalView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 627
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->neturalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 631
    :cond_3
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->neturalView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 632
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->neturalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 636
    :cond_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 638
    :goto_0
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->launcherView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private findViewIndex(Landroid/webkit/WebView;)I
    .locals 4

    .line 349
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 350
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 352
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getH5Url(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 701
    invoke-static {p1}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 705
    :cond_0
    invoke-static {}, Lcom/autoxing/delivery/controller/NetConfigManager;->getManager()Lcom/autoxing/delivery/controller/NetConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/controller/NetConfigManager;->getNetConfig()Lcom/autoxing/delivery/bean/NetConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 706
    invoke-virtual {v0}, Lcom/autoxing/delivery/bean/NetConfig;->getH5_ip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 709
    :cond_1
    invoke-virtual {v0}, Lcom/autoxing/delivery/bean/NetConfig;->getH5_ip()Ljava/lang/String;

    move-result-object p1

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://%s:8080/dist/index.html?stamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private getJsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "js_%s"

    .line 1244
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNowDTime()Ljava/lang/String;
    .locals 6

    .line 1624
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1625
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1626
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xb

    .line 1628
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0xc

    .line 1629
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1632
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    .line 1634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-ge v1, v5, :cond_1

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1640
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNowWeek()Ljava/lang/String;
    .locals 4

    .line 1644
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    .line 1645
    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    .line 1646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "result"

    .line 1730
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1731
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionFromJsLocalStoryPoiList"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:voiceAssistantResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private hideSplashView()V
    .locals 2

    .line 1673
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->launcherView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1674
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v0}, Lcom/autoxing/delivery/util/VideoViewUtils;->relase(Landroid/widget/VideoView;)V

    return-void
.end method

.method private initWebView(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 2

    .line 372
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 373
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 374
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 375
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 377
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "sans-serif"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    .line 378
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 380
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string p2, "apk"

    .line 381
    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$actionFromJsReadFileList$6(Lcom/alibaba/fastjson/JSONArray;Ljava/io/File;)Z
    .locals 3

    .line 1314
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "fileName"

    .line 1315
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    invoke-static {p1}, Lcom/autoxing/delivery/util/FileUtils;->getFileType(Ljava/io/File;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "mimeType"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$dynamicLoadLauchLogo$0(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$dynamicLoadLauchLogo$1(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$playAnimation$9(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1447
    sget-object p0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "mAnimationVideoView,onError,what=%d,extra=%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private loadWebView()V
    .locals 1

    const/4 v0, 0x0

    .line 697
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/MainActivity;->loadWebView(Ljava/lang/String;)V

    return-void
.end method

.method private loadWebView(Ljava/lang/String;)V
    .locals 4

    const-string v0, "auto_time"

    const/4 v1, 0x1

    .line 715
    invoke-static {p0, v0, v1}, Lcom/autoxing/delivery/util/Utils;->setSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "auto_time_zone"

    const/4 v2, 0x0

    .line 716
    invoke-static {p0, v0, v2}, Lcom/autoxing/delivery/util/Utils;->setSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, ""

    .line 718
    invoke-virtual {p0, v0}, Lcom/autoxing/delivery/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/dist/index.html?a="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/MainActivity;->getH5Url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 721
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 722
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u52a0\u8f7d\u5728\u7ebf\u7f51\u9875=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 725
    sget-object p1, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bfb\u53d6\u4e0b\u8f7d\u7f51\u9875=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 728
    :cond_1
    sget-object p1, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "\u8bfb\u53d6asset\u7f51\u9875"

    invoke-static {p1, v0}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/dist/index.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private openSystemPage(Ljava/lang/String;)V
    .locals 3

    .line 786
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->innerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 792
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->innerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 796
    :cond_0
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->innerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private playAnimation(Ljava/lang/String;ZLcom/autoxing/delivery/js/model/AnimationInfo;)Z
    .locals 5

    .line 1407
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1408
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1409
    iput-object v1, p0, Lcom/autoxing/delivery/MainActivity;->timer:Ljava/util/Timer;

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->tasktimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1412
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1413
    iput-object v1, p0, Lcom/autoxing/delivery/MainActivity;->tasktimer:Ljava/util/Timer;

    .line 1415
    :cond_1
    iget-boolean v0, p0, Lcom/autoxing/delivery/MainActivity;->isPlayAnimation:Z

    const/4 v1, 0x0

    if-ne v0, p2, :cond_3

    if-eqz p2, :cond_2

    .line 1417
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->lastAnimationPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    .line 1421
    :cond_3
    iput-boolean p2, p0, Lcom/autoxing/delivery/MainActivity;->isPlayAnimation:Z

    .line 1422
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->lastAnimationPath:Ljava/lang/String;

    .line 1423
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationVideoView:Landroid/widget/VideoView;

    invoke-static {v0}, Lcom/autoxing/delivery/util/VideoViewUtils;->relase(Landroid/widget/VideoView;)V

    .line 1424
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "playAnimation animationPath=%s,play=%b"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    if-eqz p2, :cond_5

    .line 1426
    invoke-virtual {p3}, Lcom/autoxing/delivery/js/model/AnimationInfo;->getThemePrimaryColor()Ljava/lang/String;

    .line 1427
    invoke-virtual {p3}, Lcom/autoxing/delivery/js/model/AnimationInfo;->getTaskName()Ljava/lang/String;

    .line 1428
    invoke-virtual {p3}, Lcom/autoxing/delivery/js/model/AnimationInfo;->getTaskTime()I

    move-result p2

    iput p2, p0, Lcom/autoxing/delivery/MainActivity;->taskTime:I

    .line 1429
    invoke-direct {p0, p2}, Lcom/autoxing/delivery/MainActivity;->changeTimeStr(I)Ljava/lang/String;

    .line 1430
    invoke-virtual {p3}, Lcom/autoxing/delivery/js/model/AnimationInfo;->getType()I

    .line 1431
    invoke-static {p1}, Lcom/autoxing/delivery/util/FileUtils;->isVideo(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1432
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationVideoView:Landroid/widget/VideoView;

    invoke-virtual {p2, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1433
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationVideoView:Landroid/widget/VideoView;

    new-instance p3, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    invoke-virtual {p2, p3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1446
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationVideoView:Landroid/widget/VideoView;

    new-instance p3, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {p3}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1450
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationVideoView:Landroid/widget/VideoView;

    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1451
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->requestFocus()Z

    goto :goto_0

    .line 1473
    :cond_4
    invoke-static {p1}, Lcom/autoxing/delivery/util/FileUtils;->isGif(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1474
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1475
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationVideoView:Landroid/widget/VideoView;

    invoke-virtual {p2, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1476
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationWebView:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p2, v1}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    .line 1477
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationWebView:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p2}, Lpl/droidsonroids/gif/GifImageView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1478
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationWebView:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p2, p1}, Lpl/droidsonroids/gif/GifImageView;->setTag(Ljava/lang/Object;)V

    .line 1479
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationWebView:Lpl/droidsonroids/gif/GifImageView;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "file://"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Lpl/droidsonroids/gif/GifImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 1502
    :cond_5
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1503
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationWebView:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    .line 1504
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1505
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationDateTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1506
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationWeekTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1507
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mWaitImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1508
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mTaskTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1509
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mTaskNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_0
    return v4
.end method

.method private final reSetVideoViewWidth(Landroid/widget/VideoView;I)V
    .locals 1

    .line 671
    invoke-virtual {p1}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 672
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 673
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final reSetViewMargin(Landroid/widget/VideoView;I)V
    .locals 3

    .line 678
    invoke-virtual {p1}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 681
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 682
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 684
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 685
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 688
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 691
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 692
    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private receivedServiceIp()V
    .locals 2

    .line 1689
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "receivedServiceIp"

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$19;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/MainActivity$19;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1713
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private recreateWebView(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 5

    .line 360
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewIndex(Landroid/webkit/WebView;)I

    move-result v0

    .line 361
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 362
    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 363
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 364
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 365
    new-instance v3, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-virtual {p1}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 367
    invoke-virtual {v1, v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v3
.end method

.method private setHomeActivity()V
    .locals 6

    .line 580
    :try_start_0
    invoke-static {}, Lcom/autoxing/delivery/bean/TimeCost;->newInstance()Lcom/autoxing/delivery/bean/TimeCost;

    move-result-object v0

    const-string v1, "cmd package set-home-activity com.autoxing.delivery/com.autoxing.delivery.MainActivity"

    .line 581
    invoke-static {p0, v1}, Lcom/autoxing/delivery/controller/AndroidSDKAdapter;->execShell(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 582
    sget-object v2, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "setHomeActivity,result = %d,costTime=%d ms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0}, Lcom/autoxing/delivery/bean/TimeCost;->cost()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 584
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setNetConfig(Ljava/lang/String;)V
    .locals 2

    .line 1363
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$16;

    invoke-direct {v1, p0, p1}, Lcom/autoxing/delivery/MainActivity$16;-><init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public actionFromJs(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public actionFromJsAdGetConfigInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1037
    invoke-static {}, Lcom/autoxing/delivery/download/DownloadManager;->getManager()Lcom/autoxing/delivery/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/download/DownloadManager;->getConfigInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public actionFromJsAdStartDownload(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1015
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionFromJsAdStartDownload "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-static {}, Lcom/autoxing/delivery/download/DownloadManager;->getManager()Lcom/autoxing/delivery/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/download/DownloadManager;->start(Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsAdStartDownload(Ljava/lang/String;Z)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1021
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "actionFromJsAdStartDownload jsonStr=%s,isSyncData = %b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1023
    invoke-static {}, Lcom/autoxing/delivery/download/DownloadManager;->getManager()Lcom/autoxing/delivery/download/DownloadManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/autoxing/delivery/download/DownloadManager;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 1025
    :cond_0
    invoke-static {}, Lcom/autoxing/delivery/download/DownloadManager;->getManager()Lcom/autoxing/delivery/download/DownloadManager;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/autoxing/delivery/download/DownloadManager;->start(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public actionFromJsAdStopDownload()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1031
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "actionFromJsAdStopDownload"

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-static {}, Lcom/autoxing/delivery/download/DownloadManager;->getManager()Lcom/autoxing/delivery/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/download/DownloadManager;->stop()V

    return-void
.end method

.method public actionFromJsAppVersion()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 813
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 816
    :try_start_0
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 819
    :catch_0
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u83b7\u53d6\u7248\u672c\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "10000,10000"

    .line 821
    :goto_0
    sget-object v1, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u83b7\u53d6\u7248\u672c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public actionFromJsCheckChassisNet()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "cat /sys/class/net/eth1/operstate"

    .line 1748
    invoke-static {v0}, Lcom/autoxing/delivery/controller/AndroidSDKAdapter;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1749
    sget-object v1, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Broadcast factory.service successfully-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public actionFromJsCompress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 763
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionFromJsCompress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/autoxing/delivery/MainActivity$7;-><init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 776
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public actionFromJsCompressZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1274
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p3, v1, v4

    const-string v4, "actionFromJsCompressZip zipFilePath = %s ,filePath = %s, password = %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/autoxing/delivery/util/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 1277
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1278
    invoke-static {p3}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    invoke-static {p2, p1}, Lcom/autoxing/delivery/util/ZipUtils;->packageZip(Ljava/util/List;Ljava/lang/String;)V

    return v3

    .line 1282
    :cond_0
    invoke-static {p2, p1, p3}, Lcom/autoxing/delivery/util/ZipUtils;->packageZip(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 1285
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public actionFromJsConnectAdScreen()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1062
    invoke-static {}, Lcom/autoxing/delivery/websocket/MyWSManager;->getManager()Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->start()V

    return-void
.end method

.method public actionFromJsDisConnectAdScreen()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1067
    invoke-static {}, Lcom/autoxing/delivery/websocket/MyWSManager;->getManager()Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->stop()V

    return-void
.end method

.method public actionFromJsDownLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 828
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionFromJsDownLoad"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-boolean v0, p0, Lcom/autoxing/delivery/MainActivity;->isDownLoading:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 830
    sget-object p1, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string p2, "actionFromJsDownLoad\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014isDownLoadding\u2014"

    invoke-static {p1, p2}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    new-instance p1, Lcom/autoxing/delivery/MainActivity$8;

    invoke-direct {p1, p0}, Lcom/autoxing/delivery/MainActivity$8;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 839
    :cond_0
    iput-boolean v1, p0, Lcom/autoxing/delivery/MainActivity;->isDownLoading:Z

    const/4 v0, -0x1

    .line 840
    iput v0, p0, Lcom/autoxing/delivery/MainActivity;->lastDownloadProgress:I

    .line 841
    invoke-static {}, Lcom/autoxing/delivery/util/DownLoadUtil;->get()Lcom/autoxing/delivery/util/DownLoadUtil;

    move-result-object v0

    new-instance v1, Lcom/autoxing/delivery/MainActivity$9;

    invoke-direct {v1, p0, p3}, Lcom/autoxing/delivery/MainActivity$9;-><init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/autoxing/delivery/util/DownLoadUtil;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;)V

    return-void
.end method

.method public actionFromJsDownLoadLoop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 901
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionFromJsDownLoad"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x1

    .line 912
    iput-boolean p5, p0, Lcom/autoxing/delivery/MainActivity;->isDownLoading:Z

    const/4 p5, -0x1

    .line 913
    iput p5, p0, Lcom/autoxing/delivery/MainActivity;->lastDownloadProgress:I

    .line 914
    invoke-static {}, Lcom/autoxing/delivery/util/DownLoadUtil;->get()Lcom/autoxing/delivery/util/DownLoadUtil;

    move-result-object v0

    new-instance v4, Lcom/autoxing/delivery/MainActivity$10;

    invoke-direct {v4, p0, p3}, Lcom/autoxing/delivery/MainActivity$10;-><init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/autoxing/delivery/util/DownLoadUtil;->loopDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsDownLoadLoopStop()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 896
    invoke-static {}, Lcom/autoxing/delivery/util/DownLoadUtil;->get()Lcom/autoxing/delivery/util/DownLoadUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/util/DownLoadUtil;->loopDownloadStop()V

    return-void
.end method

.method public actionFromJsEnableAndroid4G()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1358
    invoke-static {}, Lcom/autoxing/delivery/util/Utils;->isOldRobot()Z

    move-result v0

    return v0
.end method

.method public actionFromJsFactoryService()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1336
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$15;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/MainActivity$15;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1347
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public actionFromJsGetAppMode()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "logoType"

    const-string v1, "0"

    const-string v2, "launcher/config.properties"

    .line 1196
    invoke-static {v2, v0, v1}, Lcom/autoxing/delivery/util/ConfigUtils;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public actionFromJsGetData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "launcher/config.properties"

    .line 1254
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/MainActivity;->getJsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/autoxing/delivery/util/ConfigUtils;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public actionFromJsGetDoorStatus()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1331
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getDoorStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public actionFromJsGetTimeZoneList(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1225
    new-instance v0, Lcom/autoxing/delivery/controller/TimeZoneController;

    invoke-direct {v0}, Lcom/autoxing/delivery/controller/TimeZoneController;-><init>()V

    .line 1226
    invoke-virtual {v0, p0, p1}, Lcom/autoxing/delivery/controller/TimeZoneController;->getTimeZoneList(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public actionFromJsGoRouteMap()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1006
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "actionFromJsGoRouteMap"

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 1008
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.robot.drawmap"

    const-string v2, "com.robot.drawmap.MainActivity"

    .line 1009
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    invoke-virtual {p0, v0}, Lcom/autoxing/delivery/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public actionFromJsHandleWifi(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 472
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUniMPEventCallback=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",data=>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "data"

    .line 474
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "event"

    .line 475
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 476
    sget-object v5, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v5, "openBroadcast"

    .line 478
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 479
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->wifiStateReceiver:Lcom/autoxing/delivery/MainActivity$WifiStateReceiver;

    if-nez p1, :cond_8

    .line 480
    new-instance p1, Lcom/autoxing/delivery/MainActivity$WifiStateReceiver;

    invoke-direct {p1, p0, v7}, Lcom/autoxing/delivery/MainActivity$WifiStateReceiver;-><init>(Lcom/autoxing/delivery/MainActivity;Lcom/autoxing/delivery/MainActivity$WifiStateReceiver-IA;)V

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->wifiStateReceiver:Lcom/autoxing/delivery/MainActivity$WifiStateReceiver;

    .line 481
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 482
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 483
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 484
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 485
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/autoxing/delivery/MainActivity;->wifiStateReceiver:Lcom/autoxing/delivery/MainActivity$WifiStateReceiver;

    invoke-virtual {v0, v5, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_0
    const-string v5, "closeBroadcast"

    .line 488
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 489
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->wifiStateReceiver:Lcom/autoxing/delivery/MainActivity$WifiStateReceiver;

    if-eqz p1, :cond_8

    .line 490
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->wifiStateReceiver:Lcom/autoxing/delivery/MainActivity$WifiStateReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 491
    iput-object v7, p0, Lcom/autoxing/delivery/MainActivity;->wifiStateReceiver:Lcom/autoxing/delivery/MainActivity$WifiStateReceiver;

    goto/16 :goto_0

    :cond_1
    const-string v5, "list"

    .line 493
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 494
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/autoxing/delivery/util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/util/WifiUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autoxing/delivery/util/WifiUtils;->getWifiList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 495
    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    const-string v5, "connect"

    .line 496
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "ssid"

    if-eqz v5, :cond_4

    .line 497
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "password"

    .line 498
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/autoxing/delivery/util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/util/WifiUtils;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Lcom/autoxing/delivery/util/WifiUtils;->connectWifi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 501
    invoke-static {p0}, Lcom/autoxing/delivery/controller/WifiController;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/WifiController;

    move-result-object v7

    invoke-virtual {v7, v5, p1}, Lcom/autoxing/delivery/controller/WifiController;->storeWifiInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    const-string v5, "info"

    .line 504
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 505
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/autoxing/delivery/util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/util/WifiUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autoxing/delivery/util/WifiUtils;->getWifiConnectionInfo()Ljava/lang/String;

    move-result-object p1

    const-string v5, "\""

    .line 506
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string v5, "forget"

    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 508
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 509
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/autoxing/delivery/util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/util/WifiUtils;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/autoxing/delivery/util/WifiUtils;->forget(Ljava/lang/String;)V

    .line 510
    invoke-static {p0}, Lcom/autoxing/delivery/controller/WifiController;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/WifiController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/autoxing/delivery/controller/WifiController;->forget(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 511
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const-string v5, "enable"

    .line 512
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 513
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/autoxing/delivery/util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/util/WifiUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autoxing/delivery/util/WifiUtils;->getWifiEnable()Z

    move-result p1

    .line 514
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const-string v6, "setEnable"

    .line 515
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 516
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 517
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/autoxing/delivery/util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/util/WifiUtils;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/autoxing/delivery/util/WifiUtils;->setWifiEnable(Z)Z

    move-result p1

    .line 518
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_8
    :goto_0
    sget-object p1, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public actionFromJsInitRobot(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1117
    invoke-static {}, Lcom/autoxing/delivery/download/DownloadManager;->getManager()Lcom/autoxing/delivery/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/download/DownloadManager;->setRobotId(Ljava/lang/String;)V

    .line 1118
    invoke-static {}, Lcom/autoxing/delivery/websocket/MyWSManager;->getManager()Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->setRobotId(Ljava/lang/String;)V

    .line 1119
    invoke-static {}, Lcom/autoxing/delivery/controller/BirthModeController;->getInstance()Lcom/autoxing/delivery/controller/BirthModeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/controller/BirthModeController;->setRobotId(Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsInstallApk(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 757
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionFromJsInstallApk"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mUpdateController:Lcom/autoxing/delivery/controller/UpdateController;

    invoke-virtual {v0, p0, p1}, Lcom/autoxing/delivery/controller/UpdateController;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsLaunchApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1236
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "actionFromJsLaunchApp,packageName=%s,className=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 1238
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1239
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    invoke-virtual {p0, v0}, Lcom/autoxing/delivery/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public actionFromJsLocalStoryPoiList(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1741
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionFromJsLocalStoryPoiList"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    invoke-static {}, Lcom/autoxing/delivery/controller/NetConfigManager;->getManager()Lcom/autoxing/delivery/controller/NetConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/controller/NetConfigManager;->saveAssistantConfig(Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsNetStatus()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 420
    invoke-static {p0}, Lcom/autoxing/delivery/controller/WifiController;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/WifiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/controller/WifiController;->getNetStatus()I

    move-result v0

    return v0
.end method

.method public actionFromJsNetSystemUsable()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->actionFromJsNetWorkInfo()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 433
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 435
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v1, 0x10

    .line 436
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    return v0
.end method

.method public actionFromJsNetWorkInfo()I
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 445
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 446
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 447
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 452
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 465
    :goto_0
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7f51\u7edc\u7c7b\u578b\u4e3a=>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public actionFromJsOpenSysSetting()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "android.settings.SETTINGS"

    .line 782
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/MainActivity;->openSystemPage(Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsOpenSystemLauncher()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1264
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "actionFromJsOpenSystemLauncher"

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-static {}, Lcom/autoxing/delivery/util/Utils;->isOldRobot()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.reglink.launcher4"

    const-string v1, "com.reglink.launcher4.LauncherActivity"

    .line 1266
    invoke-virtual {p0, v0, v1}, Lcom/autoxing/delivery/MainActivity;->actionFromJsLaunchApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.android.launcher3"

    const-string v1, "com.android.launcher3.uioverrides.QuickstepLauncher"

    .line 1268
    invoke-virtual {p0, v0, v1}, Lcom/autoxing/delivery/MainActivity;->actionFromJsLaunchApp(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public actionFromJsOpenWifiSetting()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "android.settings.WIFI_SETTINGS"

    .line 807
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/MainActivity;->openSystemPage(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public actionFromJsPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 967
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 968
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->audioPlayer:Lcom/autoxing/delivery/util/AudioPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/autoxing/delivery/util/AudioPlayer;->playLocal(Ljava/lang/String;F)V

    goto :goto_0

    .line 971
    :cond_0
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity;->audioPlayer:Lcom/autoxing/delivery/util/AudioPlayer;

    invoke-virtual {v1, v0, p2}, Lcom/autoxing/delivery/util/AudioPlayer;->play(IF)V

    .line 974
    invoke-static {}, Lcom/autoxing/delivery/controller/BirthModeController;->getInstance()Lcom/autoxing/delivery/controller/BirthModeController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/autoxing/delivery/controller/BirthModeController;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :cond_1
    sget-object p2, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "actionFromJsPlay\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014id\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public actionFromJsPlayScreenVideo(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1719
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPlayScreenVideo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    invoke-static {}, Lcom/autoxing/delivery/websocket/MyWSManager;->getManager()Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->setPlayScreenVideo(Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsReadFileList(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1311
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "actionFromJsReadFileList filePath = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1313
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, v0}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/alibaba/fastjson/JSONArray;)V

    invoke-virtual {v1, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 1321
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public actionFromJsReadNetConfig()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1206
    invoke-static {}, Lcom/autoxing/delivery/controller/NetConfigManager;->getManager()Lcom/autoxing/delivery/controller/NetConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/controller/NetConfigManager;->readNetConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public actionFromJsRemoveData(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "launcher/config.properties"

    .line 1259
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/MainActivity;->getJsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/autoxing/delivery/util/ConfigUtils;->remove(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1373
    invoke-static {p0}, Lcom/autoxing/delivery/controller/ResourceController;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/ResourceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/controller/ResourceController;->actionFromJsRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public actionFromJsSaveLogcatToFile()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 736
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public actionFromJsSaveNetConfig(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1201
    invoke-static {}, Lcom/autoxing/delivery/controller/NetConfigManager;->getManager()Lcom/autoxing/delivery/controller/NetConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/controller/NetConfigManager;->saveNetConfig(Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsSendDoorCmd(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1326
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->sendDoorCmd(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public actionFromJsSetAdScreenSleepMode(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1072
    invoke-static {}, Lcom/autoxing/delivery/websocket/MyWSManager;->getManager()Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->setSleepMode(Z)V

    return-void
.end method

.method public actionFromJsSetAppMode(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1190
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionFromJsSetAppMode=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "launcher/config.properties"

    const-string v1, "logoType"

    .line 1191
    invoke-static {v0, v1, p1}, Lcom/autoxing/delivery/util/ConfigUtils;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsSetData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "launcher/config.properties"

    .line 1249
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/MainActivity;->getJsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/autoxing/delivery/util/ConfigUtils;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsSetNetMode(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "Android"

    goto :goto_0

    :cond_0
    const-string p1, "Chassis"

    .line 1353
    :goto_0
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/MainActivity;->setNetConfig(Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsSetSleepMode(Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1211
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionFromJsSetSleepMode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/autoxing/delivery/MainActivity;->isResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-boolean v0, p0, Lcom/autoxing/delivery/MainActivity;->isResumed:Z

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mEventController:Lcom/autoxing/delivery/controller/EventController;

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/controller/EventController;->setSleepMode(Z)V

    :cond_0
    return-void
.end method

.method public actionFromJsSetSmartTrayLight(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1128
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->setSmartTrayLight(Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsSetTimeZone(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1219
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionFromJsSetTimeZone="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    invoke-static {p0, p1}, Lcom/autoxing/delivery/util/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsStartWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1179
    new-instance v0, Lcom/autoxing/delivery/MainActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/autoxing/delivery/MainActivity$14;-><init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public actionFromJsStop()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 984
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->audioPlayer:Lcom/autoxing/delivery/util/AudioPlayer;

    invoke-virtual {v0}, Lcom/autoxing/delivery/util/AudioPlayer;->stop()V

    .line 985
    invoke-static {}, Lcom/autoxing/delivery/controller/BirthModeController;->getInstance()Lcom/autoxing/delivery/controller/BirthModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/controller/BirthModeController;->stop()V

    return-void
.end method

.method public actionFromJsTransResource2AdScreen(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1077
    invoke-static {}, Lcom/autoxing/delivery/websocket/MyWSManager;->getManager()Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->chooseAdResource(Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsTransResource2AdScreenWithPath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1082
    invoke-static {}, Lcom/autoxing/delivery/websocket/MyWSManager;->getManager()Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->chooseAdResourceWithPath(Ljava/lang/String;)V

    return-void
.end method

.method public actionFromJsUnCompressZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1292
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p3, v1, v4

    const-string v4, "actionFromJsUnCompressZip zipFilePath = %s ,filePath = %s, password = %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1295
    invoke-static {v0}, Lcom/autoxing/delivery/util/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 1296
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1297
    invoke-static {p3}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    invoke-static {p1, p2}, Lcom/autoxing/delivery/util/ZipUtils;->unzipAll(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1301
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/autoxing/delivery/util/ZipUtils;->unzipAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 1304
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public actionFromJsUpdateAdScreenSetting(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1087
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "volume"

    .line 1088
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "bright"

    .line 1089
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 1090
    :cond_1
    invoke-static {}, Lcom/autoxing/delivery/websocket/MyWSManager;->getManager()Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/autoxing/delivery/websocket/MyWSManager;->updateSetting(II)V

    return-void
.end method

.method public actionFromJsWebRefresh(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 745
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5237\u65b0\u7f51\u9875"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    new-instance v0, Lcom/autoxing/delivery/MainActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/autoxing/delivery/MainActivity$6;-><init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public beginCheckSmartTrayStatus(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1133
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->beginCheckSmartTrayStatus(Ljava/lang/String;)V

    return-void
.end method

.method public changeDateTimerAction(I)V
    .locals 7

    .line 1591
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/MainActivity;->timer:Ljava/util/Timer;

    .line 1594
    new-instance v2, Lcom/autoxing/delivery/MainActivity$18;

    invoke-direct {v2, p0}, Lcom/autoxing/delivery/MainActivity$18;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    .line 1620
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    int-to-long v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public changeTaskTimerAction(I)V
    .locals 7

    .line 1559
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/MainActivity;->tasktimer:Ljava/util/Timer;

    .line 1562
    new-instance v2, Lcom/autoxing/delivery/MainActivity$17;

    invoke-direct {v2, p0}, Lcom/autoxing/delivery/MainActivity$17;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    .line 1586
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity;->tasktimer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    int-to-long v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public checkSmartTrayIsOnLine()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1148
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->checkSmartTrayIsOnLine()Z

    move-result v0

    return v0
.end method

.method public endCheckSmartTrayStatus()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1138
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->endCheckSmartTrayStatus()V

    return-void
.end method

.method public filterTheWrongTrayIdx(ZLjava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1153
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->filterTheWrongTrayIdx(ZLjava/lang/String;)V

    return-void
.end method

.method public getLastTrayStatusList()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1143
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getLastTrayStatusList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFirstLauch()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1231
    iget-boolean v0, p0, Lcom/autoxing/delivery/MainActivity;->isFirstLaunch:Z

    return v0
.end method

.method public killMyself()V
    .locals 1

    .line 1123
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method synthetic lambda$dynamicLoadLauchLogo$2$com-autoxing-delivery-MainActivity(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/autoxing/delivery/MainActivity;->calculateView(Landroid/widget/VideoView;II)V

    const/4 v0, 0x1

    .line 616
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 617
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method synthetic lambda$new$10$com-autoxing-delivery-MainActivity(Ljava/lang/String;Lcom/autoxing/delivery/js/model/AnimationInfo;)V
    .locals 1

    .line 1656
    invoke-virtual {p2}, Lcom/autoxing/delivery/js/model/AnimationInfo;->isPlay()Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/autoxing/delivery/MainActivity;->playAnimation(Ljava/lang/String;ZLcom/autoxing/delivery/js/model/AnimationInfo;)Z

    .line 1657
    invoke-virtual {p2}, Lcom/autoxing/delivery/js/model/AnimationInfo;->isPlay()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/autoxing/delivery/js/model/AnimationInfo;->isSleepAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1659
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mEventController:Lcom/autoxing/delivery/controller/EventController;

    invoke-virtual {p1}, Lcom/autoxing/delivery/controller/EventController;->enterStandby()V

    goto :goto_0

    .line 1662
    :cond_0
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mEventController:Lcom/autoxing/delivery/controller/EventController;

    invoke-virtual {p1}, Lcom/autoxing/delivery/controller/EventController;->exitStandby()V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$11$com-autoxing-delivery-MainActivity(Ljava/lang/String;Lcom/autoxing/delivery/js/model/AnimationInfo;)Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;
    .locals 1

    .line 1652
    iget-boolean v0, p0, Lcom/autoxing/delivery/MainActivity;->isResumed:Z

    if-nez v0, :cond_0

    .line 1653
    sget-object p1, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->APP_BACKGROUND:Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    return-object p1

    .line 1655
    :cond_0
    new-instance v0, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;Lcom/autoxing/delivery/js/model/AnimationInfo;)V

    invoke-virtual {p0, v0}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1665
    sget-object p1, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->SUCCESS:Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    return-object p1
.end method

.method synthetic lambda$new$12$com-autoxing-delivery-MainActivity()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    .line 1669
    invoke-direct {p0, v2, v0, v1}, Lcom/autoxing/delivery/MainActivity;->playAnimation(Ljava/lang/String;ZLcom/autoxing/delivery/js/model/AnimationInfo;)Z

    return-void
.end method

.method synthetic lambda$openSystemPage$3$com-autoxing-delivery-MainActivity(Ljava/lang/String;)V
    .locals 1

    .line 789
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0, v0}, Lcom/autoxing/delivery/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$openSystemPage$4$com-autoxing-delivery-MainActivity()V
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mSysSettings:Lcom/autoxing/delivery/view/SysSettingsView;

    invoke-virtual {v0, p0}, Lcom/autoxing/delivery/view/SysSettingsView;->show(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$openSystemPage$5$com-autoxing-delivery-MainActivity()V
    .locals 3

    .line 797
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 799
    invoke-virtual {p0, v0}, Lcom/autoxing/delivery/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$playAnimation$7$com-autoxing-delivery-MainActivity(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 1436
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationWebView:Lpl/droidsonroids/gif/GifImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    .line 1437
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1438
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationVideoView:Landroid/widget/VideoView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$playAnimation$8$com-autoxing-delivery-MainActivity(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1434
    new-instance v0, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1442
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/autoxing/delivery/MainActivity;->calculateView(Landroid/widget/VideoView;II)V

    const/4 v0, 0x1

    .line 1443
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1444
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 142
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001c

    .line 143
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->setContentView(I)V

    const p1, 0x7f070049

    .line 144
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->launcherView:Landroid/view/View;

    const p1, 0x7f070089

    .line 145
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mVideoView:Landroid/widget/VideoView;

    const p1, 0x7f070048

    .line 146
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->neturalView:Landroid/widget/ImageView;

    const p1, 0x7f070022

    .line 147
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationVideoView:Landroid/widget/VideoView;

    const p1, 0x7f070024

    .line 148
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/droidsonroids/gif/GifImageView;

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationWebView:Lpl/droidsonroids/gif/GifImageView;

    const p1, 0x7f070020

    .line 149
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationDateTextView:Landroid/widget/TextView;

    const p1, 0x7f070021

    .line 153
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationWeekTextView:Landroid/widget/TextView;

    const p1, 0x7f070023

    .line 154
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mWaitImageView:Landroid/widget/ImageView;

    const p1, 0x7f07001e

    .line 155
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mTaskTimeLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f07001d

    .line 156
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mTaskNameTextView:Landroid/widget/TextView;

    const p1, 0x7f07001f

    .line 157
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mTaskTimeTextView:Landroid/widget/TextView;

    .line 159
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationDateTextView:Landroid/widget/TextView;

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 160
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationWeekTextView:Landroid/widget/TextView;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 161
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mTaskNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 162
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mTaskTimeTextView:Landroid/widget/TextView;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 165
    sget-object p1, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/autoxing/delivery/util/Tools;->setSdk(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/autoxing/delivery/MainActivity;->dynamicLoadLauchLogo()V

    .line 167
    sget-object p1, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/autoxing/delivery/util/Tools;->setSdk(Ljava/lang/String;)V

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 168
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 169
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/autoxing/delivery/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    const-string p1, "android.permission.ACCESS_WIFI_STATE"

    .line 171
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/autoxing/delivery/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    const-string p1, ""

    .line 174
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 176
    new-instance p1, Lcom/autoxing/delivery/util/AudioPlayer;

    invoke-direct {p1, p0}, Lcom/autoxing/delivery/util/AudioPlayer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->audioPlayer:Lcom/autoxing/delivery/util/AudioPlayer;

    const p1, 0x7f07008a

    .line 177
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    .line 178
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-direct {p0, p1, v0}, Lcom/autoxing/delivery/MainActivity;->initWebView(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 181
    new-instance p1, Lcom/autoxing/delivery/controller/EventController;

    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/autoxing/delivery/MainActivity;->onTouchListener:Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;

    invoke-direct {p1, v0, v1, v2}, Lcom/autoxing/delivery/controller/EventController;-><init>(Landroid/webkit/WebView;Landroid/content/Context;Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;)V

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mEventController:Lcom/autoxing/delivery/controller/EventController;

    .line 182
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationWebView:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0, v1}, Lcom/autoxing/delivery/controller/EventController;->start(Landroid/view/View;Landroid/view/View;)V

    .line 183
    new-instance p1, Lcom/autoxing/delivery/controller/UpdateController;

    invoke-direct {p1}, Lcom/autoxing/delivery/controller/UpdateController;-><init>()V

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mUpdateController:Lcom/autoxing/delivery/controller/UpdateController;

    .line 184
    invoke-virtual {p1, p0}, Lcom/autoxing/delivery/controller/UpdateController;->start(Landroid/content/Context;)V

    .line 185
    invoke-direct {p0}, Lcom/autoxing/delivery/MainActivity;->loadWebView()V

    .line 186
    invoke-static {p0}, Lcom/autoxing/delivery/util/KeyboardCover;->assistActivity(Landroid/app/Activity;)V

    .line 187
    sget-object p1, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/autoxing/delivery/download/DownloadManager;->getManager()Lcom/autoxing/delivery/download/DownloadManager;

    move-result-object p1

    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mDownlaodListener:Lcom/autoxing/delivery/download/DownlaodListener;

    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/download/DownloadManager;->setListener(Lcom/autoxing/delivery/download/DownlaodListener;)V

    .line 190
    invoke-static {}, Lcom/autoxing/delivery/websocket/MyWSManager;->getManager()Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object p1

    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mMyWSListener:Lcom/autoxing/delivery/websocket/MyWSListener;

    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->setListener(Lcom/autoxing/delivery/websocket/MyWSListener;)V

    .line 191
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mOnSmartTrayListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;

    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->setListener(Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;)V

    .line 192
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->start()V

    .line 193
    invoke-static {p0}, Lcom/autoxing/delivery/controller/WifiController;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/WifiController;

    move-result-object p1

    new-instance v0, Lcom/autoxing/delivery/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/MainActivity$1;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/controller/WifiController;->start(Lcom/autoxing/delivery/controller/OnWifiListener;)V

    .line 204
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mJsEngine:Lcom/autoxing/delivery/js/JsEngine;

    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity;->mOnJsEngineListener:Lcom/autoxing/delivery/js/JsEngine$OnJsEngineListener;

    invoke-virtual {p1, v0, v1}, Lcom/autoxing/delivery/js/JsEngine;->start(Landroid/content/Context;Lcom/autoxing/delivery/js/JsEngine$OnJsEngineListener;)V

    .line 205
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/AndroidServiceMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->start()V

    .line 206
    invoke-direct {p0}, Lcom/autoxing/delivery/MainActivity;->receivedServiceIp()V

    .line 208
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity;->mAnimationDateTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/autoxing/delivery/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/MainActivity$2;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 217
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 219
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->UsbBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/autoxing/delivery/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/MainActivity;->handleIntent(Landroid/content/Intent;)V

    .line 228
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/autoxing/delivery/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/MainActivity$3;-><init>(Lcom/autoxing/delivery/MainActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 249
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1378
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 1379
    invoke-static {p0}, Lcom/autoxing/delivery/controller/WifiController;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/WifiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/controller/WifiController;->stop()V

    .line 1380
    invoke-static {p0}, Lcom/autoxing/delivery/controller/LogController;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/LogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/controller/LogController;->stop()V

    .line 1381
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mJsEngine:Lcom/autoxing/delivery/js/JsEngine;

    invoke-virtual {v0}, Lcom/autoxing/delivery/js/JsEngine;->stop()V

    .line 1382
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/AndroidServiceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->stop()V

    .line 1383
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mainThread:Lcom/autoxing/delivery/MainThread;

    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {v0}, Lcom/autoxing/delivery/MainThread;->stop()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1395
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyDown,keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1400
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1725
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1726
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/MainActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 403
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 404
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onActivity=>onPause"

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:callAppStatusChanged(false)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/autoxing/delivery/MainActivity;->isResumed:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1390
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 386
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 387
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onActivity=>onResume"

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Lcom/autoxing/delivery/MainActivity;->isResumed:Z

    .line 389
    invoke-static {p0}, Lcom/autoxing/delivery/controller/AndroidSDKAdapter;->setScreenBrightness(Landroid/content/Context;)Z

    .line 390
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mEventController:Lcom/autoxing/delivery/controller/EventController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/controller/EventController;->setSleepMode(Z)V

    .line 391
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mSysSettings:Lcom/autoxing/delivery/view/SysSettingsView;

    invoke-virtual {v0}, Lcom/autoxing/delivery/view/SysSettingsView;->hide()V

    .line 393
    invoke-static {}, Lcom/autoxing/delivery/controller/NetConfigManager;->getManager()Lcom/autoxing/delivery/controller/NetConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/controller/NetConfigManager;->isConfigChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetConfigManager"

    const-string v1, "\u91cd\u65b0\u52a0\u8f7dwebview"

    .line 394
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 395
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/MainActivity;->loadWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:callAppStatusChanged(true)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 411
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 412
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onActivity=>onStop"

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mEventController:Lcom/autoxing/delivery/controller/EventController;

    invoke-virtual {v0}, Lcom/autoxing/delivery/controller/EventController;->stopCheckStandby()V

    .line 414
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity;->mEventController:Lcom/autoxing/delivery/controller/EventController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/controller/EventController;->setSleepMode(Z)V

    return-void
.end method

.method public rebootAndroid()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    const-string v0, "reboot -p"

    .line 1680
    invoke-static {v0}, Lcom/autoxing/delivery/controller/AndroidSDKAdapter;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 1681
    sget-object v0, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "rebootAndroid successfully"

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1683
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setVolume(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 991
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 992
    invoke-static {v2}, Lcom/autoxing/delivery/util/Utils;->setMediaServiceVolume(F)Z

    move-result v3

    .line 993
    sget-object v4, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v5, "setMediaServiceVolume = %s,success = %b"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    .line 995
    invoke-virtual {p0}, Lcom/autoxing/delivery/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/autoxing/delivery/util/Utils;->setAudioVolume(Landroid/content/Context;F)Z

    move-result v2

    .line 996
    sget-object v3, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    const-string v4, "setAudioVolume = %s,success = %b"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 999
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1000
    sget-object v2, Lcom/autoxing/delivery/MainActivity;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "setAudioVolume = %s,failed"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
