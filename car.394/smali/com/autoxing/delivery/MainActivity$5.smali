.class Lcom/autoxing/delivery/MainActivity$5;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pageFinished:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/autoxing/delivery/MainActivity;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 280
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$5;->pageFinished:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 290
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$5;->pageFinished:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$5$1;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/MainActivity$5$1;-><init>(Lcom/autoxing/delivery/MainActivity$5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 306
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 307
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/autoxing/delivery/MainActivity$5;->pageFinished:Ljava/lang/Boolean;

    .line 308
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/controller/WifiController;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/WifiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/controller/WifiController;->onPageFinish()V

    .line 310
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/autoxing/delivery/MainActivity$5;->pageFinished:Ljava/lang/Boolean;

    .line 284
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/controller/WifiController;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/WifiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/controller/WifiController;->onPageStart()V

    .line 285
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 318
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 6

    .line 324
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    .line 328
    invoke-static {}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 329
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 330
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    const/4 p2, 0x2

    .line 331
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    aput-object v4, v3, p2

    .line 332
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 p2, 0x4

    .line 333
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, p2

    const/4 p2, 0x5

    .line 334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p2

    const-string p2, "onRenderProcessGone,detail.didCrash=%b,Exit=%d,parent=%s,view.getId=%d,view.getTag=%s,view.getVisibility()=%d"

    .line 328
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {p2}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$mdynamicLoadLauchLogo(Lcom/autoxing/delivery/MainActivity;)V

    .line 337
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {p2, p1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$mrecreateWebView(Lcom/autoxing/delivery/MainActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fputwebView(Lcom/autoxing/delivery/MainActivity;Landroid/webkit/WebView;)V

    .line 339
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {p1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetwebView(Lcom/autoxing/delivery/MainActivity;)Landroid/webkit/WebView;

    move-result-object p2

    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetmWebViewClient(Lcom/autoxing/delivery/MainActivity;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$minitWebView(Lcom/autoxing/delivery/MainActivity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 340
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {p1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetmEventController(Lcom/autoxing/delivery/MainActivity;)Lcom/autoxing/delivery/controller/EventController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 341
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {p1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetmEventController(Lcom/autoxing/delivery/MainActivity;)Lcom/autoxing/delivery/controller/EventController;

    move-result-object p1

    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {p2}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetwebView(Lcom/autoxing/delivery/MainActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/autoxing/delivery/controller/EventController;->updateWebView(Landroid/webkit/WebView;)V

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {p1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$mloadWebView(Lcom/autoxing/delivery/MainActivity;)V

    return v1
.end method
