.class public Lcn/hutool/db/nosql/redis/RedisDS;
.super Ljava/lang/Object;
.source "RedisDS.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Serializable;


# static fields
.field public static final REDIS_CONFIG_PATH:Ljava/lang/String; = "config/redis.setting"

.field private static final serialVersionUID:J = -0x4dca6c7d7df8df30L


# instance fields
.field private pool:Lredis/clients/jedis/JedisPool;

.field private setting:Lcn/hutool/setting/Setting;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0, v0}, Lcn/hutool/db/nosql/redis/RedisDS;-><init>(Lcn/hutool/setting/Setting;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/setting/Setting;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    .line 86
    invoke-virtual {p0, p2}, Lcn/hutool/db/nosql/redis/RedisDS;->init(Ljava/lang/String;)Lcn/hutool/db/nosql/redis/RedisDS;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0, p1}, Lcn/hutool/db/nosql/redis/RedisDS;-><init>(Lcn/hutool/setting/Setting;Ljava/lang/String;)V

    return-void
.end method

.method public static create()Lcn/hutool/db/nosql/redis/RedisDS;
    .locals 1

    .line 37
    new-instance v0, Lcn/hutool/db/nosql/redis/RedisDS;

    invoke-direct {v0}, Lcn/hutool/db/nosql/redis/RedisDS;-><init>()V

    return-object v0
.end method

.method public static create(Lcn/hutool/setting/Setting;Ljava/lang/String;)Lcn/hutool/db/nosql/redis/RedisDS;
    .locals 1

    .line 58
    new-instance v0, Lcn/hutool/db/nosql/redis/RedisDS;

    invoke-direct {v0, p0, p1}, Lcn/hutool/db/nosql/redis/RedisDS;-><init>(Lcn/hutool/setting/Setting;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcn/hutool/db/nosql/redis/RedisDS;
    .locals 1

    .line 47
    new-instance v0, Lcn/hutool/db/nosql/redis/RedisDS;

    invoke-direct {v0, p0}, Lcn/hutool/db/nosql/redis/RedisDS;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcn/hutool/db/nosql/redis/RedisDS;->pool:Lredis/clients/jedis/JedisPool;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public varargs del([Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 179
    invoke-virtual {p0}, Lcn/hutool/db/nosql/redis/RedisDS;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v0

    .line 180
    :try_start_0
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->del([Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 179
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 181
    :try_start_2
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public getJedis()Lredis/clients/jedis/Jedis;
    .locals 1

    .line 144
    iget-object v0, p0, Lcn/hutool/db/nosql/redis/RedisDS;->pool:Lredis/clients/jedis/JedisPool;

    invoke-virtual {v0}, Lredis/clients/jedis/JedisPool;->getResource()Lredis/clients/jedis/Jedis;

    move-result-object v0

    return-object v0
.end method

.method public getStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcn/hutool/db/nosql/redis/RedisDS;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v0

    .line 155
    :try_start_0
    invoke-virtual {v0, p1}, Lredis/clients/jedis/Jedis;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 156
    :try_start_2
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public init(Ljava/lang/String;)Lcn/hutool/db/nosql/redis/RedisDS;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 96
    iget-object v2, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    if-nez v2, :cond_0

    .line 97
    new-instance v2, Lcn/hutool/setting/Setting;

    const-string v3, "config/redis.setting"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcn/hutool/setting/Setting;-><init>(Ljava/lang/String;Z)V

    iput-object v2, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    .line 100
    :cond_0
    new-instance v6, Lredis/clients/jedis/JedisPoolConfig;

    invoke-direct {v6}, Lredis/clients/jedis/JedisPoolConfig;-><init>()V

    .line 102
    iget-object v2, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    invoke-virtual {v2, v6}, Lcn/hutool/setting/Setting;->toBean(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static/range {p1 .. p1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    invoke-virtual {v2, v1, v6}, Lcn/hutool/setting/Setting;->toBean(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_1
    iget-object v2, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    const-string v3, "maxWaitMillis"

    invoke-virtual {v2, v3}, Lcn/hutool/setting/Setting;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lredis/clients/jedis/JedisPoolConfig;->setMaxWaitMillis(J)V

    .line 115
    :cond_2
    new-instance v2, Lredis/clients/jedis/JedisPool;

    iget-object v3, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    const-string v4, "host"

    const-string v5, "127.0.0.1"

    .line 117
    invoke-virtual {v3, v4, v1, v5}, Lcn/hutool/setting/Setting;->getStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    const/16 v4, 0x18eb

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "port"

    invoke-virtual {v3, v5, v1, v4}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v3, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    const/16 v4, 0x7d0

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "timeout"

    invoke-virtual {v3, v9, v1, v5}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    const-string v10, "connectionTimeout"

    invoke-virtual {v3, v10, v1, v5}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    .line 123
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v9, v1, v4}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    const-string v9, "soTimeout"

    invoke-virtual {v5, v9, v1, v4}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v4, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    const-string v5, "password"

    const/4 v9, 0x0

    .line 125
    invoke-virtual {v4, v5, v1, v9}, Lcn/hutool/setting/Setting;->getStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v4, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    const-string v5, "database"

    const/4 v9, 0x0

    .line 127
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v5, v1, v12}, Lcn/hutool/setting/Setting;->getInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v4, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    const-string v5, "clientName"

    const-string v13, "Hutool"

    .line 129
    invoke-virtual {v4, v5, v1, v13}, Lcn/hutool/setting/Setting;->getStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v4, v0, Lcn/hutool/db/nosql/redis/RedisDS;->setting:Lcn/hutool/setting/Setting;

    const-string v5, "ssl"

    .line 131
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v5, v1, v9}, Lcn/hutool/setting/Setting;->getBool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v2

    move v9, v3

    invoke-direct/range {v5 .. v17}, Lredis/clients/jedis/JedisPool;-><init>(Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/HostnameVerifier;)V

    iput-object v2, v0, Lcn/hutool/db/nosql/redis/RedisDS;->pool:Lredis/clients/jedis/JedisPool;

    return-object v0
.end method

.method public setStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcn/hutool/db/nosql/redis/RedisDS;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v0

    .line 168
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lredis/clients/jedis/Jedis;->set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 167
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 169
    :try_start_2
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method
