.class Lcom/autoxing/delivery/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/MainActivity;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity;)V
    .locals 0

    .line 1156
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$13;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayAudio(Z)V
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$13;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetaudioPlayer(Lcom/autoxing/delivery/MainActivity;)Lcom/autoxing/delivery/util/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/util/AudioPlayer;->onPlayAudio(Z)V

    return-void
.end method

.method public onRawTrayStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSmartTrayStatus(Ljava/lang/String;)V
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$13;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$13$1;

    invoke-direct {v1, p0, p1}, Lcom/autoxing/delivery/MainActivity$13$1;-><init>(Lcom/autoxing/delivery/MainActivity$13;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
