.class public final synthetic Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/mongodb/Block;


# instance fields
.field public final synthetic f$0:Lcom/mongodb/connection/SocketSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/mongodb/connection/SocketSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda2;->f$0:Lcom/mongodb/connection/SocketSettings;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/db/nosql/mongo/MongoDS$$ExternalSyntheticLambda2;->f$0:Lcom/mongodb/connection/SocketSettings;

    check-cast p1, Lcom/mongodb/connection/SocketSettings$Builder;

    invoke-static {v0, p1}, Lcn/hutool/db/nosql/mongo/MongoDS;->lambda$buildMongoClientSettings$3(Lcom/mongodb/connection/SocketSettings;Lcom/mongodb/connection/SocketSettings$Builder;)V

    return-void
.end method
