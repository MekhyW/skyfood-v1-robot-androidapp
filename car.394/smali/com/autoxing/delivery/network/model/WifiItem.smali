.class public Lcom/autoxing/delivery/network/model/WifiItem;
.super Ljava/lang/Object;
.source "WifiItem.java"


# instance fields
.field private bss:Ljava/lang/String;

.field private open:Z

.field private rssi:I

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBss()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifiItem;->bss:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/autoxing/delivery/network/model/WifiItem;->rssi:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifiItem;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/autoxing/delivery/network/model/WifiItem;->open:Z

    return v0
.end method

.method public setBss(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifiItem;->bss:Ljava/lang/String;

    return-void
.end method

.method public setOpen(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/autoxing/delivery/network/model/WifiItem;->open:Z

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/autoxing/delivery/network/model/WifiItem;->rssi:I

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifiItem;->ssid:Ljava/lang/String;

    return-void
.end method
