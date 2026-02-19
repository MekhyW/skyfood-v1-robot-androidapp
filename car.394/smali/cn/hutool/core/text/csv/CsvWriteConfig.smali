.class public Lcn/hutool/core/text/csv/CsvWriteConfig;
.super Lcn/hutool/core/text/csv/CsvConfig;
.source "CsvWriteConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/text/csv/CsvConfig<",
        "Lcn/hutool/core/text/csv/CsvWriteConfig;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4ae40ded12dcb074L


# instance fields
.field protected alwaysDelimitText:Z

.field protected endingLineBreak:Z

.field protected lineDelimiter:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcn/hutool/core/text/csv/CsvConfig;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 22
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/hutool/core/text/csv/CsvWriteConfig;->lineDelimiter:[C

    return-void

    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public static defaultConfig()Lcn/hutool/core/text/csv/CsvWriteConfig;
    .locals 1

    .line 36
    new-instance v0, Lcn/hutool/core/text/csv/CsvWriteConfig;

    invoke-direct {v0}, Lcn/hutool/core/text/csv/CsvWriteConfig;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setAlwaysDelimitText(Z)Lcn/hutool/core/text/csv/CsvWriteConfig;
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcn/hutool/core/text/csv/CsvWriteConfig;->alwaysDelimitText:Z

    return-object p0
.end method

.method public setEndingLineBreak(Z)Lcn/hutool/core/text/csv/CsvWriteConfig;
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcn/hutool/core/text/csv/CsvWriteConfig;->endingLineBreak:Z

    return-object p0
.end method

.method public setLineDelimiter([C)Lcn/hutool/core/text/csv/CsvWriteConfig;
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/hutool/core/text/csv/CsvWriteConfig;->lineDelimiter:[C

    return-object p0
.end method
