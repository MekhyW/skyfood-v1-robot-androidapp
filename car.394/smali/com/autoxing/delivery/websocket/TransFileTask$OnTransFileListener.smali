.class public interface abstract Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;
.super Ljava/lang/Object;
.source "TransFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/websocket/TransFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTransFileListener"
.end annotation


# virtual methods
.method public abstract onBeginRead(Ljava/io/File;Ljava/lang/String;)V
.end method

.method public abstract onDataReceive([BJJ)V
.end method

.method public abstract onEndRead(Ljava/io/File;Ljava/lang/String;)V
.end method

.method public abstract onReadError(Ljava/io/File;Ljava/lang/String;)V
.end method
