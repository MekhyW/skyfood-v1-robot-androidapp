.class Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;
.super Ljava/lang/Object;
.source "NumberChineseFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/convert/NumberChineseFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChineseUnit"
.end annotation


# instance fields
.field private final name:C

.field private final secUnit:Z

.field private final value:I


# direct methods
.method public constructor <init>(CIZ)V
    .locals 0

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-char p1, p0, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->name:C

    .line 603
    iput p2, p0, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->value:I

    .line 604
    iput-boolean p3, p0, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->secUnit:Z

    return-void
.end method

.method static synthetic access$000(Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;)I
    .locals 0

    .line 579
    iget p0, p0, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->value:I

    return p0
.end method

.method static synthetic access$100(Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;)Z
    .locals 0

    .line 579
    iget-boolean p0, p0, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->secUnit:Z

    return p0
.end method

.method static synthetic access$200(Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;)C
    .locals 0

    .line 579
    iget-char p0, p0, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->name:C

    return p0
.end method
