.class public Lcom/autoai/research/jtools/ShellUtils$CommandResult;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoai/research/jtools/ShellUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field private errorMsg:Ljava/lang/String;

.field private result:I

.field private successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Lcom/autoai/research/jtools/ShellUtils$CommandResult;->result:I

    .line 188
    iput-object p2, p0, Lcom/autoai/research/jtools/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lcom/autoai/research/jtools/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/autoai/research/jtools/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/autoai/research/jtools/ShellUtils$CommandResult;->result:I

    return v0
.end method

.method public getSuccessMsg()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/autoai/research/jtools/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/autoai/research/jtools/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/autoai/research/jtools/ShellUtils$CommandResult;->result:I

    return-void
.end method

.method public setSuccessMsg(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/autoai/research/jtools/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommandResult{result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/autoai/research/jtools/ShellUtils$CommandResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", successMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/jtools/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', errorMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/jtools/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
