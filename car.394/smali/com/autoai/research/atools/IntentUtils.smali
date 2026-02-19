.class public final Lcom/autoai/research/atools/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adapterIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v2

    const-string v3, "IntentUtils"

    if-eqz v2, :cond_1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "------SYSTEM_LEVEL_PACKAGE ="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    invoke-static {p2}, Lcom/autoai/research/jtools/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 56
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\u4f18\u5148\u4f7f\u7528\u7cfb\u7edf\u7ea7\u8fdb\u7a0b\u7684\u7ec4\u4ef6"

    .line 57
    invoke-static {v3, v2}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2
    invoke-static {v0, p2}, Lcom/autoai/research/atools/IntentUtils;->searchIntent(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 61
    invoke-static {p2, p1}, Lcom/autoai/research/atools/IntentUtils;->constructIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 66
    :cond_3
    new-instance p2, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;

    invoke-direct {p2, p0, v0}, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 67
    invoke-virtual {p2}, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->invoke()Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;

    move-result-object p2

    .line 68
    invoke-virtual {p2}, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->is()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    invoke-virtual {p2}, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/autoai/research/atools/IntentUtils$AdapterIntentByServiceInfo;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/autoai/research/atools/IntentUtils;->constructIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 73
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/autoai/research/atools/IntentUtils;->searchIntent(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 75
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "\u4f18\u5148\u4f7f\u7528\u5f53\u524d\u8fdb\u7a0b\u7684\u670d\u52a1\u7ec4\u4ef6"

    .line 76
    invoke-static {v3, p2}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_5
    invoke-static {p0, p1}, Lcom/autoai/research/atools/IntentUtils;->constructIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 81
    :cond_6
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "\u4f7f\u7528\u6240\u6709\u7ec4\u4ef6\u4e2d\u7684\u7b2c\u4e00\u4e2a\u7ec4\u4ef6"

    .line 82
    invoke-static {v3, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-static {p0, p1}, Lcom/autoai/research/atools/IntentUtils;->constructIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_0
    return-object p1
.end method

.method private static constructIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 103
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1
.end method

.method private static constructIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 98
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 99
    invoke-static {p1, v0, p0}, Lcom/autoai/research/atools/IntentUtils;->constructIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static searchIntent(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 112
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 113
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==system filter--Match intent service packageName ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentUtils"

    invoke-static {v2, v1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
