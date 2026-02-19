.class public Lcom/autoxing/delivery/js/model/AnimationInfo;
.super Ljava/lang/Object;
.source "AnimationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;
    }
.end annotation


# static fields
.field public static final STATUS_APP_BACKGROUND:I = 0x4

.field public static final STATUS_FILE_FORMAT:I = 0x3

.field public static final STATUS_FILE_NOEXIST:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x1

.field public static final TYPE_SLEEP:I = 0x1

.field public static final TYPE_TASK:I = 0x2


# instance fields
.field private msg:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private play:Z

.field private status:I

.field private taskName:Ljava/lang/String;

.field private taskTime:I

.field private themePrimaryColor:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->type:I

    .line 37
    iput v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->status:I

    const-string v0, "success"

    .line 38
    iput-object v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->msg:Ljava/lang/String;

    const-string v0, "#7b9dea"

    .line 39
    iput-object v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->themePrimaryColor:Ljava/lang/String;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->taskName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->taskTime:I

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->status:I

    return v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskTime()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->taskTime:I

    return v0
.end method

.method public getThemePrimaryColor()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->themePrimaryColor:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->type:I

    return v0
.end method

.method public isPlay()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->play:Z

    return v0
.end method

.method public isSleepAnimation()Z
    .locals 2

    .line 108
    iget v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->msg:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setPlay(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->play:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->status:I

    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->taskName:Ljava/lang/String;

    return-void
.end method

.method public setTaskTime(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->taskTime:I

    return-void
.end method

.method public setThemePrimaryColor(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->themePrimaryColor:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/autoxing/delivery/js/model/AnimationInfo;->type:I

    return-void
.end method
