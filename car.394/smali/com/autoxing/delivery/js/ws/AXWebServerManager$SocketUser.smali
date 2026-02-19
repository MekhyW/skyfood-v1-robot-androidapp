.class public Lcom/autoxing/delivery/js/ws/AXWebServerManager$SocketUser;
.super Ljava/lang/Object;
.source "AXWebServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/js/ws/AXWebServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocketUser"
.end annotation


# instance fields
.field public from:I

.field public guid:Ljava/lang/String;

.field final synthetic this$0:Lcom/autoxing/delivery/js/ws/AXWebServerManager;


# direct methods
.method public constructor <init>(Lcom/autoxing/delivery/js/ws/AXWebServerManager;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager$SocketUser;->this$0:Lcom/autoxing/delivery/js/ws/AXWebServerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
