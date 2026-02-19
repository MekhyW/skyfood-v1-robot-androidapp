.class public Lcn/hutool/core/text/csv/CsvBaseReader;
.super Ljava/lang/Object;
.source "CsvBaseReader.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final config:Lcn/hutool/core/text/csv/CsvReadConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcn/hutool/core/text/csv/CsvBaseReader;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lcn/hutool/core/text/csv/CsvBaseReader;-><init>(Lcn/hutool/core/text/csv/CsvReadConfig;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/core/text/csv/CsvReadConfig;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcn/hutool/core/text/csv/CsvBaseReader$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/hutool/core/text/csv/CsvBaseReader$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/text/csv/CsvReadConfig;

    iput-object p1, p0, Lcn/hutool/core/text/csv/CsvBaseReader;->config:Lcn/hutool/core/text/csv/CsvReadConfig;

    return-void
.end method

.method static synthetic lambda$read$1(Ljava/util/List;Ljava/lang/Class;Lcn/hutool/core/text/csv/CsvRow;)V
    .locals 0

    .line 228
    invoke-virtual {p2, p1}, Lcn/hutool/core/text/csv/CsvRow;->toBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$read$2(Ljava/util/List;Ljava/lang/Class;Lcn/hutool/core/text/csv/CsvRow;)V
    .locals 0

    .line 246
    invoke-virtual {p2, p1}, Lcn/hutool/core/text/csv/CsvRow;->toBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$readMapList$0(Ljava/util/List;Lcn/hutool/core/text/csv/CsvRow;)V
    .locals 0

    .line 210
    invoke-virtual {p1}, Lcn/hutool/core/text/csv/CsvRow;->getFieldMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private read(Lcn/hutool/core/text/csv/CsvParser;ZLcn/hutool/core/text/csv/CsvRowHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 286
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcn/hutool/core/text/csv/CsvParser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p1}, Lcn/hutool/core/text/csv/CsvParser;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/text/csv/CsvRow;

    invoke-interface {p3, v0}, Lcn/hutool/core/text/csv/CsvRowHandler;->handle(Lcn/hutool/core/text/csv/CsvRow;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 291
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p3

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 293
    :cond_2
    throw p3
.end method


# virtual methods
.method protected parse(Ljava/io/Reader;)Lcn/hutool/core/text/csv/CsvParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 304
    new-instance v0, Lcn/hutool/core/text/csv/CsvParser;

    iget-object v1, p0, Lcn/hutool/core/text/csv/CsvBaseReader;->config:Lcn/hutool/core/text/csv/CsvReadConfig;

    invoke-direct {v0, p1, v1}, Lcn/hutool/core/text/csv/CsvParser;-><init>(Ljava/io/Reader;Lcn/hutool/core/text/csv/CsvReadConfig;)V

    return-object v0
.end method

.method public read(Ljava/io/File;)Lcn/hutool/core/text/csv/CsvData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 109
    sget-object v0, Lcn/hutool/core/text/csv/CsvBaseReader;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Ljava/io/File;Ljava/nio/charset/Charset;)Lcn/hutool/core/text/csv/CsvData;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/File;Ljava/nio/charset/Charset;)Lcn/hutool/core/text/csv/CsvData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const-string v0, "file must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcn/hutool/core/text/csv/CsvData;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/Reader;)Lcn/hutool/core/text/csv/CsvData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 177
    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Ljava/io/Reader;Z)Lcn/hutool/core/text/csv/CsvData;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/Reader;Z)Lcn/hutool/core/text/csv/CsvData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1}, Lcn/hutool/core/text/csv/CsvBaseReader;->parse(Ljava/io/Reader;)Lcn/hutool/core/text/csv/CsvParser;

    move-result-object p1

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v1, Lcn/hutool/core/text/csv/CsvBaseReader$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcn/hutool/core/text/csv/CsvBaseReader$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v1}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Lcn/hutool/core/text/csv/CsvParser;ZLcn/hutool/core/text/csv/CsvRowHandler;)V

    .line 192
    iget-object p2, p0, Lcn/hutool/core/text/csv/CsvBaseReader;->config:Lcn/hutool/core/text/csv/CsvReadConfig;

    iget-wide v1, p2, Lcn/hutool/core/text/csv/CsvReadConfig;->headerLineNo:J

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lcn/hutool/core/text/csv/CsvParser;->getHeader()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 194
    :goto_0
    new-instance p2, Lcn/hutool/core/text/csv/CsvData;

    invoke-direct {p2, p1, v0}, Lcn/hutool/core/text/csv/CsvData;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p2
.end method

