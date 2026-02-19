.class public Lcn/hutool/db/sql/ConditionGroup;
.super Lcn/hutool/db/sql/Condition;
.source "ConditionGroup.java"


# instance fields
.field private conditions:[Lcn/hutool/db/sql/Condition;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcn/hutool/db/sql/Condition;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs addConditions([Lcn/hutool/db/sql/Condition;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcn/hutool/db/sql/ConditionGroup;->conditions:[Lcn/hutool/db/sql/Condition;

    if-nez v0, :cond_0

    .line 28
    iput-object p1, p0, Lcn/hutool/db/sql/ConditionGroup;->conditions:[Lcn/hutool/db/sql/Condition;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [[Lcn/hutool/db/sql/Condition;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 30
    invoke-static {v1}, Lcn/hutool/core/util/ArrayUtil;->addAll([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcn/hutool/db/sql/Condition;

    iput-object p1, p0, Lcn/hutool/db/sql/ConditionGroup;->conditions:[Lcn/hutool/db/sql/Condition;

    :goto_0
    return-void
.end method

.method public toString(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcn/hutool/db/sql/ConditionGroup;->conditions:[Lcn/hutool/db/sql/Condition;

    invoke-static {v0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 46
    :cond_0
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->builder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcn/hutool/db/sql/ConditionGroup;->conditions:[Lcn/hutool/db/sql/Condition;

    invoke-static {v1}, Lcn/hutool/db/sql/ConditionBuilder;->of([Lcn/hutool/db/sql/Condition;)Lcn/hutool/db/sql/ConditionBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/hutool/db/sql/ConditionBuilder;->build(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
