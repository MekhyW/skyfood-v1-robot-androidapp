.class public final enum Lcn/hutool/core/lang/Pid;
.super Ljava/lang/Enum;
.source "Pid.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/core/lang/Pid;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/core/lang/Pid;

.field public static final enum INSTANCE:Lcn/hutool/core/lang/Pid;


# instance fields
.field private final pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcn/hutool/core/lang/Pid;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/core/lang/Pid;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/hutool/core/lang/Pid;->INSTANCE:Lcn/hutool/core/lang/Pid;

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/hutool/core/lang/Pid;

    aput-object v0, v1, v2

    .line 15
    sput-object v1, Lcn/hutool/core/lang/Pid;->$VALUES:[Lcn/hutool/core/lang/Pid;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    invoke-static {}, Lcn/hutool/core/lang/Pid;->getPid()I

    move-result p1

    iput p1, p0, Lcn/hutool/core/lang/Pid;->pid:I

    return-void
.end method

.method private static getPid()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 40
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x40

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 42
    :cond_1
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    const-string v1, "Process name is blank!"

    invoke-direct {v0, v1}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/core/lang/Pid;
    .locals 1

    .line 15
    const-class v0, Lcn/hutool/core/lang/Pid;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/lang/Pid;

    return-object p0
.end method

.method public static values()[Lcn/hutool/core/lang/Pid;
    .locals 1

    .line 15
    sget-object v0, Lcn/hutool/core/lang/Pid;->$VALUES:[Lcn/hutool/core/lang/Pid;

    invoke-virtual {v0}, [Lcn/hutool/core/lang/Pid;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/core/lang/Pid;

    return-object v0
.end method


# virtual methods
.method public get()I
    .locals 1

    .line 30
    iget v0, p0, Lcn/hutool/core/lang/Pid;->pid:I

    return v0
.end method
