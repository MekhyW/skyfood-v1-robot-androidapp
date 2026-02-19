.class final Lcom/reglink/common/MainHandler$2;
.super Ljava/lang/Object;
.source "MainHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reglink/common/MainHandler;->longToast(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/reglink/common/MainHandler$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/reglink/common/MainHandler$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/reglink/common/MainHandler$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/reglink/common/MainHandler$2;->val$text:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/reglink/common/Toast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
