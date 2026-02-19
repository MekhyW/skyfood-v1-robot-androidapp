.class public Lcn/hutool/db/sql/SqlExecutor;
.super Ljava/lang/Object;
.source "SqlExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs call(Ljava/sql/Connection;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 77
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/hutool/db/StatementUtil;->prepareCall(Ljava/sql/Connection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/CallableStatement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    :try_start_1
    invoke-interface {p0}, Ljava/sql/CallableStatement;->execute()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    .line 80
    invoke-static {p2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {p2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    .line 81
    throw p1
.end method

.method public static varargs callQuery(Ljava/sql/Connection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 96
    invoke-static {p0, p1, p2}, Lcn/hutool/db/StatementUtil;->prepareCall(Ljava/sql/Connection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/CallableStatement;

    move-result-object p0

    invoke-interface {p0}, Ljava/sql/CallableStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Ljava/sql/Connection;Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcn/hutool/db/sql/NamedSql;

    invoke-direct {v0, p1, p2}, Lcn/hutool/db/sql/NamedSql;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    invoke-virtual {v0}, Lcn/hutool/db/sql/NamedSql;->getSql()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcn/hutool/db/sql/NamedSql;->getParams()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcn/hutool/db/sql/SqlExecutor;->execute(Ljava/sql/Connection;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static varargs execute(Ljava/sql/Connection;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-static {v1, p0, p1, p2}, Lcn/hutool/db/StatementUtil;->prepareStatement(ZLjava/sql/Connection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/PreparedStatement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p0, p2, v1

    .line 60
    invoke-static {p2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p0, p2, v1

    invoke-static {p2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    .line 61
    throw p1
.end method

.method public static varargs execute(Ljava/sql/PreparedStatement;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 337
    invoke-static {p0, p1}, Lcn/hutool/db/StatementUtil;->fillParams(Ljava/sql/PreparedStatement;[Ljava/lang/Object;)Ljava/sql/PreparedStatement;

    .line 338
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->execute()Z

    move-result p0

    return p0
.end method

.method public static executeBatch(Ljava/sql/Connection;Ljava/lang/Iterable;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 215
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    invoke-interface {p0, v2}, Ljava/sql/Statement;->addBatch(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {p0}, Ljava/sql/Statement;->executeBatch()[I

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    .line 221
    invoke-static {v1}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {v1}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    .line 222
    throw p1
.end method

.method public static executeBatch(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/Iterable;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/Object;",
            ">;)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 179
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/hutool/db/StatementUtil;->prepareStatementForBatch(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/sql/PreparedStatement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    :try_start_1
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    .line 182
    invoke-static {p2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {p2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    .line 183
    throw p1
.end method

.method public static varargs executeBatch(Ljava/sql/Connection;Ljava/lang/String;[[Ljava/lang/Object;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    new-instance v0, Lcn/hutool/core/collection/ArrayIter;

    invoke-direct {v0, p2}, Lcn/hutool/core/collection/ArrayIter;-><init>([Ljava/lang/Object;)V

    invoke-static {p0, p1, v0}, Lcn/hutool/db/sql/SqlExecutor;->executeBatch(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/Iterable;)[I

    move-result-object p0

    return-object p0
.end method

.method public static varargs executeBatch(Ljava/sql/Connection;[Ljava/lang/String;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 198
    new-instance v0, Lcn/hutool/core/collection/ArrayIter;

    invoke-direct {v0, p1}, Lcn/hutool/core/collection/ArrayIter;-><init>([Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcn/hutool/db/sql/SqlExecutor;->executeBatch(Ljava/sql/Connection;Ljava/lang/Iterable;)[I

    move-result-object p0

    return-object p0
.end method

.method public static executeForGeneratedKey(Ljava/sql/Connection;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    new-instance v0, Lcn/hutool/db/sql/NamedSql;

    invoke-direct {v0, p1, p2}, Lcn/hutool/db/sql/NamedSql;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    invoke-virtual {v0}, Lcn/hutool/db/sql/NamedSql;->getSql()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcn/hutool/db/sql/NamedSql;->getParams()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcn/hutool/db/sql/SqlExecutor;->executeForGeneratedKey(Ljava/sql/Connection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static varargs executeForGeneratedKey(Ljava/sql/Connection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    :try_start_0
    invoke-static {v1, p0, p1, p2}, Lcn/hutool/db/StatementUtil;->prepareStatement(ZLjava/sql/Connection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/PreparedStatement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 132
    :try_start_1
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 133
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 134
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_0

    .line 136
    :try_start_3
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v0

    .line 143
    invoke-static {v2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    new-array p0, v1, [Ljava/lang/Object;

    aput-object p1, p0, v0

    .line 144
    invoke-static {p0}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    :cond_0
    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    .line 143
    invoke-static {p2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    new-array p0, v1, [Ljava/lang/Object;

    aput-object p1, p0, v0

    .line 144
    invoke-static {p0}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return-object v2

    :catchall_1
    move-exception p2

    move-object p1, v2

    :goto_0
    move-object v2, p0

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object p1, v2

    :goto_1
    new-array p0, v1, [Ljava/lang/Object;

    aput-object v2, p0, v0

    .line 143
    invoke-static {p0}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    new-array p0, v1, [Ljava/lang/Object;

    aput-object p1, p0, v0

    .line 144
    invoke-static {p0}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    .line 145
    throw p2
.end method

.method private static executeQuery(Ljava/sql/PreparedStatement;Lcn/hutool/db/handler/RsHandler;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/sql/PreparedStatement;",
            "Lcn/hutool/db/handler/RsHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 388
    :try_start_0
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 389
    :try_start_1
    invoke-interface {p1, p0}, Lcn/hutool/db/handler/RsHandler;->handle(Ljava/sql/ResultSet;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    .line 391
    invoke-static {v1}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {v1}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    .line 392
    throw p1
.end method

.method public static varargs executeUpdate(Ljava/sql/PreparedStatement;[Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 322
    invoke-static {p0, p1}, Lcn/hutool/db/StatementUtil;->fillParams(Ljava/sql/PreparedStatement;[Ljava/lang/Object;)Ljava/sql/PreparedStatement;

    .line 323
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p0

    return p0
.end method

.method public static query(Ljava/sql/Connection;Lcn/hutool/core/lang/func/Func1;Lcn/hutool/db/handler/RsHandler;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/sql/Connection;",
            "Lcn/hutool/core/lang/func/Func1<",
            "Ljava/sql/Connection;",
            "Ljava/sql/PreparedStatement;",
            ">;",
            "Lcn/hutool/db/handler/RsHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    :try_start_0
    invoke-interface {p1, p0}, Lcn/hutool/core/lang/func/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/sql/PreparedStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    :try_start_1
    invoke-static {p0, p2}, Lcn/hutool/db/sql/SqlExecutor;->executeQuery(Ljava/sql/PreparedStatement;Lcn/hutool/db/handler/RsHandler;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    .line 304
    invoke-static {p2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v2, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 299
    :goto_0
    :try_start_2
    instance-of p0, p1, Ljava/sql/SQLException;

    if-eqz p0, :cond_0

    .line 300
    check-cast p1, Ljava/sql/SQLException;

    throw p1

    .line 302
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    new-array p0, v1, [Ljava/lang/Object;

    aput-object v2, p0, v0

    .line 304
    invoke-static {p0}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    .line 305
    throw p1
.end method

.method public static query(Ljava/sql/Connection;Lcn/hutool/db/sql/SqlBuilder;Lcn/hutool/db/handler/RsHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/sql/Connection;",
            "Lcn/hutool/db/sql/SqlBuilder;",
            "Lcn/hutool/db/handler/RsHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 256
    invoke-virtual {p1}, Lcn/hutool/db/sql/SqlBuilder;->build()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/hutool/db/sql/SqlBuilder;->getParamValueArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p2, p1}, Lcn/hutool/db/sql/SqlExecutor;->query(Ljava/sql/Connection;Ljava/lang/String;Lcn/hutool/db/handler/RsHandler;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static query(Ljava/sql/Connection;Ljava/lang/String;Lcn/hutool/db/handler/RsHandler;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/sql/Connection;",
            "Ljava/lang/String;",
            "Lcn/hutool/db/handler/RsHandler<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 239
    new-instance v0, Lcn/hutool/db/sql/NamedSql;

    invoke-direct {v0, p1, p3}, Lcn/hutool/db/sql/NamedSql;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    invoke-virtual {v0}, Lcn/hutool/db/sql/NamedSql;->getSql()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcn/hutool/db/sql/NamedSql;->getParams()[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcn/hutool/db/sql/SqlExecutor;->query(Ljava/sql/Connection;Ljava/lang/String;Lcn/hutool/db/handler/RsHandler;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs query(Ljava/sql/Connection;Ljava/lang/String;Lcn/hutool/db/handler/RsHandler;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/sql/Connection;",
            "Ljava/lang/String;",
            "Lcn/hutool/db/handler/RsHandler<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    :try_start_0
    invoke-static {v1, p0, p1, p3}, Lcn/hutool/db/StatementUtil;->prepareStatement(ZLjava/sql/Connection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/PreparedStatement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 275
    :try_start_1
    invoke-static {p0, p2}, Lcn/hutool/db/sql/SqlExecutor;->executeQuery(Ljava/sql/PreparedStatement;Lcn/hutool/db/handler/RsHandler;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p0, p2, v1

    .line 277
    invoke-static {p2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p0, p2, v1

    invoke-static {p2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    .line 278
    throw p1
.end method

.method public static varargs query(Ljava/sql/PreparedStatement;Lcn/hutool/db/handler/RsHandler;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/sql/PreparedStatement;",
            "Lcn/hutool/db/handler/RsHandler<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 353
    invoke-static {p0, p2}, Lcn/hutool/db/StatementUtil;->fillParams(Ljava/sql/PreparedStatement;[Ljava/lang/Object;)Ljava/sql/PreparedStatement;

    .line 354
    invoke-static {p0, p1}, Lcn/hutool/db/sql/SqlExecutor;->executeQuery(Ljava/sql/PreparedStatement;Lcn/hutool/db/handler/RsHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs queryAndClosePs(Ljava/sql/PreparedStatement;Lcn/hutool/db/handler/RsHandler;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/sql/PreparedStatement;",
            "Lcn/hutool/db/handler/RsHandler<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 369
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/hutool/db/sql/SqlExecutor;->query(Ljava/sql/PreparedStatement;Lcn/hutool/db/handler/RsHandler;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    .line 371
    invoke-static {p2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {p2}, Lcn/hutool/db/DbUtil;->close([Ljava/lang/Object;)V

    .line 372
    throw p1
.end method
