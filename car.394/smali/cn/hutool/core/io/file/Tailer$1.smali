.class Lcn/hutool/core/io/file/Tailer$1;
.super Lcn/hutool/core/io/watch/SimpleWatcher;
.source "Tailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/hutool/core/io/file/Tailer;->start(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/hutool/core/io/file/Tailer;


# direct methods
.method constructor <init>(Lcn/hutool/core/io/file/Tailer;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcn/hutool/core/io/file/Tailer$1;->this$0:Lcn/hutool/core/io/file/Tailer;

    invoke-direct {p0}, Lcn/hutool/core/io/watch/SimpleWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(Ljava/nio/file/WatchEvent;Ljava/nio/file/Path;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchEvent<",
            "*>;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    .line 150
    invoke-super {p0, p1, p2}, Lcn/hutool/core/io/watch/SimpleWatcher;->onDelete(Ljava/nio/file/WatchEvent;Ljava/nio/file/Path;)V

    .line 151
    iget-object p1, p0, Lcn/hutool/core/io/file/Tailer$1;->this$0:Lcn/hutool/core/io/file/Tailer;

    invoke-virtual {p1}, Lcn/hutool/core/io/file/Tailer;->stop()V

    .line 152
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcn/hutool/core/io/file/Tailer$1;->this$0:Lcn/hutool/core/io/file/Tailer;

    invoke-static {v0}, Lcn/hutool/core/io/file/Tailer;->access$000(Lcn/hutool/core/io/file/Tailer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "{} has been deleted"

    invoke-direct {p1, v0, p2}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
