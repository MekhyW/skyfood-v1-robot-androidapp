.class public Lcom/autoxing/delivery/js/model/ResEditResult;
.super Ljava/lang/Object;
.source "ResEditResult.java"


# static fields
.field public static final STATUS_FILE_IS_APP:I = 0x6

.field public static final STATUS_FILE_NOT_EXIST:I = 0x2

.field public static final STATUS_OTHER_FAILED:I = 0x4

.field public static final STATUS_SDCARD_FULL:I = 0x3

.field public static final STATUS_SUCCESS:I = 0x1

.field public static final STATUS_ZIPPING:I = 0x5


# instance fields
.field private editType:I

.field private msg:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private progress:I

.field private remainTime:J

.field private status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->name:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->editType:I

    .line 68
    iput p3, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->status:I

    .line 69
    iput-object p4, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;IJ)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autoxing/delivery/js/model/ResEditResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 74
    iput p5, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->progress:I

    .line 75
    iput-wide p6, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->remainTime:J

    return-void
.end method


# virtual methods
.method public getEditType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->editType:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->progress:I

    return v0
.end method

.method public getRemainTime()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->remainTime:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->status:I

    return v0
.end method

.method public setEditType(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->editType:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->msg:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->name:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->progress:I

    return-void
.end method

.method public setRemainTime(I)V
    .locals 2

    int-to-long v0, p1

    .line 62
    iput-wide v0, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->remainTime:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/autoxing/delivery/js/model/ResEditResult;->status:I

    return-void
.end method
