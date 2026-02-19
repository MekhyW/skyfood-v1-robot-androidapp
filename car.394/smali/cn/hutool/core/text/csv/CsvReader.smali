.class public Lcn/hutool/core/text/csv/CsvReader;
.super Lcn/hutool/core/text/csv/CsvBaseReader;
.source "CsvReader.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/text/csv/CsvBaseReader;",
        "Ljava/lang/Iterable<",
        "Lcn/hutool/core/text/csv/CsvRow;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lcn/hutool/core/text/csv/CsvReader;-><init>(Lcn/hutool/core/text/csv/CsvReadConfig;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/core/text/csv/CsvReadConfig;)V
    .locals 2

    const/4 v0, 0x0

    .line 43
    move-object v1, v0

    check-cast v1, Ljava/io/Reader;

    invoke-direct {p0, v0, p1}, Lcn/hutool/core/text/csv/CsvReader;-><init>(Ljava/io/Reader;Lcn/hutool/core/text/csv/CsvReadConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcn/hutool/core/text/csv/CsvReadConfig;)V
    .locals 1

    .line 54
    sget-object v0, Lcn/hutool/core/text/csv/CsvReader;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0, p2}, Lcn/hutool/core/text/csv/CsvReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcn/hutool/core/text/csv/CsvReadConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcn/hutool/core/text/csv/CsvReadConfig;)V
    .locals 0

    .line 77
    invoke-static {p1, p2}, Lcn/hutool/core/io/FileUtil;->getReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcn/hutool/core/text/csv/CsvReader;-><init>(Ljava/io/Reader;Lcn/hutool/core/text/csv/CsvReadConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lcn/hutool/core/text/csv/CsvReadConfig;)V
    .locals 0

    .line 100
    invoke-direct {p0, p2}, Lcn/hutool/core/text/csv/CsvBaseReader;-><init>(Lcn/hutool/core/text/csv/CsvReadConfig;)V

    .line 101
    iput-object p1, p0, Lcn/hutool/core/text/csv/CsvReader;->reader:Ljava/io/Reader;

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcn/hutool/core/text/csv/CsvReadConfig;)V
    .locals 1

    .line 65
    sget-object v0, Lcn/hutool/core/text/csv/CsvReader;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0, p2}, Lcn/hutool/core/text/csv/CsvReader;-><init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lcn/hutool/core/text/csv/CsvReadConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lcn/hutool/core/text/csv/CsvReadConfig;)V
    .locals 0

    .line 89
    invoke-static {p1, p2}, Lcn/hutool/core/io/FileUtil;->getReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcn/hutool/core/text/csv/CsvReader;-><init>(Ljava/io/Reader;Lcn/hutool/core/text/csv/CsvReadConfig;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvReader;->reader:Ljava/io/Reader;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcn/hutool/core/text/csv/CsvRow;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvReader;->reader:Ljava/io/Reader;

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/csv/CsvReader;->parse(Ljava/io/Reader;)Lcn/hutool/core/text/csv/CsvParser;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$stream$0$cn-hutool-core-text-csv-CsvReader()V
    .locals 2

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcn/hutool/core/text/csv/CsvReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read()Lcn/hutool/core/text/csv/CsvData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvReader;->reader:Ljava/io/Reader;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/hutool/core/text/csv/CsvReader;->read(Ljava/io/Reader;Z)Lcn/hutool/core/text/csv/CsvData;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcn/hutool/core/text/csv/CsvRowHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvReader;->reader:Ljava/io/Reader;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcn/hutool/core/text/csv/CsvReader;->read(Ljava/io/Reader;ZLcn/hutool/core/text/csv/CsvRowHandler;)V

    return-void
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcn/hutool/core/text/csv/CsvRow;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcn/hutool/core/text/csv/CsvReader;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/text/csv/CsvReader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/hutool/core/text/csv/CsvReader$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/text/csv/CsvReader;)V

    .line 135
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    return-object v0
.end method
