.class Lcom/autoxing/delivery/MainActivity$5$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/autoxing/delivery/MainActivity$5$1;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity$5$1;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$5$1$1;->this$2:Lcom/autoxing/delivery/MainActivity$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$5$1$1;->this$2:Lcom/autoxing/delivery/MainActivity$5$1;

    iget-object v0, v0, Lcom/autoxing/delivery/MainActivity$5$1;->this$1:Lcom/autoxing/delivery/MainActivity$5;

    iget-object v0, v0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$mhideSplashView(Lcom/autoxing/delivery/MainActivity;)V

    return-void
.end method
