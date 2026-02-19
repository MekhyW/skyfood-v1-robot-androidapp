.class public Lcn/hutool/log/dialect/logtube/LogTubeLogFactory;
.super Lcn/hutool/log/LogFactory;
.source "LogTubeLogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "LogTube"

    .line 15
    invoke-direct {p0, v0}, Lcn/hutool/log/LogFactory;-><init>(Ljava/lang/String;)V

    .line 16
    const-class v0, Lio/github/logtube/Logtube;

    invoke-virtual {p0, v0}, Lcn/hutool/log/dialect/logtube/LogTubeLogFactory;->checkLogExist(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createLog(Ljava/lang/Class;)Lcn/hutool/log/Log;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/hutool/log/Log;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcn/hutool/log/dialect/logtube/LogTubeLog;

    invoke-direct {v0, p1}, Lcn/hutool/log/dialect/logtube/LogTubeLog;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public createLog(Ljava/lang/String;)Lcn/hutool/log/Log;
    .locals 1

    .line 21
    new-instance v0, Lcn/hutool/log/dialect/logtube/LogTubeLog;

    invoke-direct {v0, p1}, Lcn/hutool/log/dialect/logtube/LogTubeLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
