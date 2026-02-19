.class public Lcn/hutool/poi/excel/cell/setters/EscapeStrCellSetter;
.super Lcn/hutool/poi/excel/cell/setters/CharSequenceCellSetter;
.source "EscapeStrCellSetter.java"


# static fields
.field private static final utfPtrn:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "_x[0-9A-Fa-f]{4}_"

    .line 18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/hutool/poi/excel/cell/setters/EscapeStrCellSetter;->utfPtrn:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 26
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->str(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/poi/excel/cell/setters/EscapeStrCellSetter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/poi/excel/cell/setters/CharSequenceCellSetter;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "_x"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcn/hutool/poi/excel/cell/setters/EscapeStrCellSetter;->utfPtrn:Ljava/util/regex/Pattern;

    const-string v1, "_x005F$0"

    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/ReUtil;->replaceAll(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method
