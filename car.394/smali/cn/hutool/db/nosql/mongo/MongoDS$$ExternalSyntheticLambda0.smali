.class public final synthetic Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/mongodb/Block;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Lcom/mongodb/connection/ClusterSettings$Builder;

    invoke-static {v0, p1}, Lcn/hutool/db/nosql/mongo/MongoDS;->lambda$initCloud$1(Ljava/util/List;Lcom/mongodb/connection/ClusterSettings$Builder;)V

    return-void
.end method
