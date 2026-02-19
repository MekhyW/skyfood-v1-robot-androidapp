.class public interface abstract Lcn/hutool/poi/excel/sax/ExcelSaxReader;
.super Ljava/lang/Object;
.source "ExcelSaxReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final RID_PREFIX:Ljava/lang/String; = "rId"

.field public static final SHEET_NAME_PREFIX:Ljava/lang/String; = "sheetName:"


# virtual methods
.method public read(Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 62
    invoke-interface {p0, p1, v0}, Lcn/hutool/poi/excel/sax/ExcelSaxReader;->read(Ljava/io/File;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/File;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 109
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcn/hutool/poi/excel/sax/ExcelSaxReader;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation
.end method

.method public read(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 73
    invoke-interface {p0, p1, v0}, Lcn/hutool/poi/excel/sax/ExcelSaxReader;->read(Ljava/io/InputStream;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/InputStream;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 121
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcn/hutool/poi/excel/sax/ExcelSaxReader;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation
.end method

.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/hutool/poi/excel/sax/ExcelSaxReader;->read(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 85
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcn/hutool/poi/excel/sax/ExcelSaxReader;->read(Ljava/io/File;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 97
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcn/hutool/poi/excel/sax/ExcelSaxReader;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
