.class public interface abstract Lcom/reglink/common/INaviSdk;
.super Ljava/lang/Object;
.source "INaviSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/common/INaviSdk$SpeedListener;,
        Lcom/reglink/common/INaviSdk$Listener2;,
        Lcom/reglink/common/INaviSdk$Listener;
    }
.end annotation


# static fields
.field public static final EVENT_APP_EXIT:I = 0x2

.field public static final EVENT_APP_START:I = 0x1

.field public static final EVENT_BACKGROUND:I = 0x20

.field public static final EVENT_FOREGROUND:I = 0x10

.field public static final EVENT_NAVI_EXIT:I = 0x8

.field public static final EVENT_NAVI_START:I = 0x4

.field public static final STATUS_EXITED:I = 0x1

.field public static final STATUS_NAVI_EXITED:I = 0x3

.field public static final STATUS_NAVI_STARTED:I = 0x2

.field public static final STATUS_STARTED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MapSdk"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract exit()V
.end method

.method public abstract getStatus()I
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isAppRunning()Z
.end method

.method public abstract isForeground()Z
.end method

.method public abstract isNaviRunning()Z
.end method

.method public abstract setListener(Lcom/reglink/common/INaviSdk$Listener;)V
.end method

.method public abstract setListener2(Lcom/reglink/common/INaviSdk$Listener2;)V
.end method

.method public abstract setSpeedListener(Lcom/reglink/common/INaviSdk$SpeedListener;)V
.end method

.method public abstract start()V
.end method
