.class public Lcn/hutool/core/lang/ConsoleTable;
.super Ljava/lang/Object;
.source "ConsoleTable.java"


# static fields
.field private static final COLUMN_LINE:C = '|'

.field private static final CORNER:C = '+'

.field private static final LF:C = '\n'

.field private static final ROW_LINE:C = '\uff0d'

.field private static final SPACE:C = '\u3000'


# instance fields
.field private final bodyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private columnCharNumber:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private isSBCMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcn/hutool/core/lang/ConsoleTable;->isSBCMode:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/lang/ConsoleTable;->headerList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/lang/ConsoleTable;->bodyList:Ljava/util/List;

    return-void
.end method

.method public static create()Lcn/hutool/core/lang/ConsoleTable;
    .locals 1

    .line 34
    new-instance v0, Lcn/hutool/core/lang/ConsoleTable;

    invoke-direct {v0}, Lcn/hutool/core/lang/ConsoleTable;-><init>()V

    return-object v0
.end method

.method private fillBorder(Ljava/lang/StringBuilder;)V
    .locals 4

    const/16 v0, 0x2b

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcn/hutool/core/lang/ConsoleTable;->columnCharNumber:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const v3, 0xff0d

    invoke-static {v3, v2}, Lcn/hutool/core/util/StrUtil;->repeat(CI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private fillColumns(Ljava/util/List;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 99
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 100
    aget-object v1, p2, v0

    .line 101
    iget-boolean v2, p0, Lcn/hutool/core/lang/ConsoleTable;->isSBCMode:Z

    if-eqz v2, :cond_0

    .line 102
    invoke-static {v1}, Lcn/hutool/core/convert/Convert;->toSBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 106
    iget-object v2, p0, Lcn/hutool/core/lang/ConsoleTable;->columnCharNumber:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 107
    iget-object v2, p0, Lcn/hutool/core/lang/ConsoleTable;->columnCharNumber:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fillRow(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 152
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x3000

    .line 153
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 156
    invoke-direct {p0, v3}, Lcn/hutool/core/lang/ConsoleTable;->sbcCount(Ljava/lang/String;)I

    move-result v3

    .line 157
    rem-int/lit8 v6, v3, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/16 v6, 0x20

    .line 158
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    iget-object v6, p0, Lcn/hutool/core/lang/ConsoleTable;->columnCharNumber:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v7, v1

    :goto_1
    sub-int v8, v6, v5

    .line 162
    div-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_1

    .line 163
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0x7c

    .line 165
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fillRows(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 135
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/16 v1, 0x7c

    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/lang/ConsoleTable;->fillRow(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const/16 v0, 0xa

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sbcCount(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 198
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public varargs addBody([Ljava/lang/String;)Lcn/hutool/core/lang/ConsoleTable;
    .locals 2

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-object v1, p0, Lcn/hutool/core/lang/ConsoleTable;->bodyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-direct {p0, v0, p1}, Lcn/hutool/core/lang/ConsoleTable;->fillColumns(Ljava/util/List;[Ljava/lang/String;)V

    return-object p0
.end method

.method public varargs addHeader([Ljava/lang/String;)Lcn/hutool/core/lang/ConsoleTable;
    .locals 3

    .line 70
    iget-object v0, p0, Lcn/hutool/core/lang/ConsoleTable;->columnCharNumber:Ljava/util/List;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/hutool/core/lang/ConsoleTable;->columnCharNumber:Ljava/util/List;

    .line 73
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-direct {p0, v0, p1}, Lcn/hutool/core/lang/ConsoleTable;->fillColumns(Ljava/util/List;[Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcn/hutool/core/lang/ConsoleTable;->headerList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public print()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcn/hutool/core/lang/ConsoleTable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/lang/Console;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public setSBCMode(Z)Lcn/hutool/core/lang/ConsoleTable;
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcn/hutool/core/lang/ConsoleTable;->isSBCMode:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-direct {p0, v0}, Lcn/hutool/core/lang/ConsoleTable;->fillBorder(Ljava/lang/StringBuilder;)V

    .line 121
    iget-object v1, p0, Lcn/hutool/core/lang/ConsoleTable;->headerList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcn/hutool/core/lang/ConsoleTable;->fillRows(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 122
    invoke-direct {p0, v0}, Lcn/hutool/core/lang/ConsoleTable;->fillBorder(Ljava/lang/StringBuilder;)V

    .line 123
    iget-object v1, p0, Lcn/hutool/core/lang/ConsoleTable;->bodyList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcn/hutool/core/lang/ConsoleTable;->fillRows(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 124
    invoke-direct {p0, v0}, Lcn/hutool/core/lang/ConsoleTable;->fillBorder(Ljava/lang/StringBuilder;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
