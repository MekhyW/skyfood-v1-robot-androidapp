.class Lcom/autoai/research/jtools/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoai/research/jtools/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/autoai/research/jtools/cache/DiskLruCache;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$1;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$1;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$1;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->access$000(Lcom/autoai/research/jtools/cache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 263
    monitor-exit v0

    return-object v2

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$1;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->access$100(Lcom/autoai/research/jtools/cache/DiskLruCache;)V

    .line 266
    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$1;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->access$200(Lcom/autoai/research/jtools/cache/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$1;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->access$300(Lcom/autoai/research/jtools/cache/DiskLruCache;)V

    .line 268
    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$1;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/autoai/research/jtools/cache/DiskLruCache;->access$402(Lcom/autoai/research/jtools/cache/DiskLruCache;I)I

    .line 270
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
