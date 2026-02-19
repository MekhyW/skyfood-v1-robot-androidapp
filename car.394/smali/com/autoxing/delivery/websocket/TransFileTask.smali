.class public Lcom/autoxing/delivery/websocket/TransFileTask;
.super Ljava/lang/Object;
.source "TransFileTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;
    }
.end annotation


# instance fields
.field private cacheSize:I

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/io/File;

.field private mListener:Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7d000

    .line 17
    iput v0, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->cacheSize:I

    .line 21
    iput-object p1, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mFilePath:Ljava/io/File;

    .line 22
    iput-object p2, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mListener:Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;

    .line 23
    iput-object p3, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mFilePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 30
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mListener:Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;

    iget-object v1, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mFilePath:Ljava/io/File;

    iget-object v2, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mFileName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;->onBeginRead(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mFilePath:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    iget v1, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->cacheSize:I

    new-array v9, v1, [B

    const-wide/16 v1, 0x0

    .line 35
    :goto_0
    invoke-virtual {v0, v9}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    int-to-long v4, v3

    add-long v10, v1, v4

    .line 37
    new-array v2, v3, [B

    const/4 v1, 0x0

    .line 38
    invoke-static {v9, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v1, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mListener:Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;

    move-wide v3, v7

    move-wide v5, v10

    invoke-interface/range {v1 .. v6}, Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;->onDataReceive([BJJ)V

    move-wide v1, v10

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mListener:Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;

    iget-object v1, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mFilePath:Ljava/io/File;

    iget-object v2, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mFileName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;->onEndRead(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mListener:Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;

    iget-object v1, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mFilePath:Ljava/io/File;

    iget-object v2, p0, Lcom/autoxing/delivery/websocket/TransFileTask;->mFileName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;->onReadError(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
