.class public Lcn/hutool/db/dialect/impl/PostgresqlDialect;
.super Lcn/hutool/db/dialect/impl/AnsiSqlDialect;
.source "PostgresqlDialect.java"


# static fields
.field private static final serialVersionUID:J = 0x35f94047267805caL


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcn/hutool/db/dialect/impl/AnsiSqlDialect;-><init>()V

    .line 26
    new-instance v0, Lcn/hutool/db/sql/Wrapper;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/hutool/db/sql/Wrapper;-><init>(Ljava/lang/Character;)V

    iput-object v0, p0, Lcn/hutool/db/dialect/impl/PostgresqlDialect;->wrapper:Lcn/hutool/db/sql/Wrapper;

    return-void
.end method


# virtual methods
.method public dialectName()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcn/hutool/db/dialect/DialectName;->POSTGRESQL:Lcn/hutool/db/dialect/DialectName;

    invoke-virtual {v0}, Lcn/hutool/db/dialect/DialectName;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$psForUpsert$0$cn-hutool-db-dialect-impl-PostgresqlDialect(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcn/hutool/db/sql/SqlBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 46
    invoke-static {p5}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_0
    iget-object v0, p0, Lcn/hutool/db/dialect/impl/PostgresqlDialect;->wrapper:Lcn/hutool/db/sql/Wrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/hutool/db/dialect/impl/PostgresqlDialect;->wrapper:Lcn/hutool/db/sql/Wrapper;

    invoke-virtual {v0, p5}, Lcn/hutool/db/sql/Wrapper;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p5

    .line 55
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "=EXCLUDED."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p6, p1, p2

    .line 58
    invoke-virtual {p4, p1}, Lcn/hutool/db/sql/SqlBuilder;->addParams([Ljava/lang/Object;)Lcn/hutool/db/sql/SqlBuilder;

    :cond_2
    return-void
.end method

.method public varargs psForUpsert(Ljava/sql/Connection;Lcn/hutool/db/Entity;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Keys must be not empty for Postgres."

    .line 36
    invoke-static {p3, v1, v0}, Lcn/hutool/core/lang/Assert;->notEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 37
    invoke-static {p2}, Lcn/hutool/db/sql/SqlBuilder;->validateEntity(Lcn/hutool/db/Entity;)V

    .line 38
    iget-object v0, p0, Lcn/hutool/db/dialect/impl/PostgresqlDialect;->wrapper:Lcn/hutool/db/sql/Wrapper;

    invoke-static {v0}, Lcn/hutool/db/sql/SqlBuilder;->create(Lcn/hutool/db/sql/Wrapper;)Lcn/hutool/db/sql/SqlBuilder;

    move-result-object v0

    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    new-instance v10, Lcn/hutool/db/dialect/impl/PostgresqlDialect$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcn/hutool/db/dialect/impl/PostgresqlDialect$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/db/dialect/impl/PostgresqlDialect;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcn/hutool/db/sql/SqlBuilder;)V

    invoke-virtual {p2, v10}, Lcn/hutool/db/Entity;->forEach(Ljava/util/function/BiConsumer;)V

    .line 62
    invoke-virtual {p2}, Lcn/hutool/db/Entity;->getTableName()Ljava/lang/String;

    move-result-object p2

    .line 63
    iget-object v1, p0, Lcn/hutool/db/dialect/impl/PostgresqlDialect;->wrapper:Lcn/hutool/db/sql/Wrapper;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcn/hutool/db/dialect/impl/PostgresqlDialect;->wrapper:Lcn/hutool/db/sql/Wrapper;

    invoke-virtual {v1, p2}, Lcn/hutool/db/sql/Wrapper;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v1, "INSERT INTO "

    .line 66
    invoke-virtual {v0, v1}, Lcn/hutool/db/sql/SqlBuilder;->append(Ljava/lang/Object;)Lcn/hutool/db/sql/SqlBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcn/hutool/db/sql/SqlBuilder;->append(Ljava/lang/Object;)Lcn/hutool/db/sql/SqlBuilder;

    move-result-object p2

    const-string v1, " ("

    .line 68
    invoke-virtual {p2, v1}, Lcn/hutool/db/sql/SqlBuilder;->append(Ljava/lang/Object;)Lcn/hutool/db/sql/SqlBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcn/hutool/db/sql/SqlBuilder;->append(Ljava/lang/Object;)Lcn/hutool/db/sql/SqlBuilder;

    move-result-object p2

    const-string v1, ") VALUES ("

    .line 70
    invoke-virtual {p2, v1}, Lcn/hutool/db/sql/SqlBuilder;->append(Ljava/lang/Object;)Lcn/hutool/db/sql/SqlBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Lcn/hutool/db/sql/SqlBuilder;->append(Ljava/lang/Object;)Lcn/hutool/db/sql/SqlBuilder;

    move-result-object p2

    const-string v1, ") ON CONFLICT ("

    .line 72
    invoke-virtual {p2, v1}, Lcn/hutool/db/sql/SqlBuilder;->append(Ljava/lang/Object;)Lcn/hutool/db/sql/SqlBuilder;

    move-result-object p2

    const-string v1, ", "

    invoke-static {p3, v1}, Lcn/hutool/core/util/ArrayUtil;->join([Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/hutool/db/sql/SqlBuilder;->append(Ljava/lang/Object;)Lcn/hutool/db/sql/SqlBuilder;

    move-result-object p2

    const-string p3, ") DO UPDATE SET "

    .line 74
    invoke-virtual {p2, p3}, Lcn/hutool/db/sql/SqlBuilder;->append(Ljava/lang/Object;)Lcn/hutool/db/sql/SqlBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Lcn/hutool/db/sql/SqlBuilder;->append(Ljava/lang/Object;)Lcn/hutool/db/sql/SqlBuilder;

    .line 76
    invoke-static {p1, v0}, Lcn/hutool/db/StatementUtil;->prepareStatement(Ljava/sql/Connection;Lcn/hutool/db/sql/SqlBuilder;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method
