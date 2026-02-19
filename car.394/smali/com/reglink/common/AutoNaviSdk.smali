.class public Lcom/reglink/common/AutoNaviSdk;
.super Landroid/content/BroadcastReceiver;
.source "AutoNaviSdk.java"

# interfaces
.implements Lcom/reglink/common/INaviSdk;


# static fields
.field public static final BROADCAST_SEND:Ljava/lang/String; = "AUTONAVI_STANDARD_BROADCAST_SEND"


# instance fields
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

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/reglink/common/AutoNaviSdk;->status:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/reglink/common/AutoNaviSdk;->resumed:Z

    .line 25
    iput-boolean v0, p0, Lcom/reglink/common/AutoNaviSdk;->launched:Z

    .line 26
    iput-boolean v0, p0, Lcom/reglink/common/AutoNaviSdk;->navi:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/reglink/common/AutoNaviSdk;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public exit()V
    .locals 3

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/reglink/common/AutoNaviSdk;->launched:Z

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KEY_TYPE"

    const/16 v2, 0x2725

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/reglink/common/AutoNaviSdk;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getStatus()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/reglink/common/AutoNaviSdk;->status:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 30
    iput-object p1, p0, Lcom/reglink/common/AutoNaviSdk;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isAppRunning()Z
    .locals 2

    .line 77
    iget v0, p0, Lcom/reglink/common/AutoNaviSdk;->status:I

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

    .line 82
    iget-boolean v0, p0, Lcom/reglink/common/AutoNaviSdk;->resumed:Z

    return v0
.end method

.method public isNaviRunning()Z
    .locals 2

    .line 87
    iget v0, p0, Lcom/reglink/common/AutoNaviSdk;->status:I

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
    .locals 8

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "KEY_TYPE"

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_1

    const-string p1, "ICON"

    .line 95
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string p1, "CUR_SPEED"

    .line 96
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "NEXT_ROAD_NAME"

    .line 97
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "ROUTE_REMAIN_DIS"

    .line 98
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "SEG_REMAIN_DIS"

    .line 99
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "ROUTE_REMAIN_TIME"

    .line 100
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 101
    iget-object v1, p0, Lcom/reglink/common/AutoNaviSdk;->listener:Lcom/reglink/common/INaviSdk$Listener;

    if-eqz v1, :cond_0

    move-object v2, p0

    .line 102
    invoke-interface/range {v1 .. v7}, Lcom/reglink/common/INaviSdk$Listener;->onGuideInfoChanged(Lcom/reglink/common/INaviSdk;ILjava/lang/String;III)V

    .line 105
    :cond_0
    iget-object p2, p0, Lcom/reglink/common/AutoNaviSdk;->speedListener:Lcom/reglink/common/INaviSdk$SpeedListener;

    if-eqz p2, :cond_8

    .line 106
    invoke-interface {p2, p1}, Lcom/reglink/common/INaviSdk$SpeedListener;->onSpeed(I)V

    goto/16 :goto_1

    .line 109
    :cond_1
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x2723

    if-ne p1, v1, :cond_8

    const-string p1, "EXTRA_STATE"

    const/4 v1, -0x1

    .line 110
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 111
    iget p2, p0, Lcom/reglink/common/AutoNaviSdk;->status:I

    const/4 v1, 0x1

    const-string v2, "MapSdk"

    if-eq p1, v1, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v4, 0x3

    if-eq p1, v4, :cond_4

    const/4 v5, 0x4

    if-eq p1, v5, :cond_3

    const/16 v6, 0xc

    if-eq p1, v6, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    iput v3, p0, Lcom/reglink/common/AutoNaviSdk;->status:I

    .line 156
    iput-boolean v1, p0, Lcom/reglink/common/AutoNaviSdk;->navi:Z

    const-string v0, "autonavi navi started"

    .line 157
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto :goto_0

    .line 165
    :cond_2
    :pswitch_1
    iput v4, p0, Lcom/reglink/common/AutoNaviSdk;->status:I

    .line 166
    iput-boolean v0, p0, Lcom/reglink/common/AutoNaviSdk;->navi:Z

    const-string v0, "autonavi navi exited"

    .line 167
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    goto :goto_0

    .line 137
    :cond_3
    iput-boolean v0, p0, Lcom/reglink/common/AutoNaviSdk;->resumed:Z

    const-string v0, "autonavi background"

    .line 138
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x20

    goto :goto_0

    .line 131
    :cond_4
    iput-boolean v1, p0, Lcom/reglink/common/AutoNaviSdk;->resumed:Z

    const-string v0, "autonavi foreground"

    .line 132
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    goto :goto_0

    .line 124
    :cond_5
    iput v1, p0, Lcom/reglink/common/AutoNaviSdk;->status:I

    .line 125
    iput-boolean v0, p0, Lcom/reglink/common/AutoNaviSdk;->launched:Z

    const-string v0, "autonavi exited"

    .line 126
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_0

    .line 117
    :cond_6
    iput v0, p0, Lcom/reglink/common/AutoNaviSdk;->status:I

    .line 118
    iput-boolean v1, p0, Lcom/reglink/common/AutoNaviSdk;->launched:Z

    const-string v0, "autonavi started"

    .line 119
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 172
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "autonavi state changed:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget p1, p0, Lcom/reglink/common/AutoNaviSdk;->status:I

    if-eq p2, p1, :cond_7

    .line 174
    iget-object p2, p0, Lcom/reglink/common/AutoNaviSdk;->listener:Lcom/reglink/common/INaviSdk$Listener;

    if-eqz p2, :cond_7

    .line 175
    invoke-interface {p2, p0, p1}, Lcom/reglink/common/INaviSdk$Listener;->onStatusChanged(Lcom/reglink/common/INaviSdk;I)V

    :cond_7
    if-eqz v0, :cond_8

    .line 179
    iget-object p1, p0, Lcom/reglink/common/AutoNaviSdk;->listener2:Lcom/reglink/common/INaviSdk$Listener2;

    if-eqz p1, :cond_8

    .line 180
    invoke-interface {p1, p0, v0}, Lcom/reglink/common/INaviSdk$Listener2;->onEvent(Lcom/reglink/common/INaviSdk;I)V

    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/reglink/common/INaviSdk$Listener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/reglink/common/AutoNaviSdk;->listener:Lcom/reglink/common/INaviSdk$Listener;

    return-void
.end method

.method public setListener2(Lcom/reglink/common/INaviSdk$Listener2;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/reglink/common/AutoNaviSdk;->listener2:Lcom/reglink/common/INaviSdk$Listener2;

    return-void
.end method

.method public setSpeedListener(Lcom/reglink/common/INaviSdk$SpeedListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/reglink/common/AutoNaviSdk;->speedListener:Lcom/reglink/common/INaviSdk$SpeedListener;

    return-void
.end method

.method public start()V
    .locals 3

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KEY_TYPE"

    const/16 v2, 0x2732

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SOURCE_APP"

    const-string v2, "TAS APP"

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/reglink/common/AutoNaviSdk;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
