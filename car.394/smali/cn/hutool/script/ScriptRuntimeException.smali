.class public Lcn/hutool/script/ScriptRuntimeException;
.super Ljava/lang/RuntimeException;
.source "ScriptRuntimeException.java"


# static fields
.field private static final serialVersionUID:J = 0x727565e33808ce27L


# instance fields
.field private columnNumber:I

.field private fileName:Ljava/lang/String;

.field private lineNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    .line 18
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    .line 53
    iput-object p2, p0, Lcn/hutool/script/ScriptRuntimeException;->fileName:Ljava/lang/String;

    .line 54
    iput p3, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lcn/hutool/script/ScriptRuntimeException;->fileName:Ljava/lang/String;

    .line 68
    iput p3, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    .line 69
    iput p4, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    .line 18
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    .line 18
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    .line 18
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 21
    invoke-static {p1}, Lcn/hutool/core/exceptions/ExceptionUtil;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    .line 18
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-static {p2, p3}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    .line 18
    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    return-void
.end method

.method public constructor <init>(Ljavax/script/ScriptException;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    .line 18
    iput v0, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    .line 74
    invoke-virtual {p1}, Ljavax/script/ScriptException;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/script/ScriptRuntimeException;->fileName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Ljavax/script/ScriptException;->getLineNumber()I

    move-result v0

    iput v0, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    .line 76
    invoke-virtual {p1}, Ljavax/script/ScriptException;->getColumnNumber()I

    move-result p1

    iput p1, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .line 116
    iget v0, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/hutool/script/ScriptRuntimeException;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 107
    iget v0, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcn/hutool/script/ScriptRuntimeException;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " in "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/hutool/script/ScriptRuntimeException;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, " at line number "

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/hutool/script/ScriptRuntimeException;->lineNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    :cond_0
    iget v1, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    if-eq v1, v2, :cond_1

    const-string v1, " at column number "

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/hutool/script/ScriptRuntimeException;->columnNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
