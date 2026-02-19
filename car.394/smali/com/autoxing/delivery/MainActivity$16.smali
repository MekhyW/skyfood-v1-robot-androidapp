.class Lcom/autoxing/delivery/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity;->setNetConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/MainActivity;

.field final synthetic val$route_mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1363
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$16;->this$0:Lcom/autoxing/delivery/MainActivity;

    iput-object p2, p0, Lcom/autoxing/delivery/MainActivity$16;->val$route_mode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "/data/net_config.txt"

    .line 1366
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity$16;->val$route_mode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autoxing/delivery/controller/AndroidSDKAdapter;->writeTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1367
    invoke-static {}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/autoxing/delivery/MainActivity$16;->val$route_mode:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "setNetConfig (%s) = %b"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
