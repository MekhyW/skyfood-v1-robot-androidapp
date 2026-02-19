.class Lcom/autoxing/delivery/download/MultiDownTask$1;
.super Ljava/lang/Object;
.source "MultiDownTask.java"

# interfaces
.implements Lcom/autoxing/delivery/download/lib/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/download/MultiDownTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/download/MultiDownTask;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/download/MultiDownTask;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/autoxing/delivery/download/MultiDownTask$1;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 62
    iget-object p2, p0, Lcom/autoxing/delivery/download/MultiDownTask$1;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-static {p2}, Lcom/autoxing/delivery/download/MultiDownTask;->-$$Nest$fgetdownLoadStatusMaps(Lcom/autoxing/delivery/download/MultiDownTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autoxing/delivery/download/lib/DownloadStatus;

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 64
    invoke-virtual {p1, p2}, Lcom/autoxing/delivery/download/lib/DownloadStatus;->setStatus(I)V

    :cond_0
    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/autoxing/delivery/download/MultiDownTask$1;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-static {v0}, Lcom/autoxing/delivery/download/MultiDownTask;->-$$Nest$fgetdownLoadStatusMaps(Lcom/autoxing/delivery/download/MultiDownTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autoxing/delivery/download/lib/DownloadStatus;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/download/lib/DownloadStatus;->setStatus(I)V

    :cond_0
    return-void
.end method

.method public onDownloading(Ljava/lang/String;JJ)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/autoxing/delivery/download/MultiDownTask$1;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-static {v0}, Lcom/autoxing/delivery/download/MultiDownTask;->-$$Nest$fgetdownLoadStatusMaps(Lcom/autoxing/delivery/download/MultiDownTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autoxing/delivery/download/lib/DownloadStatus;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 54
    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/download/lib/DownloadStatus;->setStatus(I)V

    .line 55
    invoke-virtual {p1, p2, p3}, Lcom/autoxing/delivery/download/lib/DownloadStatus;->setTotalSize(J)V

    .line 56
    invoke-virtual {p1, p4, p5}, Lcom/autoxing/delivery/download/lib/DownloadStatus;->setDownSize(J)V

    :cond_0
    return-void
.end method
