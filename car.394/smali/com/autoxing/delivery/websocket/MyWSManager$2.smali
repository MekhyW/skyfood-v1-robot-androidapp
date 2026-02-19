.class Lcom/autoxing/delivery/websocket/MyWSManager$2;
.super Ljava/lang/Object;
.source "MyWSManager.java"

# interfaces
.implements Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/websocket/MyWSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/websocket/MyWSManager;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/websocket/MyWSManager;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginRead(Ljava/io/File;Ljava/lang/String;)V
    .locals 11

    .line 171
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$fputlastUpdateTime(Lcom/autoxing/delivery/websocket/MyWSManager;J)V

    .line 172
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$fputlastFileSize(Lcom/autoxing/delivery/websocket/MyWSManager;J)V

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 174
    invoke-static {p1}, Lcom/autoai/research/jtools/security/MD5Utils;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p1, v5, v6, p2}, Lcom/autoxing/delivery/websocket/DataHandler;->startTrans(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->sendData(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/websocket/MyWSManager;)Lcom/autoxing/delivery/websocket/MyWSListener;

    move-result-object p1

    iget-object v3, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    const/4 v4, 0x4

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v3 .. v10}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$mgenerateStatusData(Lcom/autoxing/delivery/websocket/MyWSManager;IJJJ)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    invoke-interface {p1, v0, p2}, Lcom/autoxing/delivery/websocket/MyWSListener;->onStatusChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onDataReceive([BJJ)V
    .locals 10

    .line 197
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->sendData([B)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$fgetlastUpdateTime(Lcom/autoxing/delivery/websocket/MyWSManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$fgetlastFileSize(Lcom/autoxing/delivery/websocket/MyWSManager;)J

    move-result-wide v0

    sub-long v8, p4, v0

    .line 201
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/websocket/MyWSManager;)Lcom/autoxing/delivery/websocket/MyWSListener;

    move-result-object p1

    iget-object v2, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    const/4 v3, 0x6

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v2 .. v9}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$mgenerateStatusData(Lcom/autoxing/delivery/websocket/MyWSManager;IJJJ)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x6

    invoke-interface {p1, p3, p2}, Lcom/autoxing/delivery/websocket/MyWSListener;->onStatusChanged(ILjava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$fputlastUpdateTime(Lcom/autoxing/delivery/websocket/MyWSManager;J)V

    .line 203
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p1, p4, p5}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$fputlastFileSize(Lcom/autoxing/delivery/websocket/MyWSManager;J)V

    :cond_0
    return-void
.end method

.method public onEndRead(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .line 181
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 182
    invoke-static {p1}, Lcom/autoai/research/jtools/security/MD5Utils;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p1, v4, v5, p2}, Lcom/autoxing/delivery/websocket/DataHandler;->stopTrans(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->sendData(Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/websocket/MyWSManager;)Lcom/autoxing/delivery/websocket/MyWSListener;

    move-result-object p1

    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    const/4 v1, 0x5

    const-wide/16 v6, 0x0

    move-wide v2, v4

    invoke-static/range {v0 .. v7}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$mgenerateStatusData(Lcom/autoxing/delivery/websocket/MyWSManager;IJJJ)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-interface {p1, v0, p2}, Lcom/autoxing/delivery/websocket/MyWSListener;->onStatusChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onReadError(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 190
    invoke-static {p1}, Lcom/autoai/research/jtools/security/MD5Utils;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object v2, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p1, v0, v1, p2}, Lcom/autoxing/delivery/websocket/DataHandler;->stopTrans(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->sendData(Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/websocket/MyWSManager;)Lcom/autoxing/delivery/websocket/MyWSListener;

    move-result-object p1

    iget-object p2, p0, Lcom/autoxing/delivery/websocket/MyWSManager$2;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$mgenerateStatusData(Lcom/autoxing/delivery/websocket/MyWSManager;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/autoxing/delivery/websocket/MyWSListener;->onStatusChanged(ILjava/lang/String;)V

    return-void
.end method