.method public read(Ljava/nio/file/Path;)Lcn/hutool/core/text/csv/CsvData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 153
    sget-object v0, Lcn/hutool/core/text/csv/CsvBaseReader;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcn/hutool/core/text/csv/CsvData;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcn/hutool/core/text/csv/CsvData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "path must not be null"

    .line 165
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p1, p2}, Lcn/hutool/core/io/FileUtil;->getReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Ljava/io/Reader;)Lcn/hutool/core/text/csv/CsvData;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/Reader;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvBaseReader;->config:Lcn/hutool/core/text/csv/CsvReadConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/hutool/core/text/csv/CsvReadConfig;->setContainsHeader(Z)Lcn/hutool/core/text/csv/CsvReadConfig;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    new-instance v1, Lcn/hutool/core/text/csv/CsvBaseReader$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p2}, Lcn/hutool/core/text/csv/CsvBaseReader$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v1}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Ljava/io/Reader;Lcn/hutool/core/text/csv/CsvRowHandler;)V

    return-object v0
.end method

.method public read(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvBaseReader;->config:Lcn/hutool/core/text/csv/CsvReadConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/hutool/core/text/csv/CsvReadConfig;->setContainsHeader(Z)Lcn/hutool/core/text/csv/CsvReadConfig;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcn/hutool/core/text/csv/CsvBaseReader$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, p2}, Lcn/hutool/core/text/csv/CsvBaseReader$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, p1}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Ljava/io/Reader;Lcn/hutool/core/text/csv/CsvRowHandler;)V

    return-object v0
.end method

.method public read(Ljava/io/Reader;Lcn/hutool/core/text/csv/CsvRowHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0, p1, v0, p2}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Ljava/io/Reader;ZLcn/hutool/core/text/csv/CsvRowHandler;)V

    return-void
.end method

.method public read(Ljava/io/Reader;ZLcn/hutool/core/text/csv/CsvRowHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0, p1}, Lcn/hutool/core/text/csv/CsvBaseReader;->parse(Ljava/io/Reader;)Lcn/hutool/core/text/csv/CsvParser;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Lcn/hutool/core/text/csv/CsvParser;ZLcn/hutool/core/text/csv/CsvRowHandler;)V

    return-void
.end method

.method public readFromStr(Ljava/lang/String;)Lcn/hutool/core/text/csv/CsvData;
    .locals 1

    .line 119
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Ljava/io/Reader;)Lcn/hutool/core/text/csv/CsvData;

    move-result-object p1

    return-object p1
.end method

.method public readFromStr(Ljava/lang/String;Lcn/hutool/core/text/csv/CsvRowHandler;)V
    .locals 1

    .line 129
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/csv/CsvBaseReader;->parse(Ljava/io/Reader;)Lcn/hutool/core/text/csv/CsvParser;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Lcn/hutool/core/text/csv/CsvParser;ZLcn/hutool/core/text/csv/CsvRowHandler;)V

    return-void
.end method

.method public readMapList(Ljava/io/Reader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvBaseReader;->config:Lcn/hutool/core/text/csv/CsvReadConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/hutool/core/text/csv/CsvReadConfig;->setContainsHeader(Z)Lcn/hutool/core/text/csv/CsvReadConfig;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    new-instance v1, Lcn/hutool/core/text/csv/CsvBaseReader$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcn/hutool/core/text/csv/CsvBaseReader$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcn/hutool/core/text/csv/CsvBaseReader;->read(Ljava/io/Reader;Lcn/hutool/core/text/csv/CsvRowHandler;)V

    return-object v0
.end method

.method public setContainsHeader(Z)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvBaseReader;->config:Lcn/hutool/core/text/csv/CsvReadConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/core/text/csv/CsvReadConfig;->setContainsHeader(Z)Lcn/hutool/core/text/csv/CsvReadConfig;

    return-void
.end method

.method public setErrorOnDifferentFieldCount(Z)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvBaseReader;->config:Lcn/hutool/core/text/csv/CsvReadConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/core/text/csv/CsvReadConfig;->setErrorOnDifferentFieldCount(Z)Lcn/hutool/core/text/csv/CsvReadConfig;

    return-void
.end method

.method public setFieldSeparator(C)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvBaseReader;->config:Lcn/hutool/core/text/csv/CsvReadConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/core/text/csv/CsvReadConfig;->setFieldSeparator(C)Lcn/hutool/core/text/csv/CsvConfig;

    return-void
.end method

.method public setSkipEmptyRows(Z)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvBaseReader;->config:Lcn/hutool/core/text/csv/CsvReadConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/core/text/csv/CsvReadConfig;->setSkipEmptyRows(Z)Lcn/hutool/core/text/csv/CsvReadConfig;

    return-void
.end method

.method public setTextDelimiter(C)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/hutool/core/text/csv/CsvBaseReader;->config:Lcn/hutool/core/text/csv/CsvReadConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/core/text/csv/CsvReadConfig;->setTextDelimiter(C)Lcn/hutool/core/text/csv/CsvConfig;

    return-void
.end method
