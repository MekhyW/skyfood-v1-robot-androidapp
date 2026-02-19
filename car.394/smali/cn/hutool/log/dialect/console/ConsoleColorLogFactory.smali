.class public Lcn/hutool/log/dialect/console/ConsoleColorLogFactory;
.super Lcn/hutool/log/LogFactory;
.source "ConsoleColorLogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Hutool Console Color Logging"

    .line 15
    invoke-direct {p0, v0}, Lcn/hutool/log/LogFactory;-><init>(Ljava/lang/String;)V

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

    .line 25
    new-instance v0, Lcn/hutool/log/dialect/console/ConsoleColorLog;

    invoke-direct {v0, p1}, Lcn/hutool/log/dialect/console/ConsoleColorLog;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public createLog(Ljava/lang/String;)Lcn/hutool/log/Log;
    .locals 1

    .line 20
    new-instance v0, Lcn/hutool/log/dialect/console/ConsoleColorLog;

    invoke-direct {v0, p1}, Lcn/hutool/log/dialect/console/ConsoleColorLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
