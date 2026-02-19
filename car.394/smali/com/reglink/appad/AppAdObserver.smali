.class public Lcom/reglink/appad/AppAdObserver;
.super Landroid/database/ContentObserver;
.source "AppAdObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/appad/AppAdObserver$OnMessageChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AppAdObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private onMessageChangeListener:Lcom/reglink/appad/AppAdObserver$OnMessageChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/reglink/appad/AppAdObserver$OnMessageChangeListener;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 21
    iput-object p2, p0, Lcom/reglink/appad/AppAdObserver;->mContext:Landroid/content/Context;

    .line 22
    iput-object p3, p0, Lcom/reglink/appad/AppAdObserver;->onMessageChangeListener:Lcom/reglink/appad/AppAdObserver$OnMessageChangeListener;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/reglink/appad/AppAdObserver;->onMessageChange()V

    .line 29
    iget-object p1, p0, Lcom/reglink/appad/AppAdObserver;->onMessageChangeListener:Lcom/reglink/appad/AppAdObserver$OnMessageChangeListener;

    invoke-interface {p1}, Lcom/reglink/appad/AppAdObserver$OnMessageChangeListener;->onMessageChange()V

    .line 30
    sget-object p1, Lcom/reglink/appad/AppAdObserver;->TAG:Ljava/lang/String;

    const-string v0, "onChangeAppAd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMessageChange()V
    .locals 0

    return-void
.end method

.method public registerObserver(Landroid/net/Uri;)V
    .locals 3

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/reglink/appad/AppAdObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    sget-object v0, Lcom/reglink/appad/AppAdObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerReceiver :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterObserver()V
    .locals 4

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/reglink/appad/AppAdObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    sget-object v1, Lcom/reglink/appad/AppAdObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerReceiver :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
