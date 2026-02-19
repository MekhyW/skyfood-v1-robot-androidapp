.class public final synthetic Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/mongodb/Block;


# instance fields
.field public final synthetic f$0:Lcom/mongodb/connection/ConnectionPoolSettings$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/mongodb/connection/ConnectionPoolSettings$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda1;->f$0:Lcom/mongodb/connection/ConnectionPoolSettings$Builder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda1;->f$0:Lcom/mongodb/connection/ConnectionPoolSettings$Builder;

    check-cast p1, Lcom/mongodb/connection/ConnectionPoolSettings$Builder;

    invoke-static {v0, p1}, Lcn/hutool/db/nosql/mongo/MongoDS;->lambda$buildMongoClientSettings$2(Lcom/mongodb/connection/ConnectionPoolSettings$Builder;Lcom/mongodb/connection/ConnectionPoolSettings$Builder;)V

    return-void
.end method
