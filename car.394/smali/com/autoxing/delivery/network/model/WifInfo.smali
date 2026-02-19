.class public Lcom/autoxing/delivery/network/model/WifInfo;
.super Ljava/lang/Object;
.source "WifInfo.java"


# instance fields
.field private current_interface:Ljava/lang/String;

.field private current_route:Ljava/lang/String;

.field private debug_message:Ljava/lang/String;

.field private route_mode:Ljava/lang/String;

.field private routes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ssid:Ljava/lang/String;

.field private wifi_ip:Ljava/lang/String;

.field private wifi_mac:Ljava/lang/String;

.field private wifi_mode:Ljava/lang/String;

.field private wifi_status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent_interface()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifInfo;->current_interface:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent_route()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifInfo;->current_route:Ljava/lang/String;

    return-object v0
.end method

.method public getDebug_message()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifInfo;->debug_message:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute_mode()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifInfo;->route_mode:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifInfo;->routes:Ljava/util/List;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getWifi_ip()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifInfo;->wifi_ip:Ljava/lang/String;

    return-object v0
.end method

.method public getWifi_mac()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifInfo;->wifi_mac:Ljava/lang/String;

    return-object v0
.end method

.method public getWifi_mode()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifInfo;->wifi_mode:Ljava/lang/String;

    return-object v0
.end method

.method public getWifi_status()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifInfo;->wifi_status:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrent_interface(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifInfo;->current_interface:Ljava/lang/String;

    return-void
.end method

.method public setCurrent_route(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifInfo;->current_route:Ljava/lang/String;

    return-void
.end method

.method public setDebug_message(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifInfo;->debug_message:Ljava/lang/String;

    return-void
.end method

.method public setRoute_mode(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifInfo;->route_mode:Ljava/lang/String;

    return-void
.end method

.method public setRoutes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifInfo;->routes:Ljava/util/List;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifInfo;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setWifi_ip(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifInfo;->wifi_ip:Ljava/lang/String;

    return-void
.end method

.method public setWifi_mac(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifInfo;->wifi_mac:Ljava/lang/String;

    return-void
.end method

.method public setWifi_mode(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifInfo;->wifi_mode:Ljava/lang/String;

    return-void
.end method

.method public setWifi_status(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifInfo;->wifi_status:Ljava/lang/String;

    return-void
.end method
