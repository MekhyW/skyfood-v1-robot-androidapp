.class public final Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoai/research/jtools/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoai/research/jtools/cache/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/autoai/research/jtools/cache/DiskLruCache;Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-object p2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->entry:Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    return-void
.end method

.method synthetic constructor <init>(Lcom/autoai/research/jtools/cache/DiskLruCache;Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;Lcom/autoai/research/jtools/cache/DiskLruCache$1;)V
    .locals 0

    .line 787
    invoke-direct {p0, p1, p2}, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;-><init>(Lcom/autoai/research/jtools/cache/DiskLruCache;Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;)Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->entry:Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;Z)Z
    .locals 0

    .line 787
    iput-boolean p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->access$1900(Lcom/autoai/research/jtools/cache/DiskLruCache;Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 862
    iget-boolean v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->access$1900(Lcom/autoai/research/jtools/cache/DiskLruCache;Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;Z)V

    .line 864
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->entry:Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1100(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->access$1900(Lcom/autoai/research/jtools/cache/DiskLruCache;Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;Z)V

    :goto_0
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    invoke-virtual {p0, p1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 822
    invoke-static {p1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    monitor-enter v0

    .line 803
    :try_start_0
    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->entry:Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$700(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 806
    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->entry:Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$600(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 807
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 809
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->entry:Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v0

    return-object v1

    .line 804
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 810
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->this$0:Lcom/autoai/research/jtools/cache/DiskLruCache;

    monitor-enter v0

    .line 834
    :try_start_0
    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->entry:Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$700(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 837
    new-instance v1, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->entry:Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/autoai/research/jtools/cache/DiskLruCache$1;)V

    monitor-exit v0

    return-object v1

    .line 835
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 838
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public set(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {}, Lcom/autoai/research/jtools/cache/DiskLruCache;->access$1800()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 852
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 849
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 853
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
.end method
