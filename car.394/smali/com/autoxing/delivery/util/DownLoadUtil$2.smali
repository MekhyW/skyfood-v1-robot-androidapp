.class Lcom/autoxing/delivery/util/DownLoadUtil$2;
.super Ljava/lang/Object;
.source "DownLoadUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/util/DownLoadUtil;->startLoop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

.field final synthetic val$destFileDir:Ljava/lang/String;

.field final synthetic val$destFileName:Ljava/lang/String;

.field final synthetic val$downLoadLength:I

.field final synthetic val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

.field final synthetic val$progress:I

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$tryNum:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/util/DownLoadUtil;ILcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

    iput p2, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$tryNum:I

    iput-object p3, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    iput p4, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$progress:I

    iput-object p5, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$url:Ljava/lang/String;

    iput-object p6, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileDir:Ljava/lang/String;

    iput-object p7, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileName:Ljava/lang/String;

    iput-object p8, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$token:Ljava/lang/String;

    iput p9, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$downLoadLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 12

    .line 142
    iget p1, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$tryNum:I

    const/4 v0, 0x0

    const-string v1, "%s startLoop-failed"

    const-string v2, "DownLoadUtil"

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    invoke-interface {p1, p2}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V

    .line 145
    iget-object p1, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    iget p2, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$progress:I

    invoke-interface {p1, p2}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadByte(I)V

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0x3e8

    .line 149
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$tryNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v2, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

    iget-object v5, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileDir:Ljava/lang/String;

    iget-object v7, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileName:Ljava/lang/String;

    iget-object v8, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    iget-object v9, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$token:Ljava/lang/String;

    iget v10, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$progress:I

    iget p1, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$tryNum:I

    add-int/lit8 v11, p1, -0x1

    invoke-virtual/range {v4 .. v11}, Lcom/autoxing/delivery/util/DownLoadUtil;->startLoop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;Ljava/lang/String;II)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 151
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$tryNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$tryNum:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

    iget-object v5, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileDir:Ljava/lang/String;

    iget-object v7, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileName:Ljava/lang/String;

    iget-object v8, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    iget-object v9, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$token:Ljava/lang/String;

    iget v10, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$progress:I

    iget p2, p0, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$tryNum:I

    add-int/lit8 v11, p2, -0x1

    invoke-virtual/range {v4 .. v11}, Lcom/autoxing/delivery/util/DownLoadUtil;->startLoop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;Ljava/lang/String;II)V

    .line 155
    throw p1
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "%s\u4e0b\u8f7d\u5347\u7ea7\u5305startLoop"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "DownLoadUtil"

    invoke-static {v3, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "\u4e0b\u8f7d\u5347\u7ea7\u5305startLoopResponse "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 165
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    const-string v7, "contentLength = 0"

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 167
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "%s\u4e0b\u8f7d\u5347\u7ea7\u5305startLoop-contentLength"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloading(I)V

    .line 169
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    iget v2, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$progress:I

    invoke-interface {v0, v2}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadByte(I)V

    .line 170
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x3e8

    .line 174
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    .line 176
    iget-object v6, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

    iget-object v8, v6, Lcom/autoxing/delivery/util/DownLoadUtil;->DownloadByte:[B

    iget-object v9, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileDir:Ljava/lang/String;

    iget-object v10, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileName:Ljava/lang/String;

    invoke-static {v8, v0, v9, v10}, Lcom/autoxing/delivery/util/DownLoadUtil;->-$$Nest$smaddBytes([B[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v6, Lcom/autoxing/delivery/util/DownLoadUtil;->DownloadByte:[B

    const-string v0, "content-range"

    move-object/from16 v6, p2

    .line 178
    invoke-virtual {v6, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v6, "%s\u4e0b\u8f7d\u5347\u7ea7\u5305startLoop-contentRange"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v4

    .line 180
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    new-instance v6, Ljava/io/IOException;

    const-string v7, "contentRange = null"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V

    .line 182
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    iget v6, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$progress:I

    invoke-interface {v0, v6}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadByte(I)V

    return-void

    :cond_1
    const-string v6, "/"

    .line 185
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 187
    iget v6, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$progress:I

    iget v8, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$downLoadLength:I

    add-int/2addr v6, v8

    add-int/lit8 v14, v6, 0x1

    if-le v0, v14, :cond_2

    .line 188
    iget-object v6, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

    iget-object v6, v6, Lcom/autoxing/delivery/util/DownLoadUtil;->IsStopDown:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    int-to-float v6, v14

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    int-to-float v0, v0

    div-float/2addr v6, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v6, v0

    float-to-int v0, v6

    .line 190
    iget-object v6, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    invoke-interface {v6, v0}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloading(I)V

    .line 191
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    invoke-interface {v0, v14}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadByte(I)V

    .line 192
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

    invoke-static {v0, v5}, Lcom/autoxing/delivery/util/DownLoadUtil;->-$$Nest$msleep(Lcom/autoxing/delivery/util/DownLoadUtil;I)V

    .line 193
    iget-object v8, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

    iget-object v9, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$url:Ljava/lang/String;

    iget-object v10, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileDir:Ljava/lang/String;

    iget-object v11, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileName:Ljava/lang/String;

    iget-object v12, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    iget-object v13, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$token:Ljava/lang/String;

    const/4 v15, 0x5

    invoke-virtual/range {v8 .. v15}, Lcom/autoxing/delivery/util/DownLoadUtil;->startLoop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_2
    if-le v0, v14, :cond_3

    .line 195
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

    iget-object v0, v0, Lcom/autoxing/delivery/util/DownLoadUtil;->IsStopDown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V

    .line 197
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    invoke-interface {v0, v4}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloading(I)V

    .line 198
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    invoke-interface {v0, v4}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadByte(I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "%s success-startLoop"

    new-array v6, v2, [Ljava/lang/Object;

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    invoke-interface {v0, v14}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadByte(I)V

    .line 202
    iget-object v6, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

    iget-object v7, v6, Lcom/autoxing/delivery/util/DownLoadUtil;->DownloadByte:[B

    iget-object v8, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileDir:Ljava/lang/String;

    iget-object v9, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileName:Ljava/lang/String;

    iget-object v10, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    const/4 v11, 0x5

    invoke-virtual/range {v6 .. v11}, Lcom/autoxing/delivery/util/DownLoadUtil;->saveByteToFile([BLjava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 206
    iget v6, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$tryNum:I

    if-nez v6, :cond_4

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "%s faield-startLoop"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v2, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    invoke-interface {v2, v0}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V

    .line 209
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    iget v2, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$progress:I

    invoke-interface {v0, v2}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadByte(I)V

    goto :goto_0

    .line 211
    :cond_4
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

    invoke-static {v0, v5}, Lcom/autoxing/delivery/util/DownLoadUtil;->-$$Nest$msleep(Lcom/autoxing/delivery/util/DownLoadUtil;I)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "%s failed-startLoop"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$tryNum:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v4, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

    iget-object v5, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$url:Ljava/lang/String;

    iget-object v6, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileDir:Ljava/lang/String;

    iget-object v7, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileName:Ljava/lang/String;

    iget-object v8, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    iget-object v9, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$token:Ljava/lang/String;

    iget v10, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$progress:I

    iget v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$tryNum:I

    add-int/lit8 v11, v0, -0x1

    invoke-virtual/range {v4 .. v11}, Lcom/autoxing/delivery/util/DownLoadUtil;->startLoop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;Ljava/lang/String;II)V

    goto :goto_0

    :cond_5
    const-string v0, "%s\u4e0b\u8f7d\u5347\u7ea7\u5305\u65e0\u6548"

    new-array v2, v4, [Ljava/lang/Object;

    .line 218
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4e0b\u8f7d\u5347\u7ea7\u5305\u65e0\u6548"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$destFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V

    .line 220
    iget-object v0, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    iget v2, v1, Lcom/autoxing/delivery/util/DownLoadUtil$2;->val$progress:I

    invoke-interface {v0, v2}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadByte(I)V

    :goto_0
    return-void
.end method
