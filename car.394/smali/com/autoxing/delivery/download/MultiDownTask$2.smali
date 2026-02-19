.class Lcom/autoxing/delivery/download/MultiDownTask$2;
.super Ljava/util/TimerTask;
.source "MultiDownTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/download/MultiDownTask;->startTimer(Lcom/alibaba/fastjson/JSONArray;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/download/MultiDownTask;

.field final synthetic val$dataList:Lcom/alibaba/fastjson/JSONArray;

.field final synthetic val$totalSize:J


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/download/MultiDownTask;Lcom/alibaba/fastjson/JSONArray;J)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/autoxing/delivery/download/MultiDownTask$2;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    iput-object p2, p0, Lcom/autoxing/delivery/download/MultiDownTask$2;->val$dataList:Lcom/alibaba/fastjson/JSONArray;

    iput-wide p3, p0, Lcom/autoxing/delivery/download/MultiDownTask$2;->val$totalSize:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-static {v2}, Lcom/autoxing/delivery/download/MultiDownTask;->-$$Nest$fgetdownLoadStatusMaps(Lcom/autoxing/delivery/download/MultiDownTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    move v5, v4

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    .line 102
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_3

    .line 103
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/autoxing/delivery/download/lib/DownloadStatus;

    .line 104
    invoke-virtual {v12}, Lcom/autoxing/delivery/download/lib/DownloadStatus;->getDownSize()J

    move-result-wide v15

    add-long/2addr v13, v15

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v12, v2, v4

    const-string v3, "downloadStatus = %s"

    .line 105
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiDownTask"

    invoke-static {v3, v2}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v12}, Lcom/autoxing/delivery/download/lib/DownloadStatus;->getStatus()I

    move-result v2

    const-wide/16 v17, 0x1

    if-eq v2, v15, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-long v10, v10, v17

    goto :goto_1

    :cond_1
    add-long v8, v8, v17

    goto :goto_1

    :cond_2
    add-long v6, v6, v17

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 118
    :cond_3
    iget-object v1, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->val$dataList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v6, v1

    if-nez v1, :cond_4

    .line 119
    iget-object v1, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-virtual {v1}, Lcom/autoxing/delivery/download/MultiDownTask;->stop()V

    .line 120
    iget-object v1, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-static {v1}, Lcom/autoxing/delivery/download/MultiDownTask;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/download/MultiDownTask;)Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;

    move-result-object v1

    iget-wide v2, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->val$totalSize:J

    iget-object v4, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->val$dataList:Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v1, v2, v3, v4}, Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;->onTaskComplete(JLcom/alibaba/fastjson/JSONArray;)V

    goto :goto_3

    :cond_4
    add-long/2addr v6, v8

    .line 121
    iget-object v1, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->val$dataList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v6, v1

    if-nez v1, :cond_5

    .line 122
    iget-object v1, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-virtual {v1}, Lcom/autoxing/delivery/download/MultiDownTask;->stop()V

    .line 123
    iget-object v1, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-static {v1}, Lcom/autoxing/delivery/download/MultiDownTask;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/download/MultiDownTask;)Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;

    move-result-object v1

    iget-wide v2, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->val$totalSize:J

    iget-object v4, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->val$dataList:Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v1, v2, v3, v4}, Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;->onTaskFailed(JLcom/alibaba/fastjson/JSONArray;)V

    goto :goto_3

    :cond_5
    const-wide/16 v1, 0x0

    cmp-long v3, v10, v1

    if-lez v3, :cond_7

    .line 125
    iget-object v3, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-static {v3}, Lcom/autoxing/delivery/download/MultiDownTask;->-$$Nest$fgetlastDownLength(Lcom/autoxing/delivery/download/MultiDownTask;)J

    move-result-wide v3

    sub-long v3, v13, v3

    cmp-long v5, v3, v1

    if-gez v5, :cond_6

    .line 127
    iget-object v3, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-static {v3, v13, v14}, Lcom/autoxing/delivery/download/MultiDownTask;->-$$Nest$fputlastDownLength(Lcom/autoxing/delivery/download/MultiDownTask;J)V

    move-wide v9, v1

    goto :goto_2

    :cond_6
    move-wide v9, v3

    .line 130
    :goto_2
    iget-object v1, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-static {v1}, Lcom/autoxing/delivery/download/MultiDownTask;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/download/MultiDownTask;)Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;

    move-result-object v8

    iget-wide v1, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->val$totalSize:J

    iget-object v15, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->val$dataList:Lcom/alibaba/fastjson/JSONArray;

    move-wide v11, v13

    move-wide v3, v13

    move-wide v13, v1

    invoke-interface/range {v8 .. v15}, Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;->onTaskProgress(JJJLcom/alibaba/fastjson/JSONArray;)V

    .line 131
    iget-object v1, v0, Lcom/autoxing/delivery/download/MultiDownTask$2;->this$0:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-static {v1, v3, v4}, Lcom/autoxing/delivery/download/MultiDownTask;->-$$Nest$fputlastDownLength(Lcom/autoxing/delivery/download/MultiDownTask;J)V

    :cond_7
    :goto_3
    return-void
.end method
