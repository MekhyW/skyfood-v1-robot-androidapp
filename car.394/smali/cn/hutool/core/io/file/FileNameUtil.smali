.class public Lcn/hutool/core/io/file/FileNameUtil;
.super Ljava/lang/Object;
.source "FileNameUtil.java"


# static fields
.field public static final EXT_CLASS:Ljava/lang/String; = ".class"

.field public static final EXT_JAR:Ljava/lang/String; = ".jar"

.field public static final EXT_JAVA:Ljava/lang/String; = ".java"

.field private static final FILE_NAME_INVALID_PATTERN_WIN:Ljava/util/regex/Pattern;

.field private static final SPECIAL_SUFFIX:[Ljava/lang/CharSequence;

.field public static final UNIX_SEPARATOR:C = '/'

.field public static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "[\\\\/:*?\"<>|\r\n]"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/io/file/FileNameUtil;->FILE_NAME_INVALID_PATTERN_WIN:Ljava/util/regex/Pattern;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "tar.bz2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tar.Z"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tar.gz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tar.xz"

    aput-object v2, v0, v1

    .line 48
    sput-object v0, Lcn/hutool/core/io/file/FileNameUtil;->SPECIAL_SUFFIX:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanInvalid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 259
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/hutool/core/io/file/FileNameUtil;->FILE_NAME_INVALID_PATTERN_WIN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/util/ReUtil;->delAll(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static containsInvalid(Ljava/lang/String;)Z
    .locals 1

    .line 270
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/hutool/core/io/file/FileNameUtil;->FILE_NAME_INVALID_PATTERN_WIN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/util/ReUtil;->contains(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static extName(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 221
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/io/file/FileNameUtil;->extName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "."

    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ""

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return-object v2

    :cond_1
    const/4 v4, 0x0

    .line 239
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 240
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    sget-object v3, Lcn/hutool/core/io/file/FileNameUtil;->SPECIAL_SUFFIX:[Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lcn/hutool/core/util/StrUtil;->containsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 245
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 247
    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, p0

    :goto_1
    return-object v2

    nop

    :array_0
    .array-data 2
        0x2fs
        0x5cs
    .end array-data
.end method

.method public static getName(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcn/hutool/core/util/CharUtil;->isFileSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_4

    .line 91
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 92
    invoke-static {v2}, Lcn/hutool/core/util/CharUtil;->isFileSeparator(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 99
    :goto_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefix(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 135
    invoke-static {p0}, Lcn/hutool/core/io/file/FileNameUtil;->mainName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 147
    invoke-static {p0}, Lcn/hutool/core/io/file/FileNameUtil;->mainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSuffix(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-static {p0}, Lcn/hutool/core/io/file/FileNameUtil;->extName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 123
    invoke-static {p0}, Lcn/hutool/core/io/file/FileNameUtil;->extName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs isType(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    .line 282
    invoke-static {p0}, Lcn/hutool/core/io/file/FileNameUtil;->extName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->equalsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static mainName(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 157
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 160
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/io/file/FileNameUtil;->mainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mainName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 179
    :cond_1
    sget-object v1, Lcn/hutool/core/io/file/FileNameUtil;->SPECIAL_SUFFIX:[Ljava/lang/CharSequence;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcn/hutool/core/util/StrUtil;->endWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 181
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->subPre(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, -0x1

    .line 185
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcn/hutool/core/util/CharUtil;->isFileSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    add-int/lit8 v1, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v1, :cond_7

    .line 193
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v0, v2, :cond_5

    const/16 v5, 0x2e

    if-ne v5, v4, :cond_5

    move v2, v1

    .line 199
    :cond_5
    invoke-static {v4}, Lcn/hutool/core/util/CharUtil;->isFileSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v3, v1, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 205
    :cond_7
    :goto_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
