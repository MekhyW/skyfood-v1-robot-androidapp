.class Lcom/autoxing/delivery/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity;->actionFromJsDownLoadLoop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/MainActivity;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$10;->this$0:Lcom/autoxing/delivery/MainActivity;

    iput-object p2, p0, Lcom/autoxing/delivery/MainActivity$10;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadByte(I)V
    .locals 3

    .line 955
    invoke-static {}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadbyte=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$10;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$10$4;

    invoke-direct {v1, p0, p1}, Lcom/autoxing/delivery/MainActivity$10$4;-><init>(Lcom/autoxing/delivery/MainActivity$10;I)V

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadFailed(Ljava/lang/Exception;)V
    .locals 1

    .line 944
    invoke-static {}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDownloadFail"

    invoke-static {p1, v0}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$10;->this$0:Lcom/autoxing/delivery/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fputisDownLoading(Lcom/autoxing/delivery/MainActivity;Z)V

    .line 946
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$10;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance v0, Lcom/autoxing/delivery/MainActivity$10$3;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/MainActivity$10$3;-><init>(Lcom/autoxing/delivery/MainActivity$10;)V

    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 1

    .line 917
    invoke-static {}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDownloadSuccess"

    invoke-static {p1, v0}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$10;->this$0:Lcom/autoxing/delivery/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fputisDownLoading(Lcom/autoxing/delivery/MainActivity;Z)V

    .line 919
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$10;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance v0, Lcom/autoxing/delivery/MainActivity$10$1;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/MainActivity$10$1;-><init>(Lcom/autoxing/delivery/MainActivity$10;)V

    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloading(I)V
    .locals 3

    .line 929
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$10;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetlastDownloadProgress(Lcom/autoxing/delivery/MainActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$10;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0, p1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fputlastDownloadProgress(Lcom/autoxing/delivery/MainActivity;I)V

    .line 931
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$10;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetlastDownloadProgress(Lcom/autoxing/delivery/MainActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 932
    invoke-static {}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloading=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$10;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$10$2;

    invoke-direct {v1, p0, p1}, Lcom/autoxing/delivery/MainActivity$10$2;-><init>(Lcom/autoxing/delivery/MainActivity$10;I)V

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
