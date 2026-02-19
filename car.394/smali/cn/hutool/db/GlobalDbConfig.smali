.class public Lcn/hutool/db/GlobalDbConfig;
.super Ljava/lang/Object;
.source "GlobalDbConfig.java"


# static fields
.field private static final DEFAULT_DB_SETTING_PATH:Ljava/lang/String; = "config/db.setting"

.field private static final DEFAULT_DB_SETTING_PATH2:Ljava/lang/String; = "db.setting"

.field protected static caseInsensitive:Z = true

.field private static dbSettingPath:Ljava/lang/String; = null

.field protected static returnGeneratedKey:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDbSetting()Lcn/hutool/setting/Setting;
    .locals 6

    const-string v0, "db.setting"

    const-string v1, "config/db.setting"

    .line 78
    sget-object v2, Lcn/hutool/db/GlobalDbConfig;->dbSettingPath:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 81
    :try_start_0
    new-instance v0, Lcn/hutool/setting/Setting;

    sget-object v1, Lcn/hutool/db/GlobalDbConfig;->dbSettingPath:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcn/hutool/setting/Setting;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcn/hutool/core/io/resource/NoResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    new-instance v0, Lcn/hutool/core/io/resource/NoResourceException;

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcn/hutool/db/GlobalDbConfig;->dbSettingPath:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "Customize db setting file [{}] not found !"

    invoke-direct {v0, v2, v1}, Lcn/hutool/core/io/resource/NoResourceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 87
    :cond_0
    :try_start_1
    new-instance v2, Lcn/hutool/setting/Setting;

    invoke-direct {v2, v1, v4}, Lcn/hutool/setting/Setting;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcn/hutool/core/io/resource/NoResourceException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 91
    :catch_1
    :try_start_2
    new-instance v2, Lcn/hutool/setting/Setting;

    invoke-direct {v2, v0, v4}, Lcn/hutool/setting/Setting;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lcn/hutool/core/io/resource/NoResourceException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :goto_1
    return-object v0

    .line 93
    :catch_2
    new-instance v2, Lcn/hutool/core/io/resource/NoResourceException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    const-string v0, "Default db setting [{}] or [{}] in classpath not found !"

    invoke-direct {v2, v0, v5}, Lcn/hutool/core/io/resource/NoResourceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static setCaseInsensitive(Z)V
    .locals 0

    .line 46
    sput-boolean p0, Lcn/hutool/db/GlobalDbConfig;->caseInsensitive:Z

    return-void
.end method

.method public static setDbSettingPath(Ljava/lang/String;)V
    .locals 0

    .line 67
    sput-object p0, Lcn/hutool/db/GlobalDbConfig;->dbSettingPath:Ljava/lang/String;

    return-void
.end method

.method public static setReturnGeneratedKey(Z)V
    .locals 0

    .line 57
    sput-boolean p0, Lcn/hutool/db/GlobalDbConfig;->returnGeneratedKey:Z

    return-void
.end method

.method public static setShowSql(ZZZLcn/hutool/log/level/Level;)V
    .locals 1

    .line 109
    sget-object v0, Lcn/hutool/db/sql/SqlLog;->INSTANCE:Lcn/hutool/db/sql/SqlLog;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/hutool/db/sql/SqlLog;->init(ZZZLcn/hutool/log/level/Level;)V

    return-void
.end method
