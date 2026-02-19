.class public final Lcom/autoxing/delivery/util/VideoViewUtils;
.super Ljava/lang/Object;
.source "VideoViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static relase(Landroid/widget/VideoView;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 13
    invoke-virtual {p0}, Landroid/widget/VideoView;->suspend()V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :cond_0
    return-void
.end method
