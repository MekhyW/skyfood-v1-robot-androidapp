.class Lcom/autoai/research/atools/SdcardStateHelper$SdcardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SdcardStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoai/research/atools/SdcardStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdcardBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoai/research/atools/SdcardStateHelper;


# direct methods
.method private constructor <init>(Lcom/autoai/research/atools/SdcardStateHelper;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/autoai/research/atools/SdcardStateHelper$SdcardBroadcastReceiver;->this$0:Lcom/autoai/research/atools/SdcardStateHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autoai/research/atools/SdcardStateHelper;Lcom/autoai/research/atools/SdcardStateHelper$1;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/autoai/research/atools/SdcardStateHelper$SdcardBroadcastReceiver;-><init>(Lcom/autoai/research/atools/SdcardStateHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/autoai/research/atools/SdcardStateHelper$SdcardBroadcastReceiver;->this$0:Lcom/autoai/research/atools/SdcardStateHelper;

    invoke-static {p1}, Lcom/autoai/research/atools/SdcardStateHelper;->access$100(Lcom/autoai/research/atools/SdcardStateHelper;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 98
    :try_start_0
    iget-object p2, p0, Lcom/autoai/research/atools/SdcardStateHelper$SdcardBroadcastReceiver;->this$0:Lcom/autoai/research/atools/SdcardStateHelper;

    invoke-static {p2}, Lcom/autoai/research/atools/SdcardStateHelper;->access$100(Lcom/autoai/research/atools/SdcardStateHelper;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/autoai/research/atools/SdcardStateHelper$SdcardBroadcastReceiver;->this$0:Lcom/autoai/research/atools/SdcardStateHelper;

    invoke-static {v0}, Lcom/autoai/research/atools/SdcardStateHelper;->access$100(Lcom/autoai/research/atools/SdcardStateHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autoai/research/atools/SdcardStateHelper$OnSdcardChangedListener;

    if-nez v0, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/autoai/research/atools/SdcardStateHelper$SdcardBroadcastReceiver;->this$0:Lcom/autoai/research/atools/SdcardStateHelper;

    invoke-interface {v0, v1}, Lcom/autoai/research/atools/SdcardStateHelper$OnSdcardChangedListener;->onSdcardChanged(Lcom/autoai/research/atools/SdcardStateHelper;)V

    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 105
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
