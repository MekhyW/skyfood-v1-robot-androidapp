.class public interface abstract Lcn/hutool/extra/compress/extractor/Extractor;
.super Ljava/lang/Object;
.source "Extractor.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public extract(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-interface {p0, p1, v0}, Lcn/hutool/extra/compress/extractor/Extractor;->extract(Ljava/io/File;Lcn/hutool/core/lang/Filter;)V

    return-void
.end method

.method public extract(Ljava/io/File;I)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-interface {p0, p1, p2, v0}, Lcn/hutool/extra/compress/extractor/Extractor;->extract(Ljava/io/File;ILcn/hutool/core/lang/Filter;)V

    return-void
.end method

.method public abstract extract(Ljava/io/File;ILcn/hutool/core/lang/Filter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Lcn/hutool/core/lang/Filter<",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public extract(Ljava/io/File;Lcn/hutool/core/lang/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcn/hutool/core/lang/Filter<",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    invoke-interface {p0, p1, v0, p2}, Lcn/hutool/extra/compress/extractor/Extractor;->extract(Ljava/io/File;ILcn/hutool/core/lang/Filter;)V

    return-void
.end method

.method public stripName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-gtz p2, :cond_0

    return-object p1

    :cond_0
    const-string v0, "/"

    .line 69
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->splitTrim(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 72
    invoke-static {p1, p2, v1}, Lcn/hutool/core/collection/CollUtil;->sub(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    .line 73
    invoke-static {p1, v0}, Lcn/hutool/core/collection/CollUtil;->join(Ljava/lang/Iterable;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
