.class public Lcn/hutool/core/text/csv/CsvConfig;
.super Ljava/lang/Object;
.source "CsvConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/hutool/core/text/csv/CsvConfig<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6ffce6a9bece997bL


# instance fields
.field protected commentCharacter:Ljava/lang/Character;

.field protected fieldSeparator:C

.field protected headerAlias:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected textDelimiter:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c

    .line 23
    iput-char v0, p0, Lcn/hutool/core/text/csv/CsvConfig;->fieldSeparator:C

    const/16 v0, 0x22

    .line 27
    iput-char v0, p0, Lcn/hutool/core/text/csv/CsvConfig;->textDelimiter:C

    const/16 v0, 0x23

    .line 31
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/text/csv/CsvConfig;->commentCharacter:Ljava/lang/Character;

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/text/csv/CsvConfig;->headerAlias:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addHeaderAlias(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/core/text/csv/CsvConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvConfig;->headerAlias:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public disableComment()Lcn/hutool/core/text/csv/CsvConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Lcn/hutool/core/text/csv/CsvConfig;->setCommentCharacter(Ljava/lang/Character;)Lcn/hutool/core/text/csv/CsvConfig;

    move-result-object v0

    return-object v0
.end method

.method public removeHeaderAlias(Ljava/lang/String;)Lcn/hutool/core/text/csv/CsvConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvConfig;->headerAlias:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setCommentCharacter(Ljava/lang/Character;)Lcn/hutool/core/text/csv/CsvConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Character;",
            ")TT;"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcn/hutool/core/text/csv/CsvConfig;->commentCharacter:Ljava/lang/Character;

    return-object p0
.end method

.method public setFieldSeparator(C)Lcn/hutool/core/text/csv/CsvConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TT;"
        }
    .end annotation

    .line 44
    iput-char p1, p0, Lcn/hutool/core/text/csv/CsvConfig;->fieldSeparator:C

    return-object p0
.end method

.method public setHeaderAlias(Ljava/util/Map;)Lcn/hutool/core/text/csv/CsvConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcn/hutool/core/text/csv/CsvConfig;->headerAlias:Ljava/util/Map;

    return-object p0
.end method

.method public setTextDelimiter(C)Lcn/hutool/core/text/csv/CsvConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TT;"
        }
    .end annotation

    .line 55
    iput-char p1, p0, Lcn/hutool/core/text/csv/CsvConfig;->textDelimiter:C

    return-object p0
.end method
