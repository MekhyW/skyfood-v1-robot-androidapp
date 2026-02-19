.class public interface abstract Lcn/hutool/core/getter/OptNullBasicTypeGetter;
.super Ljava/lang/Object;
.source "OptNullBasicTypeGetter.java"

# interfaces
.implements Lcn/hutool/core/getter/BasicTypeGetter;
.implements Lcn/hutool/core/getter/OptBasicTypeGetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/getter/BasicTypeGetter<",
        "TK;>;",
        "Lcn/hutool/core/getter/OptBasicTypeGetter<",
        "TK;>;"
    }
.end annotation


# virtual methods
.method public getBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 149
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getBigInteger(Ljava/lang/Object;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public getBool(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getBool(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Byte;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getByte(Ljava/lang/Object;Ljava/lang/Byte;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public getChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Character;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getChar(Ljava/lang/Object;Ljava/lang/Character;)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public getDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Date;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getDate(Ljava/lang/Object;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getDouble(Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getEnum(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;TK;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    invoke-interface {p0, p1, p2, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getEnum(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getInt(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getLong(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getObj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getObj(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Short;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getShort(Ljava/lang/Object;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public getStr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-interface {p0, p1, v0}, Lcn/hutool/core/getter/OptNullBasicTypeGetter;->getStr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
