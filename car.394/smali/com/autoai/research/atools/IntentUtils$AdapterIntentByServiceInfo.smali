.class Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoai/research/atools/IntentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterIntentByServiceInfo"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private myResult:Z

.field private packageName:Ljava/lang/String;

.field private resolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->context:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->resolveInfoList:Ljava/util/List;

    return-void
.end method

.method private static isRunningService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "activity"

    .line 138
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v0, 0x3e8

    .line 139
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    .line 141
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 142
    iget-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 143
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public invoke()Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->resolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 164
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v2

    const-string v3, "IntentUtils"

    if-eqz v2, :cond_1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "==running filter--Match intent service packageName ="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->packageName:Ljava/lang/String;

    .line 168
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->className:Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v1}, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->isRunningService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--Running service packageName ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u4f18\u5148\u4f7f\u7528\u5df2\u7ecf\u8fd0\u884c\u4e2d\u7684\u670d\u52a1\u8fdb\u7a0b\u7684\u7ec4\u4ef6"

    .line 172
    invoke-static {v3, v0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->myResult:Z

    return-object p0

    :cond_3
    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->myResult:Z

    return-object p0
.end method

.method is()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->myResult:Z

    return v0
.end method
