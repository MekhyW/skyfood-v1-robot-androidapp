.class public Lcom/autoxing/service/log/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/autoxing/service/log/Logger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/autoxing/service/log/Logger;"
        }
    .end annotation

    .line 5
    new-instance p0, Lcom/autoxing/service/log/Logger;

    invoke-direct {p0}, Lcom/autoxing/service/log/Logger;-><init>()V

    return-object p0
.end method
