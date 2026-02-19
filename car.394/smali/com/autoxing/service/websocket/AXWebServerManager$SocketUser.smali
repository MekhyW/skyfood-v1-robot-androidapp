.class public Lcom/autoxing/service/websocket/AXWebServerManager$SocketUser;
.super Ljava/lang/Object;
.source "AXWebServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/service/websocket/AXWebServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocketUser"
.end annotation


# instance fields
.field public from:I

.field public guid:Ljava/lang/String;

.field final synthetic this$0:Lcom/autoxing/service/websocket/AXWebServerManager;


# direct methods
.method public constructor <init>(Lcom/autoxing/service/websocket/AXWebServerManager;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/autoxing/service/websocket/AXWebServerManager$SocketUser;->this$0:Lcom/autoxing/service/websocket/AXWebServerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
