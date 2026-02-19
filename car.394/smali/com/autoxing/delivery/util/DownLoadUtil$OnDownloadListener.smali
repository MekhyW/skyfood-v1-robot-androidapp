.class public interface abstract Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;
.super Ljava/lang/Object;
.source "DownLoadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/util/DownLoadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadByte(I)V
.end method

.method public abstract onDownloadFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onDownloadSuccess(Ljava/io/File;)V
.end method

.method public abstract onDownloading(I)V
.end method
