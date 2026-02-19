.class public Lcn/hutool/db/ds/c3p0/C3p0DSFactory;
.super Lcn/hutool/db/ds/AbstractDSFactory;
.source "C3p0DSFactory.java"


# static fields
.field public static final DS_NAME:Ljava/lang/String; = "C3P0"

.field private static final serialVersionUID:J = -0x5486d39efb726931L


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lcn/hutool/db/ds/c3p0/C3p0DSFactory;-><init>(Lcn/hutool/setting/Setting;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/setting/Setting;)V
    .locals 2

    const-string v0, "C3P0"

    .line 38
    const-class v1, Lcom/mchange/v2/c3p0/ComboPooledDataSource;

    invoke-direct {p0, v0, v1, p1}, Lcn/hutool/db/ds/AbstractDSFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/hutool/setting/Setting;)V

    return-void
.end method


# virtual methods
.method protected createDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/hutool/setting/Setting;)Ljavax/sql/DataSource;
    .locals 9

    .line 43
    new-instance v0, Lcom/mchange/v2/c3p0/ComboPooledDataSource;

    invoke-direct {v0}, Lcom/mchange/v2/c3p0/ComboPooledDataSource;-><init>()V

    .line 46
    new-instance v1, Lcn/hutool/setting/dialect/Props;

    invoke-direct {v1}, Lcn/hutool/setting/dialect/Props;-><init>()V

    .line 48
    sget-object v2, Lcn/hutool/db/ds/c3p0/C3p0DSFactory;->KEY_CONN_PROPS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object v6, v7, v4

    .line 49
    invoke-virtual {p5, v7}, Lcn/hutool/setting/Setting;->getAndRemoveStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-static {v7}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 51
    invoke-virtual {v1, v6, v7}, Lcn/hutool/setting/dialect/Props;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v1}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {v0, v1}, Lcom/mchange/v2/c3p0/ComboPooledDataSource;->setProperties(Ljava/util/Properties;)V

    .line 58
    :cond_2
    invoke-virtual {v0, p1}, Lcom/mchange/v2/c3p0/ComboPooledDataSource;->setJdbcUrl(Ljava/lang/String;)V

    .line 60
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/mchange/v2/c3p0/ComboPooledDataSource;->setDriverClass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/beans/PropertyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    invoke-virtual {v0, p3}, Lcom/mchange/v2/c3p0/ComboPooledDataSource;->setUser(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p4}, Lcom/mchange/v2/c3p0/ComboPooledDataSource;->setPassword(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p5, v0}, Lcn/hutool/setting/Setting;->toBean(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception p1

    .line 62
    new-instance p2, Lcn/hutool/db/DbRuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
