.class Lcom/reglink/common/WaitQueue$WaitObject;
.super Ljava/lang/Object;
.source "WaitQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/WaitQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitObject"
.end annotation


# static fields
.field public static final FLAG_COMPLETE:I = 0x4

.field public static final FLAG_INVALIDATE:I = 0x2


# instance fields
.field public callback:Lcom/reglink/common/WaitQueue$CompletionCallback;

.field public event:Lcom/reglink/common/AutoResetEvent;

.field public flag:I

.field public key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKey;"
        }
    .end annotation
.end field

.field public reply:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResult;"
        }
    .end annotation
.end field

.field public submitTime:J

.field final synthetic this$0:Lcom/reglink/common/WaitQueue;

.field public timeout:J


# direct methods
.method private constructor <init>(Lcom/reglink/common/WaitQueue;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/reglink/common/WaitQueue$WaitObject;->this$0:Lcom/reglink/common/WaitQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/reglink/common/WaitQueue;Lcom/reglink/common/WaitQueue$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/reglink/common/WaitQueue$WaitObject;-><init>(Lcom/reglink/common/WaitQueue;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 53
    iget v0, p0, Lcom/reglink/common/WaitQueue$WaitObject;->flag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/reglink/common/WaitQueue$WaitObject;->flag:I

    return-void
.end method

.method public isComplete()Z
    .locals 2

    .line 40
    iget v0, p0, Lcom/reglink/common/WaitQueue$WaitObject;->flag:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidated()Z
    .locals 2

    .line 50
    iget v0, p0, Lcom/reglink/common/WaitQueue$WaitObject;->flag:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setComplete(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 44
    iget p1, p0, Lcom/reglink/common/WaitQueue$WaitObject;->flag:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/reglink/common/WaitQueue$WaitObject;->flag:I

    goto :goto_0

    .line 46
    :cond_0
    iget p1, p0, Lcom/reglink/common/WaitQueue$WaitObject;->flag:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/reglink/common/WaitQueue$WaitObject;->flag:I

    :goto_0
    return-void
.end method
