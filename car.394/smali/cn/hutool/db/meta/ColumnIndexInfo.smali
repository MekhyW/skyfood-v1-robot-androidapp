.class public Lcn/hutool/db/meta/ColumnIndexInfo;
.super Ljava/lang/Object;
.source "ColumnIndexInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ascOrDesc:Ljava/lang/String;

.field private columnName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcn/hutool/db/meta/ColumnIndexInfo;->columnName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcn/hutool/db/meta/ColumnIndexInfo;->ascOrDesc:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/sql/ResultSet;)Lcn/hutool/db/meta/ColumnIndexInfo;
    .locals 3

    .line 26
    :try_start_0
    new-instance v0, Lcn/hutool/db/meta/ColumnIndexInfo;

    const-string v1, "COLUMN_NAME"

    .line 27
    invoke-interface {p0, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASC_OR_DESC"

    .line 28
    invoke-interface {p0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcn/hutool/db/meta/ColumnIndexInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 30
    new-instance v0, Lcn/hutool/db/DbRuntimeException;

    invoke-direct {v0, p0}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public clone()Lcn/hutool/db/meta/ColumnIndexInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/db/meta/ColumnIndexInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcn/hutool/db/meta/ColumnIndexInfo;->clone()Lcn/hutool/db/meta/ColumnIndexInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAscOrDesc()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/hutool/db/meta/ColumnIndexInfo;->ascOrDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/hutool/db/meta/ColumnIndexInfo;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public setAscOrDesc(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcn/hutool/db/meta/ColumnIndexInfo;->ascOrDesc:Ljava/lang/String;

    return-void
.end method

.method public setColumnName(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcn/hutool/db/meta/ColumnIndexInfo;->columnName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColumnIndexInfo{columnName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/hutool/db/meta/ColumnIndexInfo;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', ascOrDesc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/db/meta/ColumnIndexInfo;->ascOrDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
