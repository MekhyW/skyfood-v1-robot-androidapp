.class public final synthetic Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/hutool/cron/timingwheel/SystemTimer;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/cron/timingwheel/SystemTimer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/cron/timingwheel/SystemTimer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/cron/timingwheel/SystemTimer;

    invoke-virtual {v0}, Lcn/hutool/cron/timingwheel/SystemTimer;->lambda$start$0$cn-hutool-cron-timingwheel-SystemTimer()V

    return-void
.end method
