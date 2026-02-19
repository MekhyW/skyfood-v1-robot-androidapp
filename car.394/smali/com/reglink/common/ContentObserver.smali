.class public Lcom/reglink/common/ContentObserver;
.super Ljava/lang/Object;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/common/ContentObserver$NotificationRunnable;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private observeKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0, v0}, Lcom/reglink/common/ContentObserver;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/reglink/common/ContentObserver;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/reglink/common/ContentObserver;->handler:Landroid/os/Handler;

    .line 18
    iput-object p2, p0, Lcom/reglink/common/ContentObserver;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/reglink/common/ContentObserver;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/reglink/common/ContentObserver;->observeKeys:Ljava/util/HashSet;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dispatchOnChange(Ljava/lang/String;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/reglink/common/ContentObserver;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 58
    iget-object v1, p0, Lcom/reglink/common/ContentObserver;->runnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Lcom/reglink/common/ContentObserver$NotificationRunnable;

    invoke-direct {v1, p0, p1}, Lcom/reglink/common/ContentObserver$NotificationRunnable;-><init>(Lcom/reglink/common/ContentObserver;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/reglink/common/ContentObserver;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0, p1}, Lcom/reglink/common/ContentObserver;->onChange(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/reglink/common/ContentObserver;->observeKeys:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/ContentObserver;->observeKeys:Ljava/util/HashSet;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/ContentObserver;->observeKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setKey([Ljava/lang/String;)V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/reglink/common/ContentObserver;->observeKeys:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/ContentObserver;->observeKeys:Ljava/util/HashSet;

    :cond_0
    if-eqz p1, :cond_1

    .line 45
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 46
    iget-object v3, p0, Lcom/reglink/common/ContentObserver;->observeKeys:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
