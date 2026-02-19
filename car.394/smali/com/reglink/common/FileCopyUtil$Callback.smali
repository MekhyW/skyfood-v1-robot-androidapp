.class public interface abstract Lcom/reglink/common/FileCopyUtil$Callback;
.super Ljava/lang/Object;
.source "FileCopyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/FileCopyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCancelled(Lcom/reglink/common/FileCopyUtil;)V
.end method

.method public abstract onCompleted(Lcom/reglink/common/FileCopyUtil;)V
.end method

.method public abstract onFileCompleted(Lcom/reglink/common/FileCopyUtil;Ljava/lang/String;)V
.end method

.method public abstract onFileFail(Lcom/reglink/common/FileCopyUtil;Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onFileStart(Lcom/reglink/common/FileCopyUtil;Ljava/lang/String;I)V
.end method

.method public abstract onPrepared(Lcom/reglink/common/FileCopyUtil;)V
.end method

.method public abstract onStart(Lcom/reglink/common/FileCopyUtil;)V
.end method
