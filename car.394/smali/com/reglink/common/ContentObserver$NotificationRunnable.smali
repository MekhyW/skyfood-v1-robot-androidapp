.class final Lcom/reglink/common/ContentObserver$NotificationRunnable;
.super Ljava/lang/Object;
.source "ContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationRunnable"
.end annotation


# instance fields
.field changeKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/reglink/common/ContentObserver;


# direct methods
.method constructor <init>(Lcom/reglink/common/ContentObserver;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/reglink/common/ContentObserver$NotificationRunnable;->this$0:Lcom/reglink/common/ContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/reglink/common/ContentObserver$NotificationRunnable;->changeKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/reglink/common/ContentObserver$NotificationRunnable;->this$0:Lcom/reglink/common/ContentObserver;

    iget-object v1, p0, Lcom/reglink/common/ContentObserver$NotificationRunnable;->changeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/reglink/common/ContentObserver;->onChange(Ljava/lang/String;)V

    return-void
.end method
