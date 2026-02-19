.class public final synthetic Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/cron/timingwheel/SystemTimer;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/cron/timingwheel/SystemTimer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda2;->f$0:Lcn/hutool/cron/timingwheel/SystemTimer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda2;->f$0:Lcn/hutool/cron/timingwheel/SystemTimer;

    check-cast p1, Lcn/hutool/cron/timingwheel/TimerTask;

    invoke-virtual {v0, p1}, Lcn/hutool/cron/timingwheel/SystemTimer;->addTask(Lcn/hutool/cron/timingwheel/TimerTask;)V

    return-void
.end method
