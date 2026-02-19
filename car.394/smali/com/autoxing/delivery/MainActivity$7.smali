.class Lcom/autoxing/delivery/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity;->actionFromJsCompress(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/MainActivity;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$zipFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$7;->this$0:Lcom/autoxing/delivery/MainActivity;

    iput-object p2, p0, Lcom/autoxing/delivery/MainActivity$7;->val$zipFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/autoxing/delivery/MainActivity$7;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 767
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$7;->val$zipFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity$7;->val$filePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/autoxing/delivery/util/CompressUitil;->uncompress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 768
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity$7;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance v2, Lcom/autoxing/delivery/MainActivity$7$1;

    invoke-direct {v2, p0, v0}, Lcom/autoxing/delivery/MainActivity$7$1;-><init>(Lcom/autoxing/delivery/MainActivity$7;I)V

    invoke-virtual {v1, v2}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
