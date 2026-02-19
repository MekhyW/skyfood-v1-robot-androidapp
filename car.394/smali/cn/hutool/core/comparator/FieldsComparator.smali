.class public Lcn/hutool/core/comparator/FieldsComparator;
.super Lcn/hutool/core/comparator/NullComparator;
.source "FieldsComparator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/core/comparator/NullComparator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x78081e31a21431c3L


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, v0, p1, p2}, Lcn/hutool/core/comparator/FieldsComparator;-><init>(ZLjava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(ZLjava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    new-instance v0, Lcn/hutool/core/comparator/FieldsComparator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p2}, Lcn/hutool/core/comparator/FieldsComparator$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lcn/hutool/core/comparator/NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-void
.end method

.method static synthetic lambda$new$0([Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 38
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 39
    invoke-static {p1, v3}, Lcn/hutool/core/util/ClassUtil;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v3, "Field [{}] not found in Class [{}]"

    invoke-static {v4, v3, v5}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v3, Lcn/hutool/core/comparator/FieldComparator;

    invoke-direct {v3, v4}, Lcn/hutool/core/comparator/FieldComparator;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {v3, p2, p3}, Lcn/hutool/core/comparator/FieldComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
