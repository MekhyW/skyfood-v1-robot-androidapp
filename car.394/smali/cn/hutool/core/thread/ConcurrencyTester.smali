.class public Lcn/hutool/core/thread/ConcurrencyTester;
.super Ljava/lang/Object;
.source "ConcurrencyTester.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private interval:J

.field private final sf:Lcn/hutool/core/thread/SyncFinisher;

.field private final timeInterval:Lcn/hutool/core/date/TimeInterval;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcn/hutool/core/thread/SyncFinisher;

    invoke-direct {v0, p1}, Lcn/hutool/core/thread/SyncFinisher;-><init>(I)V

    iput-object v0, p0, Lcn/hutool/core/thread/ConcurrencyTester;->sf:Lcn/hutool/core/thread/SyncFinisher;

    .line 36
    new-instance p1, Lcn/hutool/core/date/TimeInterval;

    invoke-direct {p1}, Lcn/hutool/core/date/TimeInterval;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/thread/ConcurrencyTester;->timeInterval:Lcn/hutool/core/date/TimeInterval;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcn/hutool/core/thread/ConcurrencyTester;->sf:Lcn/hutool/core/thread/SyncFinisher;

    invoke-virtual {v0}, Lcn/hutool/core/thread/SyncFinisher;->close()V

    return-void
.end method

.method public getInterval()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcn/hutool/core/thread/ConcurrencyTester;->interval:J

    return-wide v0
.end method

.method public reset()Lcn/hutool/core/thread/ConcurrencyTester;
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/hutool/core/thread/ConcurrencyTester;->sf:Lcn/hutool/core/thread/SyncFinisher;

    invoke-virtual {v0}, Lcn/hutool/core/thread/SyncFinisher;->clearWorker()V

    .line 72
    iget-object v0, p0, Lcn/hutool/core/thread/ConcurrencyTester;->timeInterval:Lcn/hutool/core/date/TimeInterval;

    invoke-virtual {v0}, Lcn/hutool/core/date/TimeInterval;->restart()Lcn/hutool/core/date/TimeInterval;

    return-object p0
.end method

.method public test(Ljava/lang/Runnable;)Lcn/hutool/core/thread/ConcurrencyTester;
    .locals 2

    .line 47
    iget-object v0, p0, Lcn/hutool/core/thread/ConcurrencyTester;->sf:Lcn/hutool/core/thread/SyncFinisher;

    invoke-virtual {v0}, Lcn/hutool/core/thread/SyncFinisher;->clearWorker()V

    .line 49
    iget-object v0, p0, Lcn/hutool/core/thread/ConcurrencyTester;->timeInterval:Lcn/hutool/core/date/TimeInterval;

    invoke-virtual {v0}, Lcn/hutool/core/date/TimeInterval;->start()J

    .line 50
    iget-object v0, p0, Lcn/hutool/core/thread/ConcurrencyTester;->sf:Lcn/hutool/core/thread/SyncFinisher;

    .line 51
    invoke-virtual {v0, p1}, Lcn/hutool/core/thread/SyncFinisher;->addRepeatWorker(Ljava/lang/Runnable;)Lcn/hutool/core/thread/SyncFinisher;

    move-result-object p1

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p1, v0}, Lcn/hutool/core/thread/SyncFinisher;->setBeginAtSameTime(Z)Lcn/hutool/core/thread/SyncFinisher;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcn/hutool/core/thread/SyncFinisher;->start()V

    .line 55
    iget-object p1, p0, Lcn/hutool/core/thread/ConcurrencyTester;->timeInterval:Lcn/hutool/core/date/TimeInterval;

    invoke-virtual {p1}, Lcn/hutool/core/date/TimeInterval;->interval()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/hutool/core/thread/ConcurrencyTester;->interval:J

    return-object p0
.end method
