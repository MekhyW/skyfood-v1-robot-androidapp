.class public Lcom/autoxing/delivery/network/model/WifiState;
.super Ljava/lang/Object;
.source "WifiState.java"


# instance fields
.field private available_wifis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/network/model/WifiItem;",
            ">;"
        }
    .end annotation
.end field

.field private wifi_info:Lcom/autoxing/delivery/network/model/WifInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailable_wifis()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/network/model/WifiItem;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifiState;->available_wifis:Ljava/util/List;

    return-object v0
.end method

.method public getWifi_info()Lcom/autoxing/delivery/network/model/WifInfo;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/WifiState;->wifi_info:Lcom/autoxing/delivery/network/model/WifInfo;

    return-object v0
.end method

.method public setAvailable_wifis(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/network/model/WifiItem;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifiState;->available_wifis:Ljava/util/List;

    return-void
.end method

.method public setWifi_info(Lcom/autoxing/delivery/network/model/WifInfo;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/WifiState;->wifi_info:Lcom/autoxing/delivery/network/model/WifInfo;

    return-void
.end method
