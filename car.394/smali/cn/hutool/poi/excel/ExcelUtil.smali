.class public Lcn/hutool/poi/excel/ExcelUtil;
.super Ljava/lang/Object;
.source "ExcelUtil.java"


# static fields
.field public static final XLSX_CONTENT_TYPE:Ljava/lang/String; = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

.field public static final XLS_CONTENT_TYPE:Ljava/lang/String; = "application/vnd.ms-excel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colNameToIndex(Ljava/lang/String;)I
    .locals 5

    .line 478
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 482
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 483
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x1a

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x41

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static getBigWriter()Lcn/hutool/poi/excel/BigExcelWriter;
    .locals 4

    .line 366
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/BigExcelWriter;

    invoke-direct {v0}, Lcn/hutool/poi/excel/BigExcelWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 368
    new-instance v1, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {v1, v0, v3, v2}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static getBigWriter(I)Lcn/hutool/poi/excel/BigExcelWriter;
    .locals 3

    .line 383
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/BigExcelWriter;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/BigExcelWriter;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 385
    new-instance v0, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {v0, p0, v2, v1}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getBigWriter(Ljava/io/File;)Lcn/hutool/poi/excel/BigExcelWriter;
    .locals 3

    .line 411
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/BigExcelWriter;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/BigExcelWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 413
    new-instance v0, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {v0, p0, v2, v1}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getBigWriter(Ljava/io/File;Ljava/lang/String;)Lcn/hutool/poi/excel/BigExcelWriter;
    .locals 2

    .line 441
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/BigExcelWriter;

    invoke-direct {v0, p0, p1}, Lcn/hutool/poi/excel/BigExcelWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 443
    new-instance p1, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {p1, p0, v1, v0}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static getBigWriter(Ljava/lang/String;)Lcn/hutool/poi/excel/BigExcelWriter;
    .locals 3

    .line 397
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/BigExcelWriter;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/BigExcelWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 399
    new-instance v0, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {v0, p0, v2, v1}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getBigWriter(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/poi/excel/BigExcelWriter;
    .locals 2

    .line 426
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/BigExcelWriter;

    invoke-direct {v0, p0, p1}, Lcn/hutool/poi/excel/BigExcelWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 428
    new-instance p1, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {p1, p0, v1, v0}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static getReader(Ljava/io/File;)Lcn/hutool/poi/excel/ExcelReader;
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-static {p0, v0}, Lcn/hutool/poi/excel/ExcelUtil;->getReader(Ljava/io/File;I)Lcn/hutool/poi/excel/ExcelReader;

    move-result-object p0

    return-object p0
.end method

.method public static getReader(Ljava/io/File;I)Lcn/hutool/poi/excel/ExcelReader;
    .locals 2

    .line 182
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelReader;

    invoke-direct {v0, p0, p1}, Lcn/hutool/poi/excel/ExcelReader;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 184
    new-instance p1, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {p1, p0, v1, v0}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static getReader(Ljava/io/File;Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelReader;
    .locals 2

    .line 197
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelReader;

    invoke-direct {v0, p0, p1}, Lcn/hutool/poi/excel/ExcelReader;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 199
    new-instance p1, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {p1, p0, v1, v0}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static getReader(Ljava/io/InputStream;)Lcn/hutool/poi/excel/ExcelReader;
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-static {p0, v0}, Lcn/hutool/poi/excel/ExcelUtil;->getReader(Ljava/io/InputStream;I)Lcn/hutool/poi/excel/ExcelReader;

    move-result-object p0

    return-object p0
.end method

.method public static getReader(Ljava/io/InputStream;I)Lcn/hutool/poi/excel/ExcelReader;
    .locals 2

    .line 224
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelReader;

    invoke-direct {v0, p0, p1}, Lcn/hutool/poi/excel/ExcelReader;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 226
    new-instance p1, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {p1, p0, v1, v0}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static getReader(Ljava/io/InputStream;Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelReader;
    .locals 2

    .line 240
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelReader;

    invoke-direct {v0, p0, p1}, Lcn/hutool/poi/excel/ExcelReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 242
    new-instance p1, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {p1, p0, v1, v0}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static getReader(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelReader;
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-static {p0, v0}, Lcn/hutool/poi/excel/ExcelUtil;->getReader(Ljava/lang/String;I)Lcn/hutool/poi/excel/ExcelReader;

    move-result-object p0

    return-object p0
.end method

.method public static getReader(Ljava/lang/String;I)Lcn/hutool/poi/excel/ExcelReader;
    .locals 2

    .line 151
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelReader;

    invoke-direct {v0, p0, p1}, Lcn/hutool/poi/excel/ExcelReader;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 153
    new-instance p1, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {p1, p0, v1, v0}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static getReader(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelReader;
    .locals 2

    .line 167
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelReader;

    invoke-direct {v0, p0, p1}, Lcn/hutool/poi/excel/ExcelReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 169
    new-instance p1, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {p1, p0, v1, v0}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static getWriter()Lcn/hutool/poi/excel/ExcelWriter;
    .locals 4

    .line 258
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelWriter;

    invoke-direct {v0}, Lcn/hutool/poi/excel/ExcelWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 260
    new-instance v1, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {v1, v0, v3, v2}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static getWriter(Ljava/io/File;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 3

    .line 318
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelWriter;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 320
    new-instance v0, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {v0, p0, v2, v1}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getWriter(Ljava/io/File;Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 2

    .line 348
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelWriter;

    invoke-direct {v0, p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 350
    new-instance p1, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {p1, p0, v1, v0}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static getWriter(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 3

    .line 289
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelWriter;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 291
    new-instance v0, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {v0, p0, v2, v1}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getWriter(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 2

    .line 333
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelWriter;

    invoke-direct {v0, p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 335
    new-instance p1, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {p1, p0, v1, v0}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static getWriter(Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 3

    .line 275
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelWriter;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 277
    new-instance v0, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {v0, p0, v2, v1}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getWriterWithSheet(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 3

    .line 304
    :try_start_0
    new-instance v0, Lcn/hutool/poi/excel/ExcelWriter;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 306
    new-instance v0, Lcn/hutool/core/exceptions/DependencyException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "You need to add dependency of \'poi-ooxml\' to your project, and version >= 4.1.2"

    invoke-direct {v0, p0, v2, v1}, Lcn/hutool/core/exceptions/DependencyException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static indexToColName(I)Ljava/lang/String;
    .locals 3

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 458
    :cond_0
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->builder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 p0, p0, -0x1

    .line 463
    :cond_2
    rem-int/lit8 v1, p0, 0x1a

    add-int/lit8 v2, v1, 0x41

    int-to-char v2, v2

    .line 464
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v1

    .line 465
    div-int/lit8 p0, p0, 0x1a

    if-gtz p0, :cond_1

    .line 467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readBySax(Ljava/io/File;ILcn/hutool/poi/excel/sax/handler/RowHandler;)V
    .locals 1

    .line 70
    invoke-static {p0}, Lcn/hutool/poi/excel/ExcelFileUtil;->isXlsx(Ljava/io/File;)Z

    move-result v0

    invoke-static {v0, p2}, Lcn/hutool/poi/excel/sax/ExcelSaxUtil;->createSaxReader(ZLcn/hutool/poi/excel/sax/handler/RowHandler;)Lcn/hutool/poi/excel/sax/ExcelSaxReader;

    move-result-object p2

    .line 71
    invoke-interface {p2, p0, p1}, Lcn/hutool/poi/excel/sax/ExcelSaxReader;->read(Ljava/io/File;I)Ljava/lang/Object;

    return-void
.end method

.method public static readBySax(Ljava/io/File;Ljava/lang/String;Lcn/hutool/poi/excel/sax/handler/RowHandler;)V
    .locals 1

    .line 83
    invoke-static {p0}, Lcn/hutool/poi/excel/ExcelFileUtil;->isXlsx(Ljava/io/File;)Z

    move-result v0

    invoke-static {v0, p2}, Lcn/hutool/poi/excel/sax/ExcelSaxUtil;->createSaxReader(ZLcn/hutool/poi/excel/sax/handler/RowHandler;)Lcn/hutool/poi/excel/sax/ExcelSaxReader;

    move-result-object p2

    .line 84
    invoke-interface {p2, p0, p1}, Lcn/hutool/poi/excel/sax/ExcelSaxReader;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static readBySax(Ljava/io/InputStream;ILcn/hutool/poi/excel/sax/handler/RowHandler;)V
    .locals 1

    .line 96
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->toMarkSupportStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 97
    invoke-static {p0}, Lcn/hutool/poi/excel/ExcelFileUtil;->isXlsx(Ljava/io/InputStream;)Z

    move-result v0

    invoke-static {v0, p2}, Lcn/hutool/poi/excel/sax/ExcelSaxUtil;->createSaxReader(ZLcn/hutool/poi/excel/sax/handler/RowHandler;)Lcn/hutool/poi/excel/sax/ExcelSaxReader;

    move-result-object p2

    .line 98
    invoke-interface {p2, p0, p1}, Lcn/hutool/poi/excel/sax/ExcelSaxReader;->read(Ljava/io/InputStream;I)Ljava/lang/Object;

    return-void
.end method

.method public static readBySax(Ljava/io/InputStream;Ljava/lang/String;Lcn/hutool/poi/excel/sax/handler/RowHandler;)V
    .locals 1

    .line 110
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->toMarkSupportStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 111
    invoke-static {p0}, Lcn/hutool/poi/excel/ExcelFileUtil;->isXlsx(Ljava/io/InputStream;)Z

    move-result v0

    invoke-static {v0, p2}, Lcn/hutool/poi/excel/sax/ExcelSaxUtil;->createSaxReader(ZLcn/hutool/poi/excel/sax/handler/RowHandler;)Lcn/hutool/poi/excel/sax/ExcelSaxReader;

    move-result-object p2

    .line 112
    invoke-interface {p2, p0, p1}, Lcn/hutool/poi/excel/sax/ExcelSaxReader;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static readBySax(Ljava/lang/String;ILcn/hutool/poi/excel/sax/handler/RowHandler;)V
    .locals 0

    .line 46
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelUtil;->readBySax(Ljava/io/File;ILcn/hutool/poi/excel/sax/handler/RowHandler;)V

    return-void
.end method

.method public static readBySax(Ljava/lang/String;Ljava/lang/String;Lcn/hutool/poi/excel/sax/handler/RowHandler;)V
    .locals 0

    .line 58
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelUtil;->readBySax(Ljava/io/File;Ljava/lang/String;Lcn/hutool/poi/excel/sax/handler/RowHandler;)V

    return-void
.end method

.method public static toLocation(Ljava/lang/String;)Lcn/hutool/poi/excel/cell/CellLocation;
    .locals 2

    .line 500
    invoke-static {p0}, Lcn/hutool/poi/excel/ExcelUtil;->colNameToIndex(Ljava/lang/String;)I

    move-result v0

    .line 501
    invoke-static {p0}, Lcn/hutool/core/util/ReUtil;->getFirstNumber(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 502
    new-instance v1, Lcn/hutool/poi/excel/cell/CellLocation;

    invoke-direct {v1, v0, p0}, Lcn/hutool/poi/excel/cell/CellLocation;-><init>(II)V

    return-object v1
.end method
