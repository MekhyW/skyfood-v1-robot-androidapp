.class public final Lcn/hutool/core/lang/ansi/AnsiColors;
.super Ljava/lang/Object;
.source "AnsiColors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;
    }
.end annotation


# static fields
.field private static final ANSI_8BIT_COLOR_CODE_LOOKUP:[I

.field private static final ANSI_COLOR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/hutool/core/lang/ansi/AnsiColorWrapper;",
            "Lcn/hutool/core/img/LabColor;",
            ">;"
        }
    .end annotation
.end field

.field private static final CODE_OF_4_BIT_ANSI_COLOR_BRIGHT_WHITE:I = 0x61


# instance fields
.field private final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/hutool/core/lang/ansi/AnsiColorWrapper;",
            "Lcn/hutool/core/img/LabColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 29
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->BLACK:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->RED:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const/high16 v3, 0xaa0000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->GREEN:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0xaa00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->YELLOW:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0xaa5500

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->BLUE:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->MAGENTA:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0xaa00aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->CYAN:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0xaaaa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->WHITE:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0xaaaaaa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->BRIGHT_BLACK:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0x555555

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->BRIGHT_RED:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0xff5555

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->BRIGHT_GREEN:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0x55ff00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->BRIGHT_YELLOW:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0xffff55

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->BRIGHT_BLUE:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0x5555ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->BRIGHT_MAGENTA:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0xff55ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v2, Lcn/hutool/core/lang/ansi/AnsiColor;->BRIGHT_CYAN:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v2}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v2

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0x55ffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    const/16 v2, 0x61

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v1, v2, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v2, Lcn/hutool/core/img/LabColor;

    const v3, 0xffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/lang/ansi/AnsiColors;->ANSI_COLOR_MAP:Ljava/util/Map;

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 48
    fill-array-data v0, :array_0

    sput-object v0, Lcn/hutool/core/lang/ansi/AnsiColors;->ANSI_8BIT_COLOR_CODE_LOOKUP:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x800000
        0x8000
        0x808000
        0x80
        0x800080
        0x8080
        0xc0c0c0
        0x808080
        0xff0000
        0xff00
        0xffff00
        0xff
        0xff00ff
        0xffff
        0xffffff
        0x0
        0x5f
        0x87
        0xaf
        0xd7
        0xff
        0x5f00
        0x5f5f
        0x5f87
        0x5faf
        0x5fd7
        0x5fff
        0x8700
        0x875f
        0x8787
        0x87af
        0x87d7
        0x87ff
        0xaf00
        0xaf5f
        0xaf87
        0xafaf
        0xafd7
        0xafff
        0xd700
        0xd75f
        0xd787
        0xd7af
        0xd7d7
        0xd7ff
        0xff00
        0xff5f
        0xff87
        0xffaf
        0xffd7
        0xffff
        0x5f0000
        0x5f005f
        0x5f0087
        0x5f00af
        0x5f00d7
        0x5f00ff
        0x5f5f00
        0x5f5f5f
        0x5f5f87
        0x5f5faf
        0x5f5fd7
        0x5f5fff
        0x5f8700
        0x5f875f
        0x5f8787
        0x5f87af
        0x5f87d7
        0x5f87ff
        0x5faf00
        0x5faf5f
        0x5faf87
        0x5fafaf
        0x5fafd7
        0x5fafff
        0x5fd700
        0x5fd75f
        0x5fd787
        0x5fd7af
        0x5fd7d7
        0x5fd7ff
        0x5fff00
        0x5fff5f
        0x5fff87
        0x5fffaf
        0x5fffd7
        0x5fffff
        0x870000
        0x87005f
        0x870087
        0x8700af
        0x8700d7
        0x8700ff
        0x875f00
        0x875f5f
        0x875f87
        0x875faf
        0x875fd7
        0x875fff
        0x878700
        0x87875f
        0x878787
        0x8787af
        0x8787d7
        0x8787ff
        0x87af00
        0x87af5f
        0x87af87
        0x87afaf
        0x87afd7
        0x87afff
        0x87d700
        0x87d75f
        0x87d787
        0x87d7af
        0x87d7d7
        0x87d7ff
        0x87ff00
        0x87ff5f
        0x87ff87
        0x87ffaf
        0x87ffd7
        0x87ffff
        0xaf0000
        0xaf005f
        0xaf0087
        0xaf00af
        0xaf00d7
        0xaf00ff
        0xaf5f00
        0xaf5f5f
        0xaf5f87
        0xaf5faf
        0xaf5fd7
        0xaf5fff
        0xaf8700
        0xaf875f
        0xaf8787
        0xaf87af
        0xaf87d7
        0xaf87ff    # 1.6119998E-38f
        0xafaf00
        0xafaf5f
        0xafaf87
        0xafafaf
        0xafafd7
        0xafafff
        0xafd700
        0xafd75f
        0xafd787
        0xafd7af
        0xafd7d7
        0xafd7ff
        0xafff00
        0xafff5f
        0xafff87
        0xafffaf
        0xafffd7
        0xafffff
        0xd70000
        0xd7005f
        0xd70087
        0xd700af
        0xd700d7
        0xd700ff
        0xd75f00
        0xd75f5f
        0xd75f87
        0xd75faf
        0xd75fd7
        0xd75fff
        0xd78700
        0xd7875f
        0xd78787
        0xd787af
        0xd787d7
        0xd787ff
        0xd7af00
        0xd7af5f
        0xd7af87
        0xd7afaf
        0xd7afd7
        0xd7afff
        0xd7d700
        0xd7d75f
        0xd7d787
        0xd7d7af
        0xd7d7d7
        0xd7d7ff
        0xd7ff00
        0xd7ff5f
        0xd7ff87
        0xd7ffaf
        0xd7ffd7
        0xd7ffff
        0xff0000
        0xff005f
        0xff0087
        0xff00af
        0xff00d7
        0xff00ff
        0xff5f00
        0xff5f5f
        0xff5f87
        0xff5faf
        0xff5fd7
        0xff5fff
        0xff8700
        0xff875f
        0xff8787
        0xff87af
        0xff87d7
        0xff87ff
        0xffaf00
        0xffaf5f
        0xffaf87
        0xffafaf
        0xffafd7
        0xffafff
        0xffd700
        0xffd75f
        0xffd787
        0xffd7af
        0xffd7d7
        0xffd7ff
        0xffff00
        0xffff5f
        0xffff87
        0xffffaf
        0xffffd7
        0xffffff
        0x80808
        0x121212
        0x1c1c1c
        0x262626
        0x303030
        0x3a3a3a
        0x444444
        0x4e4e4e
        0x585858
        0x626262
        0x6c6c6c
        0x767676
        0x808080
        0x8a8a8a
        0x949494
        0x9e9e9e
        0xa8a8a8
        0xb2b2b2
        0xbcbcbc
        0xc6c6c6
        0xd0d0d0
        0xdadada
        0xe4e4e4
        0xeeeeee
    .end array-data
