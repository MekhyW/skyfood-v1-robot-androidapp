.class Lcom/autoxing/delivery/download/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/download/DownloadManager;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCancel(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 9

    const-string v0, "DownloadManager"

    const-string v1, "onTaskCancel"

    .line 206
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {v0}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$misCompleteDownload(Lcom/autoxing/delivery/download/DownloadManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {v0, p1}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$mupdateAdConfigFile(Lcom/autoxing/delivery/download/DownloadManager;Lcom/alibaba/fastjson/JSONArray;)V

    .line 209
    iget-object p1, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {p1}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$mgetTotalSize(Lcom/autoxing/delivery/download/DownloadManager;)J

    move-result-wide v6

    .line 210
    iget-object p1, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {p1}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/download/DownloadManager;)Lcom/autoxing/delivery/download/DownlaodListener;

    move-result-object p1

    new-instance v8, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    move-object v0, v8

    move-wide v4, v6

    invoke-direct/range {v0 .. v7}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {p1, v8}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    :cond_0
    return-void
.end method

.method public onTaskComplete(JLcom/alibaba/fastjson/JSONArray;)V
    .locals 9

    const-string v0, "DownloadManager"

    const-string v1, "onTaskComplete"

    .line 186
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {v0, p3}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$mupdateAdConfigFile(Lcom/autoxing/delivery/download/DownloadManager;Lcom/alibaba/fastjson/JSONArray;)V

    .line 189
    iget-object p3, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {p3}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/download/DownloadManager;)Lcom/autoxing/delivery/download/DownlaodListener;

    move-result-object p3

    new-instance v8, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    move-object v0, v8

    move-wide v4, p1

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {p3, v8}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    return-void
.end method

.method public onTaskFailed(JLcom/alibaba/fastjson/JSONArray;)V
    .locals 9

    const-string v0, "DownloadManager"

    const-string v1, "onTaskFailed"

    .line 194
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {v0}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$mgetFileSize(Lcom/autoxing/delivery/download/DownloadManager;)J

    move-result-wide v5

    cmp-long v0, v5, p1

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {v0, p3}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$mupdateAdConfigFile(Lcom/autoxing/delivery/download/DownloadManager;Lcom/alibaba/fastjson/JSONArray;)V

    .line 198
    iget-object p3, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {p3}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/download/DownloadManager;)Lcom/autoxing/delivery/download/DownlaodListener;

    move-result-object p3

    new-instance v8, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    move-object v0, v8

    move-wide v4, p1

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {p3, v8}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p3, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {p3}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/download/DownloadManager;)Lcom/autoxing/delivery/download/DownlaodListener;

    move-result-object p3

    new-instance v0, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    move-object v1, v0

    move-wide v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {p3, v0}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    :goto_0
    return-void
.end method

.method public onTaskProgress(JJJLcom/alibaba/fastjson/JSONArray;)V
    .locals 11

    move-object v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 226
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "onTaskProgress fileSize = %d,totalSize = %d,speed = %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadManager"

    invoke-static {v2, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, v0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {v1}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/download/DownloadManager;)Lcom/autoxing/delivery/download/DownlaodListener;

    move-result-object v1

    new-instance v10, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v3, 0x3

    move-object v2, v10

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {v1, v10}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    cmp-long v1, p3, p5

    if-nez v1, :cond_0

    .line 229
    iget-object v1, v0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    move-object/from16 v2, p7

    invoke-static {v1, v2}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$mupdateAdConfigFile(Lcom/autoxing/delivery/download/DownloadManager;Lcom/alibaba/fastjson/JSONArray;)V

    .line 230
    iget-object v1, v0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {v1}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/download/DownloadManager;)Lcom/autoxing/delivery/download/DownlaodListener;

    move-result-object v9

    new-instance v10, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    move-object v1, v10

    move-wide/from16 v5, p5

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {v9, v10}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    :cond_0
    return-void
.end method

.method public onTaskStart(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 9

    const-string v0, "DownloadManager"

    const-string v1, "onTaskStart"

    .line 176
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {v0}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$misCompleteDownload(Lcom/autoxing/delivery/download/DownloadManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {v0}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$mgetTotalSize(Lcom/autoxing/delivery/download/DownloadManager;)J

    move-result-wide v7

    .line 179
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {v0, p1}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$mupdateAdConfigFile(Lcom/autoxing/delivery/download/DownloadManager;Lcom/alibaba/fastjson/JSONArray;)V

    .line 180
    iget-object p1, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {p1}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/download/DownloadManager;)Lcom/autoxing/delivery/download/DownlaodListener;

    move-result-object p1

    new-instance v0, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    move-object v1, v0

    move-wide v5, v7

    invoke-direct/range {v1 .. v8}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {p1, v0}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    :cond_0
    return-void
.end method

.method public onTaskStop(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 9

    const-string v0, "DownloadManager"

    const-string v1, "onTaskStop"

    .line 216
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {v0}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$misCompleteDownload(Lcom/autoxing/delivery/download/DownloadManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {v0, p1}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$mupdateAdConfigFile(Lcom/autoxing/delivery/download/DownloadManager;Lcom/alibaba/fastjson/JSONArray;)V

    .line 219
    iget-object p1, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {p1}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$mgetTotalSize(Lcom/autoxing/delivery/download/DownloadManager;)J

    move-result-wide v6

    .line 220
    iget-object p1, p0, Lcom/autoxing/delivery/download/DownloadManager$1;->this$0:Lcom/autoxing/delivery/download/DownloadManager;

    invoke-static {p1}, Lcom/autoxing/delivery/download/DownloadManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/download/DownloadManager;)Lcom/autoxing/delivery/download/DownlaodListener;

    move-result-object p1

    new-instance v8, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    move-object v0, v8

    move-wide v4, v6

    invoke-direct/range {v0 .. v7}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {p1, v8}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    :cond_0
    return-void
.end method
