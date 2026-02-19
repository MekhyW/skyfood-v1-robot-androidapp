.class public Lcn/hutool/json/JSONConfig;
.super Ljava/lang/Object;
.source "JSONConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1a95e1faacf4ce6L


# instance fields
.field private checkDuplicate:Z

.field private dateFormat:Ljava/lang/String;

.field private ignoreCase:Z

.field private ignoreError:Z

.field private ignoreNullValue:Z

.field private keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stripTrailingZeros:Z

.field private transientSupport:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcn/hutool/json/JSONConfig;->ignoreNullValue:Z

    .line 40
    iput-boolean v0, p0, Lcn/hutool/json/JSONConfig;->transientSupport:Z

    .line 45
    iput-boolean v0, p0, Lcn/hutool/json/JSONConfig;->stripTrailingZeros:Z

    return-void
.end method

.method public static create()Lcn/hutool/json/JSONConfig;
    .locals 1

    .line 58
    new-instance v0, Lcn/hutool/json/JSONConfig;

    invoke-direct {v0}, Lcn/hutool/json/JSONConfig;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcn/hutool/json/JSONConfig;->dateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcn/hutool/json/JSONConfig;->keyComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public isCheckDuplicate()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcn/hutool/json/JSONConfig;->checkDuplicate:Z

    return v0
.end method

.method public isIgnoreCase()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcn/hutool/json/JSONConfig;->ignoreCase:Z

    return v0
.end method

.method public isIgnoreError()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcn/hutool/json/JSONConfig;->ignoreError:Z

    return v0
.end method

.method public isIgnoreNullValue()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcn/hutool/json/JSONConfig;->ignoreNullValue:Z

    return v0
.end method

.method public isOrder()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isStripTrailingZeros()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcn/hutool/json/JSONConfig;->stripTrailingZeros:Z

    return v0
.end method

.method public isTransientSupport()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcn/hutool/json/JSONConfig;->transientSupport:Z

    return v0
.end method

.method public setCheckDuplicate(Z)Lcn/hutool/json/JSONConfig;
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcn/hutool/json/JSONConfig;->checkDuplicate:Z

    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcn/hutool/json/JSONConfig;
    .locals 0

    .line 176
    iput-object p1, p0, Lcn/hutool/json/JSONConfig;->dateFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setIgnoreCase(Z)Lcn/hutool/json/JSONConfig;
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcn/hutool/json/JSONConfig;->ignoreCase:Z

    return-object p0
.end method

.method public setIgnoreError(Z)Lcn/hutool/json/JSONConfig;
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcn/hutool/json/JSONConfig;->ignoreError:Z

    return-object p0
.end method

.method public setIgnoreNullValue(Z)Lcn/hutool/json/JSONConfig;
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcn/hutool/json/JSONConfig;->ignoreNullValue:Z

    return-object p0
.end method

.method public setKeyComparator(Ljava/util/Comparator;)Lcn/hutool/json/JSONConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/hutool/json/JSONConfig;"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcn/hutool/json/JSONConfig;->keyComparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public setNatureKeyComparator()Lcn/hutool/json/JSONConfig;
    .locals 1

    .line 103
    invoke-static {}, Lcn/hutool/core/comparator/CompareUtil;->naturalComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/json/JSONConfig;->setKeyComparator(Ljava/util/Comparator;)Lcn/hutool/json/JSONConfig;

    move-result-object v0

    return-object v0
.end method

.method public setOrder(Z)Lcn/hutool/json/JSONConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setStripTrailingZeros(Z)Lcn/hutool/json/JSONConfig;
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcn/hutool/json/JSONConfig;->stripTrailingZeros:Z

    return-object p0
.end method

.method public setTransientSupport(Z)Lcn/hutool/json/JSONConfig;
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcn/hutool/json/JSONConfig;->transientSupport:Z

    return-object p0
.end method
