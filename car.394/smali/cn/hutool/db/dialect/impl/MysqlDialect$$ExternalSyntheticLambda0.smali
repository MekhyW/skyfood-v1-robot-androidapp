.class public final synthetic Lcn/hutool/db/dialect/impl/MysqlDialect$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/db/dialect/impl/MysqlDialect;

.field public final synthetic f$1:Ljava/lang/StringBuilder;

.field public final synthetic f$2:Ljava/lang/StringBuilder;

.field public final synthetic f$3:Ljava/lang/StringBuilder;

.field public final synthetic f$4:Lcn/hutool/db/sql/SqlBuilder;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/db/dialect/impl/MysqlDialect;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcn/hutool/db/sql/SqlBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/db/dialect/impl/MysqlDialect$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/db/dialect/impl/MysqlDialect;

    iput-object p2, p0, Lcn/hutool/db/dialect/impl/MysqlDialect$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcn/hutool/db/dialect/impl/MysqlDialect$$ExternalSyntheticLambda0;->f$2:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcn/hutool/db/dialect/impl/MysqlDialect$$ExternalSyntheticLambda0;->f$3:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcn/hutool/db/dialect/impl/MysqlDialect$$ExternalSyntheticLambda0;->f$4:Lcn/hutool/db/sql/SqlBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcn/hutool/db/dialect/impl/MysqlDialect$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/db/dialect/impl/MysqlDialect;

    iget-object v1, p0, Lcn/hutool/db/dialect/impl/MysqlDialect$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/hutool/db/dialect/impl/MysqlDialect$$ExternalSyntheticLambda0;->f$2:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/hutool/db/dialect/impl/MysqlDialect$$ExternalSyntheticLambda0;->f$3:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/hutool/db/dialect/impl/MysqlDialect$$ExternalSyntheticLambda0;->f$4:Lcn/hutool/db/sql/SqlBuilder;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcn/hutool/db/dialect/impl/MysqlDialect;->lambda$psForUpsert$0$cn-hutool-db-dialect-impl-MysqlDialect(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcn/hutool/db/sql/SqlBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
