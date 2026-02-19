.class public Lcn/hutool/extra/expression/engine/qlexpress/QLExpressEngine;
.super Ljava/lang/Object;
.source "QLExpressEngine.java"

# interfaces
.implements Lcn/hutool/extra/expression/ExpressionEngine;


# instance fields
.field private final engine:Lcom/ql/util/express/ExpressRunner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/ql/util/express/ExpressRunner;

    invoke-direct {v0}, Lcom/ql/util/express/ExpressRunner;-><init>()V

    iput-object v0, p0, Lcn/hutool/extra/expression/engine/qlexpress/QLExpressEngine;->engine:Lcom/ql/util/express/ExpressRunner;

    return-void
.end method


# virtual methods
.method public eval(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    new-instance v2, Lcom/ql/util/express/DefaultContext;

    invoke-direct {v2}, Lcom/ql/util/express/DefaultContext;-><init>()V

    .line 31
    invoke-virtual {v2, p2}, Lcom/ql/util/express/DefaultContext;->putAll(Ljava/util/Map;)V

    .line 33
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/expression/engine/qlexpress/QLExpressEngine;->engine:Lcom/ql/util/express/ExpressRunner;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ql/util/express/ExpressRunner;->execute(Ljava/lang/String;Lcom/ql/util/express/IExpressContext;Ljava/util/List;ZZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 35
    new-instance p2, Lcn/hutool/extra/expression/ExpressionException;

    invoke-direct {p2, p1}, Lcn/hutool/extra/expression/ExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
