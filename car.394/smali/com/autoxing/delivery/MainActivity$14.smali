.class Lcom/autoxing/delivery/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity;->actionFromJsStartWork(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/MainActivity;

.field final synthetic val$robotId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$14;->this$0:Lcom/autoxing/delivery/MainActivity;

    iput-object p2, p0, Lcom/autoxing/delivery/MainActivity$14;->val$robotId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1182
    invoke-static {}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionFromJsStartWork=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autoxing/delivery/MainActivity$14;->val$robotId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
