.class public Lcn/hutool/db/ds/DataSourceWrapper;
.super Ljava/lang/Object;
.source "DataSourceWrapper.java"

# interfaces
.implements Ljavax/sql/DataSource;
.implements Ljava/io/Closeable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final driver:Ljava/lang/String;

.field private final ds:Ljavax/sql/DataSource;


# direct methods
.method public constructor <init>(Ljavax/sql/DataSource;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcn/hutool/db/ds/DataSourceWrapper;->ds:Ljavax/sql/DataSource;

    .line 48
    iput-object p2, p0, Lcn/hutool/db/ds/DataSourceWrapper;->driver:Ljava/lang/String;

    return-void
.end method

.method public static wrap(Ljavax/sql/DataSource;Ljava/lang/String;)Lcn/hutool/db/ds/DataSourceWrapper;
    .locals 1

    .line 37
    new-instance v0, Lcn/hutool/db/ds/DataSourceWrapper;

    invoke-direct {v0, p0, p1}, Lcn/hutool/db/ds/DataSourceWrapper;-><init>(Ljavax/sql/DataSource;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcn/hutool/db/ds/DataSourceWrapper;
    .locals 2

    .line 124
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/db/ds/DataSourceWrapper;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Lcn/hutool/core/clone/CloneRuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/clone/CloneRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcn/hutool/db/ds/DataSourceWrapper;->clone()Lcn/hutool/db/ds/DataSourceWrapper;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcn/hutool/db/ds/DataSourceWrapper;->ds:Ljavax/sql/DataSource;

    instance-of v1, v0, Ljava/lang/AutoCloseable;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Ljava/lang/AutoCloseable;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/lang/AutoCloseable;)V

    :cond_0
    return-void
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcn/hutool/db/ds/DataSourceWrapper;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcn/hutool/db/ds/DataSourceWrapper;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0, p1, p2}, Ljavax/sql/DataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p1

    return-object p1
.end method

.method public getDriver()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/hutool/db/ds/DataSourceWrapper;->driver:Ljava/lang/String;

    return-object v0
.end method

.method public getLogWriter()Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcn/hutool/db/ds/DataSourceWrapper;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public getLoginTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcn/hutool/db/ds/DataSourceWrapper;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getLoginTimeout()I

    move-result v0

    return v0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLFeatureNotSupportedException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcn/hutool/db/ds/DataSourceWrapper;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getParentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getRaw()Ljavax/sql/DataSource;
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/hutool/db/ds/DataSourceWrapper;->ds:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcn/hutool/db/ds/DataSourceWrapper;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0, p1}, Ljavax/sql/DataSource;->isWrapperFor(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public setLogWriter(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcn/hutool/db/ds/DataSourceWrapper;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0, p1}, Ljavax/sql/DataSource;->setLogWriter(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public setLoginTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcn/hutool/db/ds/DataSourceWrapper;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0, p1}, Ljavax/sql/DataSource;->setLoginTimeout(I)V

    return-void
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcn/hutool/db/ds/DataSourceWrapper;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0, p1}, Ljavax/sql/DataSource;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
