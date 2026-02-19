.class Lcom/reglink/common/PathWalk$2;
.super Ljava/lang/Object;
.source "PathWalk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/PathWalk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reglink/common/PathWalk;


# direct methods
.method constructor <init>(Lcom/reglink/common/PathWalk;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/reglink/common/PathWalk$2;->this$0:Lcom/reglink/common/PathWalk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 96
    iget-object v0, p0, Lcom/reglink/common/PathWalk$2;->this$0:Lcom/reglink/common/PathWalk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/reglink/common/PathWalk;->access$202(Lcom/reglink/common/PathWalk;Z)Z

    .line 97
    new-instance v0, Lcom/reglink/common/StopWatch;

    const-string v2, "walk path"

    invoke-direct {v0, v2}, Lcom/reglink/common/StopWatch;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/reglink/common/PathWalk$2;->this$0:Lcom/reglink/common/PathWalk;

    invoke-static {v2}, Lcom/reglink/common/PathWalk;->access$300(Lcom/reglink/common/PathWalk;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 99
    :goto_0
    iget-object v5, p0, Lcom/reglink/common/PathWalk$2;->this$0:Lcom/reglink/common/PathWalk;

    invoke-virtual {v5}, Lcom/reglink/common/PathWalk;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_1

    if-ge v4, v2, :cond_1

    .line 100
    iget-object v5, p0, Lcom/reglink/common/PathWalk$2;->this$0:Lcom/reglink/common/PathWalk;

    invoke-static {v5}, Lcom/reglink/common/PathWalk;->access$300(Lcom/reglink/common/PathWalk;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6, v1}, Lcom/reglink/common/PathWalk;->access$400(Lcom/reglink/common/PathWalk;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/reglink/common/StopWatch;->done()V

    .line 105
    iget-object v0, p0, Lcom/reglink/common/PathWalk$2;->this$0:Lcom/reglink/common/PathWalk;

    invoke-virtual {v0}, Lcom/reglink/common/PathWalk;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/reglink/common/PathWalk$2;->this$0:Lcom/reglink/common/PathWalk;

    invoke-static {v0}, Lcom/reglink/common/PathWalk;->access$500(Lcom/reglink/common/PathWalk;)Lcom/reglink/common/PathWalk$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/reglink/common/PathWalk$2;->this$0:Lcom/reglink/common/PathWalk;

    invoke-static {v0}, Lcom/reglink/common/PathWalk;->access$500(Lcom/reglink/common/PathWalk;)Lcom/reglink/common/PathWalk$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/reglink/common/PathWalk$2;->this$0:Lcom/reglink/common/PathWalk;

    invoke-static {v1}, Lcom/reglink/common/PathWalk;->access$600(Lcom/reglink/common/PathWalk;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/reglink/common/PathWalk$Listener;->walkComplete(Ljava/util/ArrayList;)V

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/reglink/common/PathWalk$2;->this$0:Lcom/reglink/common/PathWalk;

    invoke-static {v0, v3}, Lcom/reglink/common/PathWalk;->access$202(Lcom/reglink/common/PathWalk;Z)Z

    return-void
.end method
