.class public Lcn/hutool/db/ds/bee/BeeDSFactory;
.super Lcn/hutool/db/ds/AbstractDSFactory;
.source "BeeDSFactory.java"


# static fields
.field public static final DS_NAME:Ljava/lang/String; = "BeeCP"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcn/hutool/db/ds/bee/BeeDSFactory;-><init>(Lcn/hutool/setting/Setting;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/setting/Setting;)V
    .locals 2

    const-string v0, "BeeCP"

    .line 27
    const-class v1, Lcn/beecp/BeeDataSource;

    invoke-direct {p0, v0, v1, p1}, Lcn/hutool/db/ds/AbstractDSFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcn/hutool/setting/Setting;)V

    return-void
.end method


# virtual methods
.method protected createDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/hutool/setting/Setting;)Ljavax/sql/DataSource;
    .locals 4

    .line 33
    new-instance v0, Lcn/beecp/BeeDataSourceConfig;

    invoke-direct {v0, p2, p1, p3, p4}, Lcn/beecp/BeeDataSourceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p5, v0}, Lcn/hutool/setting/Setting;->toBean(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object p1, Lcn/hutool/db/ds/bee/BeeDSFactory;->KEY_CONN_PROPS:[Ljava/lang/String;

    array-length p2, p1

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_1

    aget-object v1, p1, p4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, p3

    .line 39
    invoke-virtual {p5, v2}, Lcn/hutool/setting/Setting;->getAndRemoveStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v2}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v0, v1, v2}, Lcn/beecp/BeeDataSourceConfig;->addConnectProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 45
    :cond_1
    new-instance p1, Lcn/beecp/BeeDataSource;

    invoke-direct {p1, v0}, Lcn/beecp/BeeDataSource;-><init>(Lcn/beecp/BeeDataSourceConfig;)V

    return-object p1
.end method
