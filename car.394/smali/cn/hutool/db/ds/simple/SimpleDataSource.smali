.class public Lcn/hutool/db/ds/simple/SimpleDataSource;
.super Lcn/hutool/db/ds/simple/AbstractDataSource;
.source "SimpleDataSource.java"


# static fields
.field public static final DEFAULT_DB_CONFIG_PATH:Ljava/lang/String; = "config/db.setting"


# instance fields
.field private connProps:Ljava/util/Properties;

.field private driver:Ljava/lang/String;

.field private pass:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcn/hutool/db/ds/simple/SimpleDataSource;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/setting/Setting;Ljava/lang/String;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Lcn/hutool/db/ds/simple/AbstractDataSource;-><init>()V

    if-nez p1, :cond_0

    .line 81
    new-instance p1, Lcn/hutool/setting/Setting;

    const-string v0, "config/db.setting"

    invoke-direct {p1, v0}, Lcn/hutool/setting/Setting;-><init>(Ljava/lang/String;)V

    .line 83
    :cond_0
    invoke-virtual {p1, p2}, Lcn/hutool/setting/Setting;->getSetting(Ljava/lang/String;)Lcn/hutool/setting/Setting;

    move-result-object p1

    .line 84
    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    sget-object p2, Lcn/hutool/db/ds/DSFactory;->KEY_ALIAS_URL:[Ljava/lang/String;

    .line 89
    invoke-virtual {p1, p2}, Lcn/hutool/setting/Setting;->getAndRemoveStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcn/hutool/db/ds/DSFactory;->KEY_ALIAS_USER:[Ljava/lang/String;

    .line 90
    invoke-virtual {p1, v0}, Lcn/hutool/setting/Setting;->getAndRemoveStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/hutool/db/ds/DSFactory;->KEY_ALIAS_PASSWORD:[Ljava/lang/String;

    .line 91
    invoke-virtual {p1, v1}, Lcn/hutool/setting/Setting;->getAndRemoveStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/hutool/db/ds/DSFactory;->KEY_ALIAS_DRIVER:[Ljava/lang/String;

    .line 92
    invoke-virtual {p1, v2}, Lcn/hutool/setting/Setting;->getAndRemoveStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p0, p2, v0, v1, v2}, Lcn/hutool/db/ds/simple/SimpleDataSource;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    .line 96
    invoke-virtual {p1, p2}, Lcn/hutool/setting/Setting;->getProps(Ljava/lang/String;)Lcn/hutool/setting/dialect/Props;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->connProps:Ljava/util/Properties;

    return-void

    .line 85
    :cond_1
    new-instance p1, Lcn/hutool/db/DbRuntimeException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "No DataSource config for group: [{}]"

    invoke-direct {p1, p2, v0}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0, p1}, Lcn/hutool/db/ds/simple/SimpleDataSource;-><init>(Lcn/hutool/setting/Setting;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcn/hutool/db/ds/simple/AbstractDataSource;-><init>()V

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/db/ds/simple/SimpleDataSource;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcn/hutool/db/ds/simple/AbstractDataSource;-><init>()V

    .line 120
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/hutool/db/ds/simple/SimpleDataSource;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getDataSource()Lcn/hutool/db/ds/simple/SimpleDataSource;
    .locals 2

    const-class v0, Lcn/hutool/db/ds/simple/SimpleDataSource;

    monitor-enter v0

    .line 53
    :try_start_0
    new-instance v1, Lcn/hutool/db/ds/simple/SimpleDataSource;

    invoke-direct {v1}, Lcn/hutool/db/ds/simple/SimpleDataSource;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDataSource(Ljava/lang/String;)Lcn/hutool/db/ds/simple/SimpleDataSource;
    .locals 2

    const-class v0, Lcn/hutool/db/ds/simple/SimpleDataSource;

    monitor-enter v0

    .line 44
    :try_start_0
    new-instance v1, Lcn/hutool/db/ds/simple/SimpleDataSource;

    invoke-direct {v1, p0}, Lcn/hutool/db/ds/simple/SimpleDataSource;-><init>(Ljava/lang/String;)V
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
.method public addConnProps(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->connProps:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->connProps:Ljava/util/Properties;

    .line 201
    :cond_0
    iget-object v0, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->connProps:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public getConnProps()Ljava/util/Properties;
    .locals 1

    .line 190
    iget-object v0, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->connProps:Ljava/util/Properties;

    return-object v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 207
    new-instance v0, Lcn/hutool/setting/dialect/Props;

    invoke-direct {v0}, Lcn/hutool/setting/dialect/Props;-><init>()V

    .line 208
    iget-object v1, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->user:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "user"

    .line 209
    invoke-virtual {v0, v2, v1}, Lcn/hutool/setting/dialect/Props;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    :cond_0
    iget-object v1, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->pass:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "password"

    .line 212
    invoke-virtual {v0, v2, v1}, Lcn/hutool/setting/dialect/Props;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    :cond_1
    iget-object v1, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->connProps:Ljava/util/Properties;

    .line 217
    invoke-static {v1}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    invoke-virtual {v0, v1}, Lcn/hutool/setting/dialect/Props;->putAll(Ljava/util/Map;)V

    .line 221
    :cond_2
    iget-object v1, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->url:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p1

    return-object p1
.end method

.method public getDriver()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->driver:Ljava/lang/String;

    return-object v0
.end method

.method public getPass()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->pass:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->user:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/hutool/db/ds/simple/SimpleDataSource;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 145
    invoke-static {p4}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcn/hutool/db/dialect/DriverUtil;->identifyDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->driver:Ljava/lang/String;

    .line 147
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    iput-object p1, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->url:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->user:Ljava/lang/String;

    .line 153
    iput-object p3, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->pass:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 149
    new-instance p2, Lcn/hutool/db/DbRuntimeException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p4, p3, v0

    const-string p4, "Get jdbc driver [{}] error!"

    invoke-direct {p2, p1, p4, p3}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public setConnProps(Ljava/util/Properties;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->connProps:Ljava/util/Properties;

    return-void
.end method

.method public setDriver(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->driver:Ljava/lang/String;

    return-void
.end method

.method public setPass(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->pass:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->url:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcn/hutool/db/ds/simple/SimpleDataSource;->user:Ljava/lang/String;

    return-void
.end method
