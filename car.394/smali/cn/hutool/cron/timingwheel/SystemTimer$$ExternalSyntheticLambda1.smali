.class public final synthetic Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/DelayQueue;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/DelayQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/DelayQueue;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/DelayQueue;

    check-cast p1, Lcn/hutool/cron/timingwheel/TimerTaskList;

    invoke-static {v0, p1}, Lcn/hutool/cron/timingwheel/SystemTimer;->$r8$lambda$KLvOOfgHDCX98NnXtkMsV2RZLVo(Ljava/util/concurrent/DelayQueue;Ljava/util/concurrent/Delayed;)Z

    return-void
.end method
