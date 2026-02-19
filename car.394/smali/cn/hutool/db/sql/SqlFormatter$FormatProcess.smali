.class Lcn/hutool/db/sql/SqlFormatter$FormatProcess;
.super Ljava/lang/Object;
.source "SqlFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/db/sql/SqlFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatProcess"
.end annotation


# instance fields
.field afterBeginBeforeEnd:Z

.field afterBetween:Z

.field private final afterByOrFromOrSelects:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field afterByOrSetOrFromOrSelect:Z

.field afterInsert:Z

.field afterOn:Z

.field beginLine:Z

.field inFunction:I

.field indent:I

.field lastToken:Ljava/lang/String;

.field lcToken:Ljava/lang/String;

.field private final parenCounts:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field parensSinceSelect:I

.field result:Ljava/lang/StringBuffer;

.field token:Ljava/lang/String;

.field tokens:Ljava/util/StringTokenizer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->beginLine:Z

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterBeginBeforeEnd:Z

    .line 72
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterByOrSetOrFromOrSelect:Z

    .line 74
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterOn:Z

    .line 75
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterBetween:Z

    .line 76
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterInsert:Z

    .line 77
    iput v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->inFunction:I

    .line 78
    iput v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->parensSinceSelect:I

    .line 79
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->parenCounts:Ljava/util/LinkedList;

    .line 80
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterByOrFromOrSelects:Ljava/util/LinkedList;

    .line 82
    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 84
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->result:Ljava/lang/StringBuffer;

    .line 91
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "()+*/-=<>\'`\"[], \n\r\u000c\t"

    invoke-direct {v1, p1, v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->tokens:Ljava/util/StringTokenizer;

    return-void
.end method

.method private beginNewClause()V
    .locals 3

    .line 251
    iget-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterBeginBeforeEnd:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 252
    iget-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterOn:Z

    if-eqz v0, :cond_0

    .line 253
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 254
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterOn:Z

    .line 256
    :cond_0
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 257
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    .line 259
    :cond_1
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    .line 260
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->beginLine:Z

    .line 261
    iput-boolean v2, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterBeginBeforeEnd:Z

    return-void
.end method

.method private closeParen()V
    .locals 1

    .line 274
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->parensSinceSelect:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->parensSinceSelect:I

    if-gez v0, :cond_0

    .line 276
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 277
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->parenCounts:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->parensSinceSelect:I

    .line 278
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterByOrFromOrSelects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterByOrSetOrFromOrSelect:Z

    .line 280
    :cond_0
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->inFunction:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 281
    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->inFunction:I

    goto :goto_0

    .line 283
    :cond_1
    iget-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterByOrSetOrFromOrSelect:Z

    if-nez v0, :cond_2

    .line 284
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 285
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    .line 288
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->beginLine:Z

    return-void
.end method

.method private commaAfterByOrFromOrSelect()V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    .line 164
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    return-void
.end method

.method private commaAfterOn()V
    .locals 2

    .line 155
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    .line 156
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 157
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterOn:Z

    .line 159
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterByOrSetOrFromOrSelect:Z

    return-void
.end method

.method private endNewClause()V
    .locals 4

    .line 233
    iget-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterBeginBeforeEnd:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 234
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 235
    iget-boolean v3, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterOn:Z

    if-eqz v3, :cond_0

    sub-int/2addr v0, v2

    .line 236
    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 237
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterOn:Z

    .line 239
    :cond_0
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    .line 241
    :cond_1
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    const-string v0, "union"

    .line 242
    iget-object v3, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 245
    :cond_2
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    .line 246
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterBeginBeforeEnd:Z

    const-string v0, "by"

    .line 247
    iget-object v3, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "set"

    iget-object v3, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "from"

    iget-object v3, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterByOrSetOrFromOrSelect:Z

    return-void
.end method

.method private static isFunctionName(Ljava/lang/String;)Z
    .locals 4

    .line 311
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 315
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x22

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 316
    invoke-static {}, Lcn/hutool/db/sql/SqlFormatter;->access$300()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcn/hutool/db/sql/SqlFormatter;->access$100()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcn/hutool/db/sql/SqlFormatter;->access$400()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcn/hutool/db/sql/SqlFormatter;->access$200()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcn/hutool/db/sql/SqlFormatter;->access$500()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method private static isWhitespace(Ljava/lang/String;)Z
    .locals 1

    const-string v0, " \n\r\u000c\t"

    .line 320
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private logical()V
    .locals 2

    const-string v0, "end"

    .line 168
    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 171
    :cond_0
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    .line 172
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->beginLine:Z

    return-void
.end method

.method private misc()V
    .locals 3

    .line 185
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    const-string v0, "between"

    .line 186
    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 187
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterBetween:Z

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterInsert:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    .line 191
    iput-boolean v2, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterInsert:Z

    goto :goto_0

    .line 193
    :cond_1
    iput-boolean v2, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->beginLine:Z

    const-string v0, "case"

    .line 194
    iget-object v2, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    :cond_2
    :goto_0
    return-void
.end method

.method private newline()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->result:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 325
    :goto_0
    iget v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    if-ge v0, v1, :cond_0

    .line 326
    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->result:Ljava/lang/StringBuffer;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->beginLine:Z

    return-void
.end method

.method private on()V
    .locals 2

    .line 177
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 178
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterOn:Z

    .line 179
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    .line 180
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->beginLine:Z

    return-void
.end method

.method private openParen()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lastToken:Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->isFunctionName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->inFunction:I

    if-lez v0, :cond_1

    .line 294
    :cond_0
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->inFunction:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->inFunction:I

    :cond_1
    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->beginLine:Z

    .line 297
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->inFunction:I

    if-lez v0, :cond_2

    .line 298
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    goto :goto_0

    .line 300
    :cond_2
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    .line 301
    iget-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterByOrSetOrFromOrSelect:Z

    if-nez v0, :cond_3

    .line 302
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 303
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    .line 304
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->beginLine:Z

    .line 307
    :cond_3
    :goto_0
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->parensSinceSelect:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->parensSinceSelect:I

    return-void
.end method

.method private out()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->result:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private select()V
    .locals 3

    .line 219
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    .line 220
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 221
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    .line 222
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->parenCounts:Ljava/util/LinkedList;

    iget v2, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->parensSinceSelect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterByOrFromOrSelects:Ljava/util/LinkedList;

    iget-boolean v2, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterByOrSetOrFromOrSelect:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->parensSinceSelect:I

    .line 225
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterByOrSetOrFromOrSelect:Z

    return-void
.end method

.method private updateOrInsertOrDelete()V
    .locals 3

    .line 207
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    .line 208
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->beginLine:Z

    const-string v0, "update"

    .line 210
    iget-object v2, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    :cond_0
    const-string v0, "insert"

    .line 213
    iget-object v2, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iput-boolean v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterInsert:Z

    :cond_1
    return-void
.end method

.method private values()V
    .locals 1

    .line 265
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 266
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    .line 267
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->out()V

    .line 268
    iget v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->indent:I

    .line 269
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->newline()V

    return-void
.end method

.method private white()V
    .locals 2

    .line 201
    iget-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->beginLine:Z

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->result:Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method


# virtual methods
.method public perform()Ljava/lang/String;
    .locals 4

    .line 95
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->result:Ljava/lang/StringBuffer;

    const-string v1, "\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->tokens:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 98
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->tokens:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    const-string v1, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    :cond_1
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->tokens:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->tokens:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 107
    :cond_2
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    const-string v1, "\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    :cond_3
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->tokens:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterByOrSetOrFromOrSelect:Z

    const-string v1, ","

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->commaAfterByOrFromOrSelect()V

    goto/16 :goto_2

    .line 117
    :cond_5
    iget-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterOn:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->commaAfterOn()V

    goto/16 :goto_2

    :cond_6
    const-string v0, "("

    .line 119
    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->openParen()V

    goto/16 :goto_2

    :cond_7
    const-string v0, ")"

    .line 121
    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 122
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->closeParen()V

    goto/16 :goto_2

    .line 123
    :cond_8
    invoke-static {}, Lcn/hutool/db/sql/SqlFormatter;->access$000()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 124
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->beginNewClause()V

    goto/16 :goto_2

    .line 125
    :cond_9
    invoke-static {}, Lcn/hutool/db/sql/SqlFormatter;->access$100()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 126
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->endNewClause()V

    goto/16 :goto_2

    :cond_a
    const-string v0, "select"

    .line 127
    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->select()V

    goto :goto_2

    .line 129
    :cond_b
    invoke-static {}, Lcn/hutool/db/sql/SqlFormatter;->access$200()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 130
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->updateOrInsertOrDelete()V

    goto :goto_2

    :cond_c
    const-string v0, "values"

    .line 131
    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 132
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->values()V

    goto :goto_2

    :cond_d
    const-string v0, "on"

    .line 133
    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 134
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->on()V

    goto :goto_2

    .line 135
    :cond_e
    iget-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterBetween:Z

    if-eqz v0, :cond_f

    const-string v0, "and"

    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 136
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->misc()V

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->afterBetween:Z

    goto :goto_2

    .line 138
    :cond_f
    invoke-static {}, Lcn/hutool/db/sql/SqlFormatter;->access$300()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 139
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->logical()V

    goto :goto_2

    .line 140
    :cond_10
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->isWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 141
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->white()V

    goto :goto_2

    .line 143
    :cond_11
    invoke-direct {p0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->misc()V

    .line 146
    :goto_2
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->token:Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->isWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lcToken:Ljava/lang/String;

    iput-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->lastToken:Ljava/lang/String;

    goto/16 :goto_0

    .line 151
    :cond_12
    iget-object v0, p0, Lcn/hutool/db/sql/SqlFormatter$FormatProcess;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
