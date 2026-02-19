.class public Lcom/autoxing/delivery/util/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tools"

.field private static sdkInterface:Lcom/autoxing/delivery/sdk/SdkInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checker===="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 31
    sget-object v0, Lcom/autoxing/delivery/util/Tools;->sdkInterface:Lcom/autoxing/delivery/sdk/SdkInterface;

    invoke-interface {v0, p0}, Lcom/autoxing/delivery/sdk/SdkInterface;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    const-string p0, "%s=%s"

    .line 32
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Tools"

    invoke-static {v1, p0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setSdk(Ljava/lang/String;)V
    .locals 4

    .line 19
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s*"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "k39tv1_bsp"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "model="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isRegSdk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/autoxing/delivery/util/Tools;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 27
    new-instance p0, Lcom/autoxing/delivery/sdk/RegApi;

    invoke-direct {p0}, Lcom/autoxing/delivery/sdk/RegApi;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/autoxing/delivery/sdk/ZcApi;

    invoke-direct {p0}, Lcom/autoxing/delivery/sdk/ZcApi;-><init>()V

    :goto_0
    sput-object p0, Lcom/autoxing/delivery/util/Tools;->sdkInterface:Lcom/autoxing/delivery/sdk/SdkInterface;

    return-void
.end method
