.class public Lcn/hutool/db/dialect/DialectFactory;
.super Ljava/lang/Object;
.source "DialectFactory.java"

# interfaces
.implements Lcn/hutool/db/dialect/DriverNamePool;


# static fields
.field private static final DIALECT_POOL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/sql/DataSource;",
            "Lcn/hutool/db/dialect/Dialect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/hutool/db/dialect/DialectFactory;->DIALECT_POOL:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialect(Ljavax/sql/DataSource;)Lcn/hutool/db/dialect/Dialect;
    .locals 2

    .line 179
    sget-object v0, Lcn/hutool/db/dialect/DialectFactory;->DIALECT_POOL:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/hutool/db/dialect/Dialect;

    if-nez v1, :cond_0

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    new-instance v1, Lcn/hutool/db/dialect/DialectFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/hutool/db/dialect/DialectFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/hutool/db/dialect/Dialect;

    .line 185
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-object v1
.end method

.method public static identifyDriver(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-static {p0, v0}, Lcn/hutool/db/dialect/DialectFactory;->identifyDriver(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static identifyDriver(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 3

    .line 93
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 97
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->cleanBlank(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "jdbc:(.*?):"

    .line 100
    invoke-static {v0, p0}, Lcn/hutool/core/util/ReUtil;->getGroup1(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p0, v0

    :cond_1
    const-string v0, "mysql"

    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "cobar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v0, "oracle"

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "oracle.jdbc.OracleDriver"

    .line 109
    invoke-static {p0, p1}, Lcn/hutool/core/util/ClassLoaderUtil;->isPresent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    goto :goto_1

    :cond_3
    const-string p0, "oracle.jdbc.driver.OracleDriver"

    :goto_1
    move-object v1, p0

    goto/16 :goto_4

    :cond_4
    const-string p1, "postgresql"

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v1, "org.postgresql.Driver"

    goto/16 :goto_4

    :cond_5
    const-string p1, "sqlite"

    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string v1, "org.sqlite.JDBC"

    goto/16 :goto_4

    :cond_6
    const-string p1, "sqlserver"

    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    const-string p1, "microsoft"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_2

    :cond_7
    const-string p1, "hive2"

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string v1, "org.apache.hive.jdbc.HiveDriver"

    goto/16 :goto_4

    :cond_8
    const-string p1, "hive"

    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string v1, "org.apache.hadoop.hive.jdbc.HiveDriver"

    goto/16 :goto_4

    :cond_9
    const-string p1, "h2"

    .line 120
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string v1, "org.h2.Driver"

    goto/16 :goto_4

    :cond_a
    const-string p1, "derby"

    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string v1, "org.apache.derby.jdbc.AutoloadedDriver"

    goto/16 :goto_4

    :cond_b
    const-string p1, "hsqldb"

    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string v1, "org.hsqldb.jdbc.JDBCDriver"

    goto/16 :goto_4

    :cond_c
    const-string p1, "dm"

    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string v1, "dm.jdbc.driver.DmDriver"

    goto/16 :goto_4

    :cond_d
    const-string p1, "kingbase8"

    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string v1, "com.kingbase8.Driver"

    goto/16 :goto_4

    :cond_e
    const-string p1, "ignite"

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string v1, "org.apache.ignite.IgniteJdbcThinDriver"

    goto/16 :goto_4

    :cond_f
    const-string p1, "clickhouse"

    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string v1, "ru.yandex.clickhouse.ClickHouseDriver"

    goto/16 :goto_4

    :cond_10
    const-string p1, "highgo"

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string v1, "com.highgo.jdbc.Driver"

    goto/16 :goto_4

    :cond_11
    const-string p1, "db2"

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string v1, "com.ibm.db2.jdbc.app.DB2Driver"

    goto :goto_4

    :cond_12
    const-string p1, "xugu"

    .line 146
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string v1, "com.xugu.cloudjdbc.Driver"

    goto :goto_4

    :cond_13
    const-string p1, "phoenix"

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string v1, "org.apache.phoenix.jdbc.PhoenixDriver"

    goto :goto_4

    :cond_14
    const-string p1, "zenith"

    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string v1, "com.huawei.gauss.jdbc.ZenithDriver"

    goto :goto_4

    :cond_15
    const-string p1, "gbase"

    .line 155
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string v1, "com.gbase.jdbc.Driver"

    goto :goto_4

    :cond_16
    const-string p1, "oscar"

    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string v1, "com.oscar.Driver"

    goto :goto_4

    :cond_17
    const-string p1, "sybase"

    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string v1, "com.sybase.jdbc4.jdbc.SybDriver"

    goto :goto_4

    :cond_18
    const-string p1, "mariadb"

    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string v1, "org.mariadb.jdbc.Driver"

    goto :goto_4

    :cond_19
    :goto_2
    const-string v1, "com.microsoft.sqlserver.jdbc.SQLServerDriver"

    goto :goto_4

    :cond_1a
    :goto_3
    const-string p0, "com.mysql.cj.jdbc.Driver"

    .line 107
    invoke-static {p0, p1}, Lcn/hutool/core/util/ClassLoaderUtil;->isPresent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const-string p0, "com.mysql.jdbc.Driver"

    goto/16 :goto_1

    :cond_1c
    :goto_4
    return-object v1
.end method

.method private static internalNewDialect(Ljava/lang/String;)Lcn/hutool/db/dialect/Dialect;
    .locals 1

    .line 54
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "com.mysql.jdbc.Driver"

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.mysql.cj.jdbc.Driver"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "oracle.jdbc.OracleDriver"

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "oracle.jdbc.driver.OracleDriver"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "org.sqlite.JDBC"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    new-instance p0, Lcn/hutool/db/dialect/impl/Sqlite3Dialect;

    invoke-direct {p0}, Lcn/hutool/db/dialect/impl/Sqlite3Dialect;-><init>()V

    return-object p0

    :cond_2
    const-string v0, "org.postgresql.Driver"

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    new-instance p0, Lcn/hutool/db/dialect/impl/PostgresqlDialect;

    invoke-direct {p0}, Lcn/hutool/db/dialect/impl/PostgresqlDialect;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "org.h2.Driver"

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    new-instance p0, Lcn/hutool/db/dialect/impl/H2Dialect;

    invoke-direct {p0}, Lcn/hutool/db/dialect/impl/H2Dialect;-><init>()V

    return-object p0

    :cond_4
    const-string v0, "com.microsoft.sqlserver.jdbc.SQLServerDriver"

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    new-instance p0, Lcn/hutool/db/dialect/impl/SqlServer2012Dialect;

    invoke-direct {p0}, Lcn/hutool/db/dialect/impl/SqlServer2012Dialect;-><init>()V

    return-object p0

    :cond_5
    const-string v0, "org.apache.phoenix.jdbc.PhoenixDriver"

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 68
    new-instance p0, Lcn/hutool/db/dialect/impl/PhoenixDialect;

    invoke-direct {p0}, Lcn/hutool/db/dialect/impl/PhoenixDialect;-><init>()V

    return-object p0

    .line 58
    :cond_6
    :goto_0
    new-instance p0, Lcn/hutool/db/dialect/impl/OracleDialect;

    invoke-direct {p0}, Lcn/hutool/db/dialect/impl/OracleDialect;-><init>()V

    return-object p0

    .line 56
    :cond_7
    :goto_1
    new-instance p0, Lcn/hutool/db/dialect/impl/MysqlDialect;

    invoke-direct {p0}, Lcn/hutool/db/dialect/impl/MysqlDialect;-><init>()V

    return-object p0

    .line 72
    :cond_8
    new-instance p0, Lcn/hutool/db/dialect/impl/AnsiSqlDialect;

    invoke-direct {p0}, Lcn/hutool/db/dialect/impl/AnsiSqlDialect;-><init>()V

    return-object p0
.end method

.method public static newDialect(Ljava/lang/String;)Lcn/hutool/db/dialect/Dialect;
    .locals 3

    .line 41
    invoke-static {p0}, Lcn/hutool/db/dialect/DialectFactory;->internalNewDialect(Ljava/lang/String;)Lcn/hutool/db/dialect/Dialect;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Use Dialect: [{}]."

    invoke-static {v1, v0}, Lcn/hutool/log/StaticLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static newDialect(Ljava/sql/Connection;)Lcn/hutool/db/dialect/Dialect;
    .locals 0

    .line 207
    invoke-static {p0}, Lcn/hutool/db/dialect/DriverUtil;->identifyDriver(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/db/dialect/DialectFactory;->newDialect(Ljava/lang/String;)Lcn/hutool/db/dialect/Dialect;

    move-result-object p0

    return-object p0
.end method

.method public static newDialect(Ljavax/sql/DataSource;)Lcn/hutool/db/dialect/Dialect;
    .locals 0

    .line 197
    invoke-static {p0}, Lcn/hutool/db/dialect/DriverUtil;->identifyDriver(Ljavax/sql/DataSource;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/db/dialect/DialectFactory;->newDialect(Ljava/lang/String;)Lcn/hutool/db/dialect/Dialect;

    move-result-object p0

    return-object p0
.end method
