.class public final synthetic Lcn/hutool/db/SqlConnRunner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/db/handler/RsHandler;
.implements Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Ljava/sql/ResultSet;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcn/hutool/db/SqlConnRunner;->lambda$insertForGeneratedKey$2dfcceed$1(Ljava/sql/ResultSet;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
