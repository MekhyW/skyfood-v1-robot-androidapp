.class public Lcom/reglink/common/TencenMapSdk;
.super Landroid/content/BroadcastReceiver;
.source "TencenMapSdk.java"

# interfaces
.implements Lcom/reglink/common/INaviSdk;


# instance fields
.field private WECARNAVIAUTO_STANDARD_BROADCAST_RECV:Ljava/lang/String;

.field private WECARNAVIAUTO_STANDARD_BROADCAST_SEND:Ljava/lang/String;

.field context:Landroid/content/Context;

.field launched:Z

.field listener:Lcom/reglink/common/INaviSdk$Listener;

.field listener2:Lcom/reglink/common/INaviSdk$Listener2;

.field navi:Z

.field resumed:Z

.field speedListener:Lcom/reglink/common/INaviSdk$SpeedListener;

.field status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "WECARNAVIAUTO_STANDARD_BROADCAST_SEND"

    .line 15
    iput-object v0, p0, Lcom/reglink/common/TencenMapSdk;->WECARNAVIAUTO_STANDARD_BROADCAST_SEND:Ljava/lang/String;

    const-string v0, "WECARNAVIAUTO_STANDARD_BROADCAST_RECV"

    .line 16
    iput-object v0, p0, Lcom/reglink/common/TencenMapSdk;->WECARNAVIAUTO_STANDARD_BROADCAST_RECV:Ljava/lang/String;

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/reglink/common/TencenMapSdk;->status:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/reglink/common/TencenMapSdk;->resumed:Z

    .line 25
    iput-boolean v0, p0, Lcom/reglink/common/TencenMapSdk;->launched:Z

    .line 26
    iput-boolean v0, p0, Lcom/reglink/common/TencenMapSdk;->navi:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/reglink/common/TencenMapSdk;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public exit()V
    .locals 3

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/reglink/common/TencenMapSdk;->launched:Z

    .line 55
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/reglink/common/TencenMapSdk;->WECARNAVIAUTO_STANDARD_BROADCAST_RECV:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_TPYE"

    const/16 v2, 0x3ea

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "EXTRA_OPERA"

    const/4 v2, 0x1

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/reglink/common/TencenMapSdk;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getStatus()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/reglink/common/TencenMapSdk;->status:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 29
    iput-object p1, p0, Lcom/reglink/common/TencenMapSdk;->context:Landroid/content/Context;

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/reglink/common/TencenMapSdk;->WECARNAVIAUTO_STANDARD_BROADCAST_SEND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isAppRunning()Z
    .locals 2

    .line 63
    iget v0, p0, Lcom/reglink/common/TencenMapSdk;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isForeground()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/reglink/common/TencenMapSdk;->resumed:Z

    return v0
.end method

