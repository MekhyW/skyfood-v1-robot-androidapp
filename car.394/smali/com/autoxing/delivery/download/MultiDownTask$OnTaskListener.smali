.class public interface abstract Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;
.super Ljava/lang/Object;
.source "MultiDownTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/download/MultiDownTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTaskListener"
.end annotation


# virtual methods
.method public abstract onTaskCancel(Lcom/alibaba/fastjson/JSONArray;)V
.end method

.method public abstract onTaskComplete(JLcom/alibaba/fastjson/JSONArray;)V
.end method

.method public abstract onTaskFailed(JLcom/alibaba/fastjson/JSONArray;)V
.end method

.method public abstract onTaskProgress(JJJLcom/alibaba/fastjson/JSONArray;)V
.end method

.method public abstract onTaskStart(Lcom/alibaba/fastjson/JSONArray;)V
.end method

.method public abstract onTaskStop(Lcom/alibaba/fastjson/JSONArray;)V
.end method
