.class public Lcn/hutool/db/nosql/mongo/MongoDS;
.super Ljava/lang/Object;
.source "MongoDS.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final MONGO_CONFIG_PATH:Ljava/lang/String; = "config/mongo.setting"

.field private static final log:Lcn/hutool/log/Log;


# instance fields
.field private groups:[Ljava/lang/String;

.field private mongo:Lcom/mongodb/client/MongoClient;

.field private serverAddress:Lcom/mongodb/ServerAddress;

.field private setting:Lcn/hutool/setting/Setting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lcn/hutool/log/Log;->get()Lcn/hutool/log/Log;

    move-result-object v0

    sput-object v0, Lcn/hutool/db/nosql/mongo/MongoDS;->log:Lcn/hutool/log/Log;

    return-void
.end method

.method public constructor <init>(Lcn/hutool/setting/Setting;Ljava/lang/String;I)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    .line 73
    invoke-direct {p0, p2, p3}, Lcn/hutool/db/nosql/mongo/MongoDS;->createServerAddress(Ljava/lang/String;I)Lcom/mongodb/ServerAddress;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->serverAddress:Lcom/mongodb/ServerAddress;

    .line 74
    invoke-virtual {p0}, Lcn/hutool/db/nosql/mongo/MongoDS;->initSingle()V

    return-void
.end method

.method public varargs constructor <init>(Lcn/hutool/setting/Setting;[Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 102
    iput-object p1, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    .line 103
    iput-object p2, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->groups:[Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcn/hutool/db/nosql/mongo/MongoDS;->init()V

    return-void

    .line 100
    :cond_0
    new-instance p1, Lcn/hutool/db/DbRuntimeException;

    const-string p2, "Mongo setting is null!"

    invoke-direct {p1, p2}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0, p1, p2}, Lcn/hutool/db/nosql/mongo/MongoDS;->createServerAddress(Ljava/lang/String;I)Lcom/mongodb/ServerAddress;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->serverAddress:Lcom/mongodb/ServerAddress;

    .line 60
    invoke-virtual {p0}, Lcn/hutool/db/nosql/mongo/MongoDS;->initSingle()V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->groups:[Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcn/hutool/db/nosql/mongo/MongoDS;->init()V

    return-void
.end method

.method private buildMongoClientSettings(Lcom/mongodb/MongoClientSettings$Builder;Ljava/lang/String;)Lcom/mongodb/MongoClientSettings$Builder;
    .locals 7

    .line 338
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    if-nez v0, :cond_0

    return-object p1

    .line 342
    :cond_0
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ""

    goto :goto_0

    .line 345
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 349
    :goto_0
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connectionsPerHost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 350
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 351
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    invoke-virtual {v0, v2}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 353
    :cond_2
    invoke-static {}, Lcom/mongodb/connection/ConnectionPoolSettings;->builder()Lcom/mongodb/connection/ConnectionPoolSettings$Builder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 355
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mongodb/connection/ConnectionPoolSettings$Builder;->maxSize(I)Lcom/mongodb/connection/ConnectionPoolSettings$Builder;

    .line 356
    sget-object v4, Lcn/hutool/db/nosql/mongo/MongoDS;->log:Lcn/hutool/log/Log;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, "MongoDB connectionsPerHost: {}"

    invoke-interface {v4, v0, v5}, Lcn/hutool/log/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_3
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "connectTimeout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 361
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    .line 362
    iget-object v4, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    invoke-virtual {v4, v5}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    :cond_4
    if-eqz v0, :cond_5

    .line 365
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Lcom/mongodb/connection/ConnectionPoolSettings$Builder;->maxWaitTime(JLjava/util/concurrent/TimeUnit;)Lcom/mongodb/connection/ConnectionPoolSettings$Builder;

    .line 366
    sget-object v4, Lcn/hutool/db/nosql/mongo/MongoDS;->log:Lcn/hutool/log/Log;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, "MongoDB connectTimeout: {}"

    invoke-interface {v4, v0, v5}, Lcn/hutool/log/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    :cond_5
    new-instance v0, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda1;-><init>(Lcom/mongodb/connection/ConnectionPoolSettings$Builder;)V

    invoke-virtual {p1, v0}, Lcom/mongodb/MongoClientSettings$Builder;->applyToConnectionPoolSettings(Lcom/mongodb/Block;)Lcom/mongodb/MongoClientSettings$Builder;

    .line 371
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "socketTimeout"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 372
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    if-nez v0, :cond_6

    .line 373
    iget-object p2, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    invoke-virtual {p2, v4}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    :cond_6
    if-eqz v0, :cond_7

    .line 376
    invoke-static {}, Lcom/mongodb/connection/SocketSettings;->builder()Lcom/mongodb/connection/SocketSettings$Builder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1, v4}, Lcom/mongodb/connection/SocketSettings$Builder;->connectTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/mongodb/connection/SocketSettings$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mongodb/connection/SocketSettings$Builder;->build()Lcom/mongodb/connection/SocketSettings;

    move-result-object p2

    .line 377
    new-instance v1, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda2;-><init>(Lcom/mongodb/connection/SocketSettings;)V

    invoke-virtual {p1, v1}, Lcom/mongodb/MongoClientSettings$Builder;->applyToSocketSettings(Lcom/mongodb/Block;)Lcom/mongodb/MongoClientSettings$Builder;

    .line 378
    sget-object p2, Lcn/hutool/db/nosql/mongo/MongoDS;->log:Lcn/hutool/log/Log;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "MongoDB socketTimeout: {}"

    invoke-interface {p2, v0, v1}, Lcn/hutool/log/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-object p1
.end method

.method private checkSetting()Lcn/hutool/setting/Setting;
    .locals 4

    .line 390
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    if-eqz v0, :cond_0

    return-object v0

    .line 391
    :cond_0
    new-instance v0, Lcn/hutool/db/DbRuntimeException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "config/mongo.setting"

    aput-object v3, v1, v2

    const-string v2, "Please indicate setting file or create default [{}]"

    invoke-direct {v0, v2, v1}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private createCredentail(Ljava/lang/String;)Lcom/mongodb/MongoCredential;
    .locals 5

    .line 305
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v1, "user"

    .line 309
    invoke-virtual {v0, v1}, Lcn/hutool/setting/Setting;->getStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcn/hutool/setting/Setting;->getStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pass"

    .line 310
    invoke-virtual {v0, v2}, Lcn/hutool/setting/Setting;->getStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3}, Lcn/hutool/setting/Setting;->getStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "database"

    .line 311
    invoke-virtual {v0, v3}, Lcn/hutool/setting/Setting;->getStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, p1, v4}, Lcn/hutool/setting/Setting;->getStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-direct {p0, v1, p1, v2}, Lcn/hutool/db/nosql/mongo/MongoDS;->createCredentail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mongodb/MongoCredential;

    move-result-object p1

    return-object p1
.end method

.method private createCredentail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mongodb/MongoCredential;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 325
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->hasEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 328
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mongodb/MongoCredential;->createCredential(Ljava/lang/String;Ljava/lang/String;[C)Lcom/mongodb/MongoCredential;

    move-result-object p1

    return-object p1
.end method

.method private createServerAddress(Ljava/lang/String;)Lcom/mongodb/ServerAddress;
    .locals 4

    .line 270
    invoke-direct {p0}, Lcn/hutool/db/nosql/mongo/MongoDS;->checkSetting()Lcn/hutool/setting/Setting;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "host"

    .line 276
    invoke-virtual {v0, v1, p1}, Lcn/hutool/setting/Setting;->getByGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x6989

    .line 281
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "port"

    invoke-virtual {v0, v3, p1, v2}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 282
    new-instance v0, Lcom/mongodb/ServerAddress;

    invoke-static {v1, p1}, Lcn/hutool/core/net/NetUtil;->buildInetSocketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mongodb/ServerAddress;-><init>(Ljava/net/InetSocketAddress;)V

    return-object v0

    .line 278
    :cond_1
    new-instance v0, Lcn/hutool/core/exceptions/NotInitedException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Host name is empy of group: {}"

    invoke-direct {v0, p1, v1}, Lcn/hutool/core/exceptions/NotInitedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private createServerAddress(Ljava/lang/String;I)Lcom/mongodb/ServerAddress;
    .locals 1

    .line 293
    new-instance v0, Lcom/mongodb/ServerAddress;

    invoke-direct {v0, p1, p2}, Lcom/mongodb/ServerAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static synthetic lambda$buildMongoClientSettings$2(Lcom/mongodb/connection/ConnectionPoolSettings$Builder;Lcom/mongodb/connection/ConnectionPoolSettings$Builder;)V
    .locals 0

    .line 368
    invoke-virtual {p0}, Lcom/mongodb/connection/ConnectionPoolSettings$Builder;->build()Lcom/mongodb/connection/ConnectionPoolSettings;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mongodb/connection/ConnectionPoolSettings$Builder;->applySettings(Lcom/mongodb/connection/ConnectionPoolSettings;)Lcom/mongodb/connection/ConnectionPoolSettings$Builder;

    return-void
.end method

.method static synthetic lambda$buildMongoClientSettings$3(Lcom/mongodb/connection/SocketSettings;Lcom/mongodb/connection/SocketSettings$Builder;)V
    .locals 0

    .line 377
    invoke-virtual {p1, p0}, Lcom/mongodb/connection/SocketSettings$Builder;->applySettings(Lcom/mongodb/connection/SocketSettings;)Lcom/mongodb/connection/SocketSettings$Builder;

    return-void
.end method

.method static synthetic lambda$initCloud$1(Ljava/util/List;Lcom/mongodb/connection/ClusterSettings$Builder;)V
    .locals 0

    .line 205
    invoke-virtual {p1, p0}, Lcom/mongodb/connection/ClusterSettings$Builder;->hosts(Ljava/util/List;)Lcom/mongodb/connection/ClusterSettings$Builder;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->mongo:Lcom/mongodb/client/MongoClient;

    invoke-interface {v0}, Lcom/mongodb/client/MongoClient;->close()V

    return-void
.end method

.method public getCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/mongodb/client/MongoCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mongodb/client/MongoCollection<",
            "Lorg/bson/Document;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-virtual {p0, p1}, Lcn/hutool/db/nosql/mongo/MongoDS;->getDb(Ljava/lang/String;)Lcom/mongodb/client/MongoDatabase;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/mongodb/client/MongoDatabase;->getCollection(Ljava/lang/String;)Lcom/mongodb/client/MongoCollection;

    move-result-object p1

    return-object p1
.end method

.method public getDb(Ljava/lang/String;)Lcom/mongodb/client/MongoDatabase;
    .locals 1

    .line 242
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->mongo:Lcom/mongodb/client/MongoClient;

    invoke-interface {v0, p1}, Lcom/mongodb/client/MongoClient;->getDatabase(Ljava/lang/String;)Lcom/mongodb/client/MongoDatabase;

    move-result-object p1

    return-object p1
.end method

.method public getMongo()Lcom/mongodb/client/MongoClient;
    .locals 1

    .line 232
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->mongo:Lcom/mongodb/client/MongoClient;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->groups:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcn/hutool/db/nosql/mongo/MongoDS;->initCloud()V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/db/nosql/mongo/MongoDS;->initSingle()V

    :goto_0
    return-void
.end method

.method public declared-synchronized initCloud()V
    .locals 7

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->groups:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcn/hutool/setting/Setting;

    const-string v2, "config/mongo.setting"

    invoke-direct {v0, v2, v1}, Lcn/hutool/setting/Setting;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    .line 197
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iget-object v2, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->groups:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 199
    invoke-direct {p0, v6}, Lcn/hutool/db/nosql/mongo/MongoDS;->createServerAddress(Ljava/lang/String;)Lcom/mongodb/ServerAddress;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 202
    invoke-direct {p0, v2}, Lcn/hutool/db/nosql/mongo/MongoDS;->createCredentail(Ljava/lang/String;)Lcom/mongodb/MongoCredential;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    invoke-static {}, Lcom/mongodb/MongoClientSettings;->builder()Lcom/mongodb/MongoClientSettings$Builder;

    move-result-object v3

    new-instance v5, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 205
    invoke-virtual {v3, v5}, Lcom/mongodb/MongoClientSettings$Builder;->applyToClusterSettings(Lcom/mongodb/Block;)Lcom/mongodb/MongoClientSettings$Builder;

    move-result-object v3

    const-string v5, ""

    .line 206
    invoke-direct {p0, v3, v5}, Lcn/hutool/db/nosql/mongo/MongoDS;->buildMongoClientSettings(Lcom/mongodb/MongoClientSettings$Builder;Ljava/lang/String;)Lcom/mongodb/MongoClientSettings$Builder;

    if-eqz v2, :cond_2

    .line 208
    invoke-virtual {v3, v2}, Lcom/mongodb/MongoClientSettings$Builder;->credential(Lcom/mongodb/MongoCredential;)Lcom/mongodb/MongoClientSettings$Builder;

    .line 210
    :cond_2
    invoke-virtual {v3}, Lcom/mongodb/MongoClientSettings$Builder;->build()Lcom/mongodb/MongoClientSettings;

    move-result-object v2

    invoke-static {v2}, Lcom/mongodb/client/MongoClients;->create(Lcom/mongodb/MongoClientSettings;)Lcom/mongodb/client/MongoClient;

    move-result-object v2

    iput-object v2, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->mongo:Lcom/mongodb/client/MongoClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :try_start_2
    sget-object v2, Lcn/hutool/db/nosql/mongo/MongoDS;->log:Lcn/hutool/log/Log;

    const-string v3, "Init MongoDB cloud Set pool with connection to {}"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-interface {v2, v3, v1}, Lcn/hutool/log/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 212
    :try_start_3
    sget-object v1, Lcn/hutool/db/nosql/mongo/MongoDS;->log:Lcn/hutool/log/Log;

    const-string v2, "Init MongoDB connection error!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcn/hutool/log/Log;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 189
    :cond_3
    :try_start_4
    new-instance v0, Lcn/hutool/db/DbRuntimeException;

    const-string v1, "Please give replication set groups!"

    invoke-direct {v0, v1}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initSingle()V
    .locals 6

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 139
    :try_start_1
    new-instance v0, Lcn/hutool/setting/Setting;

    const-string v2, "config/mongo.setting"

    invoke-direct {v0, v2, v1}, Lcn/hutool/setting/Setting;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    const-string v0, ""

    .line 146
    iget-object v2, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->serverAddress:Lcom/mongodb/ServerAddress;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 148
    iget-object v2, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->groups:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v4, v2

    if-ne v4, v1, :cond_1

    .line 149
    aget-object v0, v2, v3

    .line 151
    :cond_1
    invoke-direct {p0, v0}, Lcn/hutool/db/nosql/mongo/MongoDS;->createServerAddress(Ljava/lang/String;)Lcom/mongodb/ServerAddress;

    move-result-object v2

    iput-object v2, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->serverAddress:Lcom/mongodb/ServerAddress;

    .line 154
    :cond_2
    invoke-direct {p0, v0}, Lcn/hutool/db/nosql/mongo/MongoDS;->createCredentail(Ljava/lang/String;)Lcom/mongodb/MongoCredential;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    invoke-static {}, Lcom/mongodb/MongoClientSettings;->builder()Lcom/mongodb/MongoClientSettings$Builder;

    move-result-object v4

    new-instance v5, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda3;-><init>(Lcn/hutool/db/nosql/mongo/MongoDS;)V

    .line 157
    invoke-virtual {v4, v5}, Lcom/mongodb/MongoClientSettings$Builder;->applyToClusterSettings(Lcom/mongodb/Block;)Lcom/mongodb/MongoClientSettings$Builder;

    move-result-object v4

    .line 158
    invoke-direct {p0, v4, v0}, Lcn/hutool/db/nosql/mongo/MongoDS;->buildMongoClientSettings(Lcom/mongodb/MongoClientSettings$Builder;Ljava/lang/String;)Lcom/mongodb/MongoClientSettings$Builder;

    if-eqz v2, :cond_3

    .line 160
    invoke-virtual {v4, v2}, Lcom/mongodb/MongoClientSettings$Builder;->credential(Lcom/mongodb/MongoCredential;)Lcom/mongodb/MongoClientSettings$Builder;

    .line 162
    :cond_3
    invoke-virtual {v4}, Lcom/mongodb/MongoClientSettings$Builder;->build()Lcom/mongodb/MongoClientSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/mongodb/client/MongoClients;->create(Lcom/mongodb/MongoClientSettings;)Lcom/mongodb/client/MongoClient;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->mongo:Lcom/mongodb/client/MongoClient;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    :try_start_4
    sget-object v0, Lcn/hutool/db/nosql/mongo/MongoDS;->log:Lcn/hutool/log/Log;

    const-string v2, "Init MongoDB pool with connection to [{}]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->serverAddress:Lcom/mongodb/ServerAddress;

    aput-object v4, v1, v3

    invoke-interface {v0, v2, v1}, Lcn/hutool/log/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    .line 164
    :try_start_5
    new-instance v2, Lcn/hutool/db/DbRuntimeException;

    const-string v4, "Init MongoDB pool with connection to [{}] error!"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->serverAddress:Lcom/mongodb/ServerAddress;

    aput-object v5, v1, v3

    invoke-static {v4, v1}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$initSingle$0$cn-hutool-db-nosql-mongo-MongoDS(Lcom/mongodb/connection/ClusterSettings$Builder;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->serverAddress:Lcom/mongodb/ServerAddress;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mongodb/connection/ClusterSettings$Builder;->hosts(Ljava/util/List;)Lcom/mongodb/connection/ClusterSettings$Builder;

    return-void
.end method

.method public setSetting(Lcn/hutool/setting/Setting;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcn/hutool/db/nosql/mongo/MongoDS;->setting:Lcn/hutool/setting/Setting;

    return-void
.end method
