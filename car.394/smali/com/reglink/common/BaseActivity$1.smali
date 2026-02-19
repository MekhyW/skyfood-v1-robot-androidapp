.class Lcom/reglink/common/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/reglink/common/BaseActivity$PasscodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reglink/common/BaseActivity;->startPasscodeActivity(Ljava/lang/Runnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reglink/common/BaseActivity;

.field final synthetic val$passCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/reglink/common/BaseActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/reglink/common/BaseActivity$1;->this$0:Lcom/reglink/common/BaseActivity;

    iput-object p2, p0, Lcom/reglink/common/BaseActivity$1;->val$passCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled()V
    .locals 0

    return-void
.end method

.method public pass(Ljava/lang/String;)V
    .locals 0

    .line 245
    iget-object p1, p0, Lcom/reglink/common/BaseActivity$1;->val$passCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
