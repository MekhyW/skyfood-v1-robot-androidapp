.class public Lcn/hutool/db/meta/Column;
.super Ljava/lang/Object;
.source "Column.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x803ca6b841339c7L


# instance fields
.field private autoIncrement:Z

.field private columnDef:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private digit:Ljava/lang/Integer;

.field private isNullable:Z

.field private isPk:Z

.field private name:Ljava/lang/String;

.field private size:J

.field private tableName:Ljava/lang/String;

.field private type:I

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/db/meta/Table;Ljava/sql/ResultSet;)V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcn/hutool/db/meta/Column;->init(Lcn/hutool/db/meta/Table;Ljava/sql/ResultSet;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 96
    new-instance p2, Lcn/hutool/db/DbRuntimeException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/hutool/db/meta/Column;->tableName:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Get table [{}] meta info error!"

    invoke-direct {p2, p1, v1, v0}, Lcn/hutool/db/DbRuntimeException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public static create(Lcn/hutool/db/meta/Table;Ljava/sql/ResultSet;)Lcn/hutool/db/meta/Column;
    .locals 1

    .line 74
    new-instance v0, Lcn/hutool/db/meta/Column;

    invoke-direct {v0, p0, p1}, Lcn/hutool/db/meta/Column;-><init>(Lcn/hutool/db/meta/Table;Ljava/sql/ResultSet;)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcn/hutool/db/meta/Column;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 388
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/db/meta/Column;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcn/hutool/db/meta/Column;->clone()Lcn/hutool/db/meta/Column;

    move-result-object v0

    return-object v0
.end method

.method public getColumnDef()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcn/hutool/db/meta/Column;->columnDef:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcn/hutool/db/meta/Column;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDigit()I
    .locals 1

    .line 262
    iget-object v0, p0, Lcn/hutool/db/meta/Column;->digit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcn/hutool/db/meta/Column;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 242
    iget-wide v0, p0, Lcn/hutool/db/meta/Column;->size:J

    return-wide v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcn/hutool/db/meta/Column;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 202
    iget v0, p0, Lcn/hutool/db/meta/Column;->type:I

    return v0
.end method

.method public getTypeEnum()Lcn/hutool/db/meta/JdbcType;
    .locals 1

    .line 193
    iget v0, p0, Lcn/hutool/db/meta/Column;->type:I

    invoke-static {v0}, Lcn/hutool/db/meta/JdbcType;->valueOf(I)Lcn/hutool/db/meta/JdbcType;

    move-result-object v0

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcn/hutool/db/meta/Column;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcn/hutool/db/meta/Table;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Lcn/hutool/db/meta/Table;->getTableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/db/meta/Column;->tableName:Ljava/lang/String;

    const-string v0, "COLUMN_NAME"

    .line 111
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/db/meta/Column;->name:Ljava/lang/String;

    .line 112
    invoke-virtual {p1, v0}, Lcn/hutool/db/meta/Table;->isPk(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/hutool/db/meta/Column;->isPk:Z

    const-string p1, "DATA_TYPE"

    .line 114
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/hutool/db/meta/Column;->type:I

    const-string p1, "TYPE_NAME"

    .line 116
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\(\\d+\\)"

    .line 118
    invoke-static {v0, p1}, Lcn/hutool/core/util/ReUtil;->delLast(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 119
    iput-object p1, p0, Lcn/hutool/db/meta/Column;->typeName:Ljava/lang/String;

    const-string p1, "COLUMN_SIZE"

    .line 121
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/hutool/db/meta/Column;->size:J

    const-string p1, "NULLABLE"

    .line 122
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/hutool/db/meta/Column;->isNullable:Z

    const-string p1, "REMARKS"

    .line 123
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/db/meta/Column;->comment:Ljava/lang/String;

    const-string p1, "COLUMN_DEF"

    .line 124
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/db/meta/Column;->columnDef:Ljava/lang/String;

    :try_start_0
    const-string p1, "DECIMAL_DIGITS"

    .line 128
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/db/meta/Column;->digit:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string p1, "IS_AUTOINCREMENT"

    .line 135
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Lcn/hutool/core/util/BooleanUtil;->toBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcn/hutool/db/meta/Column;->autoIncrement:Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method

.method public isAutoIncrement()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lcn/hutool/db/meta/Column;->autoIncrement:Z

    return v0
.end method

.method public isNullable()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcn/hutool/db/meta/Column;->isNullable:Z

    return v0
.end method

.method public isPk()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcn/hutool/db/meta/Column;->isPk:Z

    return v0
.end method

.method public setAutoIncrement(Z)Lcn/hutool/db/meta/Column;
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcn/hutool/db/meta/Column;->autoIncrement:Z

    return-object p0
.end method

.method public setColumnDef(Ljava/lang/String;)Lcn/hutool/db/meta/Column;
    .locals 0

    .line 375
    iput-object p1, p0, Lcn/hutool/db/meta/Column;->columnDef:Ljava/lang/String;

    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcn/hutool/db/meta/Column;
    .locals 0

    .line 312
    iput-object p1, p0, Lcn/hutool/db/meta/Column;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public setDigit(I)Lcn/hutool/db/meta/Column;
    .locals 0

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/db/meta/Column;->digit:Ljava/lang/Integer;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcn/hutool/db/meta/Column;
    .locals 0

    .line 182
    iput-object p1, p0, Lcn/hutool/db/meta/Column;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setNullable(Z)Lcn/hutool/db/meta/Column;
    .locals 0

    .line 292
    iput-boolean p1, p0, Lcn/hutool/db/meta/Column;->isNullable:Z

    return-object p0
.end method

.method public setPk(Z)Lcn/hutool/db/meta/Column;
    .locals 0

    .line 356
    iput-boolean p1, p0, Lcn/hutool/db/meta/Column;->isPk:Z

    return-object p0
.end method

.method public setSize(I)Lcn/hutool/db/meta/Column;
    .locals 2

    int-to-long v0, p1

    .line 252
    iput-wide v0, p0, Lcn/hutool/db/meta/Column;->size:J

    return-object p0
.end method

.method public setTableName(Ljava/lang/String;)Lcn/hutool/db/meta/Column;
    .locals 0

    .line 162
    iput-object p1, p0, Lcn/hutool/db/meta/Column;->tableName:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)Lcn/hutool/db/meta/Column;
    .locals 0

    .line 212
    iput p1, p0, Lcn/hutool/db/meta/Column;->type:I

    return-object p0
.end method

.method public setTypeName(Ljava/lang/String;)Lcn/hutool/db/meta/Column;
    .locals 0

    .line 232
    iput-object p1, p0, Lcn/hutool/db/meta/Column;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Column [tableName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/hutool/db/meta/Column;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/db/meta/Column;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/hutool/db/meta/Column;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/db/meta/Column;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNullable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/hutool/db/meta/Column;->isNullable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
