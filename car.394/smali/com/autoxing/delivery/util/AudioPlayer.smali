.class public Lcom/autoxing/delivery/util/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPlayer"


# instance fields
.field private context:Landroid/content/Context;

.field private curVolume:F

.field private isPlaying:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/autoxing/delivery/util/AudioPlayer;->context:Landroid/content/Context;

    return-void
.end method

.method private fixVolume(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 54
    iget p1, p0, Lcom/autoxing/delivery/util/AudioPlayer;->curVolume:F

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/autoxing/delivery/util/AudioPlayer;->curVolume:F

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 55
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "fixVolume volume= %.1f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/autoxing/delivery/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method private playMeida(FLandroid/media/MediaPlayer;)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/autoxing/delivery/util/AudioPlayer;->stop()V

    .line 34
    iput p1, p0, Lcom/autoxing/delivery/util/AudioPlayer;->curVolume:F

    .line 35
    iput-object p2, p0, Lcom/autoxing/delivery/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 36
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V

    .line 37
    iget-object p1, p0, Lcom/autoxing/delivery/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 38
    iget-boolean p1, p0, Lcom/autoxing/delivery/util/AudioPlayer;->isPlaying:Z

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/util/AudioPlayer;->fixVolume(Z)V

    return-void
.end method


# virtual methods
.method public onPlayAudio(Z)V
    .locals 1

    .line 47
    iput-boolean p1, p0, Lcom/autoxing/delivery/util/AudioPlayer;->isPlaying:Z

    .line 48
    iget-object v0, p0, Lcom/autoxing/delivery/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/util/AudioPlayer;->fixVolume(Z)V

    :cond_0
    return-void
.end method

.method public play(IF)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "play rid = %d,volume= %.1f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/autoxing/delivery/util/AudioPlayer;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/autoxing/delivery/util/AudioPlayer;->playMeida(FLandroid/media/MediaPlayer;)V

    return-void
.end method

.method public playLocal(Ljava/lang/String;F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    .line 42
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "play path = %s,volume= %.1f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/autoxing/delivery/util/AudioPlayer;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/autoxing/delivery/util/AudioPlayer;->playMeida(FLandroid/media/MediaPlayer;)V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "AudioPlayer"

    const-string v1, "stop"

    .line 20
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/autoxing/delivery/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/autoxing/delivery/util/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
