.class public interface abstract Lcn/hutool/extra/compress/archiver/Archiver;
.super Ljava/lang/Object;
.source "Archiver.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public add(Ljava/io/File;)Lcn/hutool/extra/compress/archiver/Archiver;
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-interface {p0, p1, v0}, Lcn/hutool/extra/compress/archiver/Archiver;->add(Ljava/io/File;Lcn/hutool/core/lang/Filter;)Lcn/hutool/extra/compress/archiver/Archiver;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/io/File;Lcn/hutool/core/lang/Filter;)Lcn/hutool/extra/compress/archiver/Archiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcn/hutool/core/lang/Filter<",
            "Ljava/io/File;",
            ">;)",
            "Lcn/hutool/extra/compress/archiver/Archiver;"
        }
    .end annotation

    const-string v0, "/"

    .line 34
    invoke-interface {p0, p1, v0, p2}, Lcn/hutool/extra/compress/archiver/Archiver;->add(Ljava/io/File;Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Lcn/hutool/extra/compress/archiver/Archiver;

    move-result-object p1

    return-object p1
.end method

.method public abstract add(Ljava/io/File;Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Lcn/hutool/extra/compress/archiver/Archiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcn/hutool/core/lang/Filter<",
            "Ljava/io/File;",
            ">;)",
            "Lcn/hutool/extra/compress/archiver/Archiver;"
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract finish()Lcn/hutool/extra/compress/archiver/Archiver;
.end method
