.class Lcom/autoxing/delivery/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity;->receivedServiceIp()V
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

    .line 1690
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$19;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1694
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    const/16 v1, 0x425

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    const/16 v1, 0x400

    new-array v2, v1, [B

    .line 1696
    new-instance v3, Ljava/net/DatagramPacket;

    invoke-direct {v3, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 1697
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1698
    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 1699
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v4}, Ljava/lang/String;-><init>([BII)V

    .line 1700
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1701
    iget-object v2, p0, Lcom/autoxing/delivery/MainActivity$19;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance v4, Lcom/autoxing/delivery/MainActivity$19$1;

    invoke-direct {v4, p0, v1}, Lcom/autoxing/delivery/MainActivity$19$1;-><init>(Lcom/autoxing/delivery/MainActivity$19;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1708
    :cond_0
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1710
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
