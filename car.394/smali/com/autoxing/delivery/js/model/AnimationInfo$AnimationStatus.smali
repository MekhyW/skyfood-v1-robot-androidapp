.class public final enum Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;
.super Ljava/lang/Enum;
.source "AnimationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/js/model/AnimationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

.field public static final enum APP_BACKGROUND:Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

.field public static final enum SUCCESS:Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;


# instance fields
.field private msg:Ljava/lang/String;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    const-string v1, "success"

    const-string v2, "SUCCESS"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->SUCCESS:Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    .line 15
    new-instance v1, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    const/4 v2, 0x4

    const-string v5, "app is in background"

    const-string v6, "APP_BACKGROUND"

    invoke-direct {v1, v6, v4, v2, v5}, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->APP_BACKGROUND:Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    .line 13
    sput-object v2, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->$VALUES:[Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->status:I

    .line 21
    iput-object p4, p0, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;
    .locals 1

    .line 13
    const-class v0, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    return-object p0
.end method

.method public static values()[Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;
    .locals 1

    .line 13
    sget-object v0, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->$VALUES:[Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    invoke-virtual {v0}, [Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    return-object v0
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->status:I

    return v0
.end method
