.class public final synthetic Lcn/hutool/db/AbstractDb$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/db/handler/RsHandler;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:Lcn/hutool/db/PageResult;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/db/PageResult;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/db/AbstractDb$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/db/PageResult;

    iput-object p2, p0, Lcn/hutool/db/AbstractDb$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final handle(Ljava/sql/ResultSet;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/hutool/db/AbstractDb$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/db/PageResult;

    iget-object v1, p0, Lcn/hutool/db/AbstractDb$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lcn/hutool/db/AbstractDb;->lambda$page$e33ee6c3$1(Lcn/hutool/db/PageResult;Ljava/lang/Class;Ljava/sql/ResultSet;)Lcn/hutool/db/PageResult;

    move-result-object p1

    return-object p1
.end method
