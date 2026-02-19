.class public Lcn/hutool/db/ds/pooled/PooledDataSource;
.super Lcn/hutool/db/ds/simple/AbstractDataSource;
.source "PooledDataSource.java"


# instance fields
.field private activeCount:I

.field private final config:Lcn/hutool/db/ds/pooled/DbConfig;

.field private freePool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcn/hutool/db/ds/pooled/PooledConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 52
    invoke-direct {p0, v0}, Lcn/hutool/db/ds/pooled/PooledDataSource;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/db/ds/pooled/DbConfig;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcn/hutool/db/ds/simple/AbstractDataSource;-><init>()V

    .line 80
    iput-object p1, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->config:Lcn/hutool/db/ds/pooled/DbConfig;

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->freePool:Ljava/util/Queue;

    .line 82
    invoke-virtual {p1}, Lcn/hutool/db/ds/pooled/DbConfig;->getInitialSize()I

    move-result p1

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_0

    .line 85
    :try_start_0
    iget-object p1, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->freePool:Ljava/util/Queue;

    invoke-virtual {p0}, Lcn/hutool/db/ds/pooled/PooledDataSource;->newConnection()Lcn/hutool/db/ds/pooled/PooledConnection;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    new-instance v0, Lcn/hutool/db/DbRuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcn/hutool/db/ds/pooled/DbSetting;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-virtual {p1, p2}, Lcn/hutool/db/ds/pooled/DbSetting;->getDbConfig(Ljava/lang/String;)Lcn/hutool/db/ds/pooled/DbConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/db/ds/pooled/PooledDataSource;-><init>(Lcn/hutool/db/ds/pooled/DbConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 61
    new-instance v0, Lcn/hutool/db/ds/pooled/DbSetting;

    invoke-direct {v0}, Lcn/hutool/db/ds/pooled/DbSetting;-><init>()V

    invoke-direct {p0, v0, p1}, Lcn/hutool/db/ds/pooled/PooledDataSource;-><init>(Lcn/hutool/db/ds/pooled/DbSetting;Ljava/lang/String;)V

    return-void
.end method

.method private getConnectionDirect()Lcn/hutool/db/ds/pooled/PooledConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->freePool:Ljava/util/Queue;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->config:Lcn/hutool/db/ds/pooled/DbConfig;

    invoke-virtual {v0}, Lcn/hutool/db/ds/pooled/DbConfig;->getMaxActive()I

    move-result v0

    if-lez v0, :cond_2

    .line 173
    iget v1, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->activeCount:I

    if-lt v0, v1, :cond_2

    .line 178
    iget-object v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->freePool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/db/ds/pooled/PooledConnection;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcn/hutool/db/ds/pooled/PooledConnection;->open()Lcn/hutool/db/ds/pooled/PooledConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcn/hutool/db/ds/pooled/PooledConnection;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/db/ds/pooled/PooledDataSource;->newConnection()Lcn/hutool/db/ds/pooled/PooledConnection;

    move-result-object v0

    .line 182
    :cond_1
    iget v1, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->activeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->activeCount:I

    return-object v0

    .line 175
    :cond_2
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "In used Connection is more than Max Active."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_3
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "PooledDataSource is closed!"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getDataSource()Lcn/hutool/db/ds/pooled/PooledDataSource;
    .locals 2

    const-class v0, Lcn/hutool/db/ds/pooled/PooledDataSource;

    monitor-enter v0

    .line 44
    :try_start_0
    new-instance v1, Lcn/hutool/db/ds/pooled/PooledDataSource;

    invoke-direct {v1}, Lcn/hutool/db/ds/pooled/PooledDataSource;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDataSource(Ljava/lang/String;)Lcn/hutool/db/ds/pooled/PooledDataSource;
    .locals 2

    const-class v0, Lcn/hutool/db/ds/pooled/PooledDataSource;

    monitor-enter v0

    .line 35
    :try_start_0
    new-instance v1, Lcn/hutool/db/ds/pooled/PooledDataSource;

    invoke-direct {v1, p0}, Lcn/hutool/db/ds/pooled/PooledDataSource;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->freePool:Ljava/util/Queue;

    invoke-static {v0}, Lcn/hutool/core/collection/CollectionUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->freePool:Ljava/util/Queue;

    new-instance v1, Lcn/hutool/db/ds/pooled/PooledDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/hutool/db/ds/pooled/PooledDataSource$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->forEach(Ljava/util/function/Consumer;)V

    .line 151
    iget-object v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->freePool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->freePool:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 158
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method protected declared-synchronized free(Lcn/hutool/db/ds/pooled/PooledConnection;)Z
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->activeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->activeCount:I

    .line 114
    iget-object v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->freePool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getConfig()Lcn/hutool/db/ds/pooled/DbConfig;
    .locals 1

    .line 128
    iget-object v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->config:Lcn/hutool/db/ds/pooled/DbConfig;

    return-object v0
.end method

.method public getConnection(J)Lcn/hutool/db/ds/pooled/PooledConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 140
    :try_start_0
    invoke-direct {p0}, Lcn/hutool/db/ds/pooled/PooledDataSource;->getConnectionDirect()Lcn/hutool/db/ds/pooled/PooledConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 142
    :catch_0
    invoke-static {p1, p2}, Lcn/hutool/core/thread/ThreadUtil;->sleep(J)Z

    .line 144
    invoke-direct {p0}, Lcn/hutool/db/ds/pooled/PooledDataSource;->getConnectionDirect()Lcn/hutool/db/ds/pooled/PooledConnection;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcn/hutool/db/ds/pooled/PooledDataSource;->config:Lcn/hutool/db/ds/pooled/DbConfig;

    invoke-virtual {v0}, Lcn/hutool/db/ds/pooled/DbConfig;->getMaxWait()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/hutool/db/ds/pooled/PooledDataSource;->getConnection(J)Lcn/hutool/db/ds/pooled/PooledConnection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 103
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Pooled DataSource is not allow to get special Connection!"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newConnection()Lcn/hutool/db/ds/pooled/PooledConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 124
    new-instance v0, Lcn/hutool/db/ds/pooled/PooledConnection;

    invoke-direct {v0, p0}, Lcn/hutool/db/ds/pooled/PooledConnection;-><init>(Lcn/hutool/db/ds/pooled/PooledDataSource;)V

    return-object v0
.end method
