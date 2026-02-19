.class public Lcom/autoxing/delivery/bean/TimeCost;
.super Ljava/lang/Object;
.source "TimeCost.java"


# instance fields
.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/autoxing/delivery/bean/TimeCost;->startTime:J

    return-void
.end method

.method private begin()Lcom/autoxing/delivery/bean/TimeCost;
    .locals 2

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autoxing/delivery/bean/TimeCost;->startTime:J

    return-object p0
.end method

.method public static newInstance()Lcom/autoxing/delivery/bean/TimeCost;
    .locals 1

    .line 17
    new-instance v0, Lcom/autoxing/delivery/bean/TimeCost;

    invoke-direct {v0}, Lcom/autoxing/delivery/bean/TimeCost;-><init>()V

    invoke-direct {v0}, Lcom/autoxing/delivery/bean/TimeCost;->begin()Lcom/autoxing/delivery/bean/TimeCost;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cost()J
    .locals 4

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autoxing/delivery/bean/TimeCost;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
