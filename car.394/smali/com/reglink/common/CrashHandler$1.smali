.class Lcom/reglink/common/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reglink/common/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reglink/common/CrashHandler;


# direct methods
.method constructor <init>(Lcom/reglink/common/CrashHandler;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/reglink/common/CrashHandler$1;->this$0:Lcom/reglink/common/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 132
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 133
    iget-object v0, p0, Lcom/reglink/common/CrashHandler$1;->this$0:Lcom/reglink/common/CrashHandler;

    invoke-static {v0}, Lcom/reglink/common/CrashHandler;->access$000(Lcom/reglink/common/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/reglink/common/CrashHandler$1;->this$0:Lcom/reglink/common/CrashHandler;

    invoke-static {v1}, Lcom/reglink/common/CrashHandler;->access$000(Lcom/reglink/common/CrashHandler;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/reglink/common/R$string;->toast_error_report:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/reglink/common/Toast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
