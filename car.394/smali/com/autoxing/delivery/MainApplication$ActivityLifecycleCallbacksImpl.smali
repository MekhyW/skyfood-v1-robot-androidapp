.class Lcom/autoxing/delivery/MainApplication$ActivityLifecycleCallbacksImpl;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/MainApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityLifecycleCallbacksImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/MainApplication;


# direct methods
.method private constructor <init>(Lcom/autoxing/delivery/MainApplication;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/autoxing/delivery/MainApplication$ActivityLifecycleCallbacksImpl;->this$0:Lcom/autoxing/delivery/MainApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autoxing/delivery/MainApplication;Lcom/autoxing/delivery/MainApplication$ActivityLifecycleCallbacksImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/MainApplication$ActivityLifecycleCallbacksImpl;-><init>(Lcom/autoxing/delivery/MainApplication;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onActivityCreated: activity"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MainApplication"

    invoke-static {v0, p2}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    instance-of p2, p1, Lcom/autoxing/delivery/MainActivity;

    if-eqz p2, :cond_1

    .line 40
    iget-object p2, p0, Lcom/autoxing/delivery/MainApplication$ActivityLifecycleCallbacksImpl;->this$0:Lcom/autoxing/delivery/MainApplication;

    invoke-static {p2}, Lcom/autoxing/delivery/MainApplication;->-$$Nest$fgetlastMainActivityInstance(Lcom/autoxing/delivery/MainApplication;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 41
    iget-object p2, p0, Lcom/autoxing/delivery/MainApplication$ActivityLifecycleCallbacksImpl;->this$0:Lcom/autoxing/delivery/MainApplication;

    invoke-static {p2}, Lcom/autoxing/delivery/MainApplication;->-$$Nest$fgetlastMainActivityInstance(Lcom/autoxing/delivery/MainApplication;)Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/autoxing/delivery/MainActivity;

    invoke-virtual {p2}, Lcom/autoxing/delivery/MainActivity;->killMyself()V

    .line 43
    :cond_0
    iget-object p2, p0, Lcom/autoxing/delivery/MainApplication$ActivityLifecycleCallbacksImpl;->this$0:Lcom/autoxing/delivery/MainApplication;

    invoke-static {p2, p1}, Lcom/autoxing/delivery/MainApplication;->-$$Nest$fputlastMainActivityInstance(Lcom/autoxing/delivery/MainApplication;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityDestroyed: activity"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainApplication"

    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityPaused: activity"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainApplication"

    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResumed: activity"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainApplication"

    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onActivitySaveInstanceState: activity"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainApplication"

    invoke-static {p2, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityStarted: activity"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainApplication"

    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityStopped: activity"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainApplication"

    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
