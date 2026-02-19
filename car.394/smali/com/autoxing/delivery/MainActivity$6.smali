.class Lcom/autoxing/delivery/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity;->actionFromJsWebRefresh(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/MainActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$6;->this$0:Lcom/autoxing/delivery/MainActivity;

    iput-object p2, p0, Lcom/autoxing/delivery/MainActivity$6;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$6;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$mdynamicLoadLauchLogo(Lcom/autoxing/delivery/MainActivity;)V

    .line 750
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$6;->this$0:Lcom/autoxing/delivery/MainActivity;

    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity$6;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$mloadWebView(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V

    return-void
.end method