.end method

.method public constructor <init>(Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-direct {p0, p1}, Lcn/hutool/core/lang/ansi/AnsiColors;->getLookup(Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/lang/ansi/AnsiColors;->lookup:Ljava/util/Map;

    return-void
.end method

.method private findClosest(Lcn/hutool/core/img/LabColor;)Lcn/hutool/core/lang/ansi/AnsiColorWrapper;
    .locals 8

    .line 109
    iget-object v0, p0, Lcn/hutool/core/lang/ansi/AnsiColors;->lookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/hutool/core/img/LabColor;

    invoke-virtual {p1, v5}, Lcn/hutool/core/img/LabColor;->getDistance(Lcn/hutool/core/img/LabColor;)D

    move-result-wide v5

    if-eqz v1, :cond_1

    cmpg-double v7, v5, v2

    if-gez v7, :cond_0

    .line 113
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    move-wide v2, v5

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getLookup(Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;",
            ")",
            "Ljava/util/Map<",
            "Lcn/hutool/core/lang/ansi/AnsiColorWrapper;",
            "Lcn/hutool/core/img/LabColor;",
            ">;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->EIGHT:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    if-ne p1, v0, :cond_1

    .line 88
    new-instance p1, Ljava/util/LinkedHashMap;

    const/16 v0, 0x100

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    const/4 v0, 0x0

    .line 89
    :goto_0
    sget-object v1, Lcn/hutool/core/lang/ansi/AnsiColors;->ANSI_8BIT_COLOR_CODE_LOOKUP:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 90
    new-instance v2, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    sget-object v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->EIGHT:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v2, v0, v3}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;-><init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    new-instance v3, Lcn/hutool/core/img/LabColor;

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v1}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/lang/Integer;)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 94
    :cond_1
    sget-object p1, Lcn/hutool/core/lang/ansi/AnsiColors;->ANSI_COLOR_MAP:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public findClosest(Ljava/awt/Color;)Lcn/hutool/core/lang/ansi/AnsiColorWrapper;
    .locals 1

    .line 103
    new-instance v0, Lcn/hutool/core/img/LabColor;

    invoke-direct {v0, p1}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/awt/Color;)V

    invoke-direct {p0, v0}, Lcn/hutool/core/lang/ansi/AnsiColors;->findClosest(Lcn/hutool/core/img/LabColor;)Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    move-result-object p1

    return-object p1
.end method
