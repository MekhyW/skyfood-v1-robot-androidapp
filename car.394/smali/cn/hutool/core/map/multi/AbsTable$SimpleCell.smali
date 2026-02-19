.class Lcn/hutool/core/map/multi/AbsTable$SimpleCell;
.super Ljava/lang/Object;
.source "AbsTable.java"

# interfaces
.implements Lcn/hutool/core/map/multi/Table$Cell;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/map/multi/AbsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleCell"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/map/multi/Table$Cell<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final columnKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final rowKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)V"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->rowKey:Ljava/lang/Object;

    .line 193
    iput-object p2, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->columnKey:Ljava/lang/Object;

    .line 194
    iput-object p3, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 217
    :cond_0
    instance-of v1, p1, Lcn/hutool/core/map/multi/Table$Cell;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 218
    check-cast p1, Lcn/hutool/core/map/multi/Table$Cell;

    .line 219
    iget-object v1, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->rowKey:Ljava/lang/Object;

    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/hutool/core/util/ObjectUtil;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->columnKey:Ljava/lang/Object;

    .line 220
    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/hutool/core/util/ObjectUtil;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->value:Ljava/lang/Object;

    .line 221
    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/hutool/core/util/ObjectUtil;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getColumnKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->columnKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getRowKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->rowKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 228
    iget-object v2, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->rowKey:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->columnKey:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->value:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->rowKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