.method public isNaviRunning()Z
    .locals 2

    .line 73
    iget v0, p0, Lcom/reglink/common/TencenMapSdk;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 90
    iget-object p1, p0, Lcom/reglink/common/TencenMapSdk;->WECARNAVIAUTO_STANDARD_BROADCAST_SEND:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "KEY_TYPE"

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x7d2

    if-ne v1, v2, :cond_2

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "rg_on_direction"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string p1, "rg_on_current_speed"

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x45610000    # 3600.0f

    mul-float/2addr p1, v1

    const-string v1, "rg_on_next_road_name"

    .line 97
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "rg_on_dist_to_dest"

    .line 98
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "rg_on_distance"

    .line 99
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v1, "rg_on_time_to_dest"

    .line 100
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 102
    iget-object v2, p0, Lcom/reglink/common/TencenMapSdk;->listener:Lcom/reglink/common/INaviSdk$Listener;

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    move-object v3, p0

    .line 103
    invoke-interface/range {v2 .. v8}, Lcom/reglink/common/INaviSdk$Listener;->onGuideInfoChanged(Lcom/reglink/common/INaviSdk;ILjava/lang/String;III)V

    .line 106
    :cond_1
    iget-object p2, p0, Lcom/reglink/common/TencenMapSdk;->speedListener:Lcom/reglink/common/INaviSdk$SpeedListener;

    if-eqz p2, :cond_a

    float-to-int p1, p1

    .line 107
    invoke-interface {p2, p1}, Lcom/reglink/common/INaviSdk$SpeedListener;->onSpeed(I)V

    goto/16 :goto_1

    .line 110
    :cond_2
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_a

    .line 111
    iget p1, p0, Lcom/reglink/common/TencenMapSdk;->status:I

    const-string v1, "TYPE"

    const/4 v2, -0x1

    .line 112
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    const-string v2, "MapSdk"

    if-eq p2, v1, :cond_8

    const/4 v3, 0x2

    if-eq p2, v3, :cond_7

    const/4 v4, 0x3

    if-eq p2, v4, :cond_6

    const/4 v5, 0x4

    if-eq p2, v5, :cond_5

    const/4 v6, 0x6

    if-eq p2, v6, :cond_4

    const/4 v6, 0x7

    if-eq p2, v6, :cond_3

    const/16 v6, 0x16

    if-eq p2, v6, :cond_4

    const/16 v1, 0x17

    if-eq p2, v1, :cond_3

    goto :goto_0

    .line 157
    :cond_3
    iput v4, p0, Lcom/reglink/common/TencenMapSdk;->status:I

    .line 159
    iput-boolean v0, p0, Lcom/reglink/common/TencenMapSdk;->navi:Z

    const-string v0, "tencent navi exited"

    .line 160
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    goto :goto_0

    .line 148
    :cond_4
    iput v3, p0, Lcom/reglink/common/TencenMapSdk;->status:I

    .line 150
    iput-boolean v1, p0, Lcom/reglink/common/TencenMapSdk;->navi:Z

    const-string v0, "tencent navi started"

    .line 151
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto :goto_0

    .line 137
    :cond_5
    iput-boolean v0, p0, Lcom/reglink/common/TencenMapSdk;->resumed:Z

    const-string v0, "tencent background"

    .line 139
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x20

    goto :goto_0

    .line 131
    :cond_6
    iput-boolean v1, p0, Lcom/reglink/common/TencenMapSdk;->resumed:Z

    const-string v0, "tencent foreground"

    .line 133
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    goto :goto_0

    .line 124
    :cond_7
    iput v1, p0, Lcom/reglink/common/TencenMapSdk;->status:I

    .line 125
    iput-boolean v0, p0, Lcom/reglink/common/TencenMapSdk;->launched:Z

    const-string v0, "tencent exited"

    .line 127
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_0

    .line 118
    :cond_8
    iput v0, p0, Lcom/reglink/common/TencenMapSdk;->status:I

    .line 119
    iput-boolean v1, p0, Lcom/reglink/common/TencenMapSdk;->launched:Z

    const-string v0, "tencent started"

    .line 121
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 163
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "tencent map state changed:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget p2, p0, Lcom/reglink/common/TencenMapSdk;->status:I

    if-eq p1, p2, :cond_9

    .line 165
    iget-object p1, p0, Lcom/reglink/common/TencenMapSdk;->listener:Lcom/reglink/common/INaviSdk$Listener;

    if-eqz p1, :cond_9

    .line 166
    invoke-interface {p1, p0, p2}, Lcom/reglink/common/INaviSdk$Listener;->onStatusChanged(Lcom/reglink/common/INaviSdk;I)V

    :cond_9
    if-eqz v0, :cond_a

    .line 170
    iget-object p1, p0, Lcom/reglink/common/TencenMapSdk;->listener2:Lcom/reglink/common/INaviSdk$Listener2;

    if-eqz p1, :cond_a

    .line 171
    invoke-interface {p1, p0, v0}, Lcom/reglink/common/INaviSdk$Listener2;->onEvent(Lcom/reglink/common/INaviSdk;I)V

    :cond_a
    :goto_1
    return-void
.end method

.method public setListener(Lcom/reglink/common/INaviSdk$Listener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/reglink/common/TencenMapSdk;->listener:Lcom/reglink/common/INaviSdk$Listener;

    return-void
.end method

.method public setListener2(Lcom/reglink/common/INaviSdk$Listener2;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/reglink/common/TencenMapSdk;->listener2:Lcom/reglink/common/INaviSdk$Listener2;

    return-void
.end method

.method public setSpeedListener(Lcom/reglink/common/INaviSdk$SpeedListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/reglink/common/TencenMapSdk;->speedListener:Lcom/reglink/common/INaviSdk$SpeedListener;

    return-void
.end method

.method public start()V
    .locals 3

    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/reglink/common/TencenMapSdk;->WECARNAVIAUTO_STANDARD_BROADCAST_RECV:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_TPYE"

    const/16 v2, 0x3ea

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "EXTRA_OPERA"

    const/4 v2, 0x1

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/reglink/common/TencenMapSdk;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
