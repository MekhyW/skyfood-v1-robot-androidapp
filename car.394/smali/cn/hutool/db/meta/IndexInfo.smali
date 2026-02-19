.class public Lcn/hutool/db/meta/IndexInfo;
.super Ljava/lang/Object;
.source "IndexInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private catalog:Ljava/lang/String;

.field private columnIndexInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/hutool/db/meta/ColumnIndexInfo;",
            ">;"
        }
    .end annotation
.end field

.field private indexName:Ljava/lang/String;

.field private nonUnique:Z

.field private schema:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Lcn/hutool/db/meta/IndexInfo;->nonUnique:Z

    .line 60
    iput-object p2, p0, Lcn/hutool/db/meta/IndexInfo;->indexName:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcn/hutool/db/meta/IndexInfo;->tableName:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcn/hutool/db/meta/IndexInfo;->schema:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcn/hutool/db/meta/IndexInfo;->catalog:Ljava/lang/String;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcn/hutool/db/meta/IndexInfo;->setColumnIndexInfoList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public clone()Lcn/hutool/db/meta/IndexInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 135
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/db/meta/IndexInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcn/hutool/db/meta/IndexInfo;->clone()Lcn/hutool/db/meta/IndexInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    check-cast p1, Lcn/hutool/db/meta/IndexInfo;

    .line 124
    iget-object v2, p0, Lcn/hutool/db/meta/IndexInfo;->indexName:Ljava/lang/String;

    iget-object v3, p1, Lcn/hutool/db/meta/IndexInfo;->indexName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/hutool/core/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/hutool/db/meta/IndexInfo;->tableName:Ljava/lang/String;

    iget-object p1, p1, Lcn/hutool/db/meta/IndexInfo;->tableName:Ljava/lang/String;

    .line 125
    invoke-static {v2, p1}, Lcn/hutool/core/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/hutool/db/meta/IndexInfo;->catalog:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnIndexInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/hutool/db/meta/ColumnIndexInfo;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcn/hutool/db/meta/IndexInfo;->columnIndexInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getIndexName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/hutool/db/meta/IndexInfo;->indexName:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/hutool/db/meta/IndexInfo;->schema:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/hutool/db/meta/IndexInfo;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Lcn/hutool/db/meta/IndexInfo;->indexName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/hutool/db/meta/IndexInfo;->tableName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNonUnique()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcn/hutool/db/meta/IndexInfo;->nonUnique:Z

    return v0
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/hutool/db/meta/IndexInfo;->catalog:Ljava/lang/String;

    return-void
.end method

.method public setColumnIndexInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/hutool/db/meta/ColumnIndexInfo;",
            ">;)V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcn/hutool/db/meta/IndexInfo;->columnIndexInfoList:Ljava/util/List;

    return-void
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/hutool/db/meta/IndexInfo;->indexName:Ljava/lang/String;

    return-void
.end method

.method public setNonUnique(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcn/hutool/db/meta/IndexInfo;->nonUnique:Z

    return-void
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcn/hutool/db/meta/IndexInfo;->schema:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/hutool/db/meta/IndexInfo;->tableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IndexInfo{nonUnique="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/hutool/db/meta/IndexInfo;->nonUnique:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indexName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/db/meta/IndexInfo;->indexName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', tableName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/db/meta/IndexInfo;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', schema=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/db/meta/IndexInfo;->schema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', catalog=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/db/meta/IndexInfo;->catalog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', columnIndexInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/db/meta/IndexInfo;->columnIndexInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
