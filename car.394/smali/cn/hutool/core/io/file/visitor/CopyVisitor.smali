.class public Lcn/hutool/core/io/file/visitor/CopyVisitor;
.super Ljava/nio/file/SimpleFileVisitor;
.source "CopyVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final copyOptions:[Ljava/nio/file/CopyOption;

.field private isTargetCreated:Z

.field private final source:Ljava/nio/file/Path;

.field private final target:Ljava/nio/file/Path;


# direct methods
.method public varargs constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    const/4 v0, 0x0

    .line 43
    invoke-static {p2, v0}, Lcn/hutool/core/io/file/PathUtil;->exists(Ljava/nio/file/Path;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcn/hutool/core/io/file/PathUtil;->isDirectory(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target must be a directory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    :goto_0
    iput-object p1, p0, Lcn/hutool/core/io/file/visitor/CopyVisitor;->source:Ljava/nio/file/Path;

    .line 47
    iput-object p2, p0, Lcn/hutool/core/io/file/visitor/CopyVisitor;->target:Ljava/nio/file/Path;

    .line 48
    iput-object p3, p0, Lcn/hutool/core/io/file/visitor/CopyVisitor;->copyOptions:[Ljava/nio/file/CopyOption;

    return-void
.end method

.method private initTargetDir()V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcn/hutool/core/io/file/visitor/CopyVisitor;->isTargetCreated:Z

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcn/hutool/core/io/file/visitor/CopyVisitor;->target:Ljava/nio/file/Path;

    invoke-static {v0}, Lcn/hutool/core/io/file/PathUtil;->mkdir(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcn/hutool/core/io/file/visitor/CopyVisitor;->isTargetCreated:Z

    :cond_0
    return-void
.end method

.method private resolveTarget(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 2

    .line 91
    iget-object v0, p0, Lcn/hutool/core/io/file/visitor/CopyVisitor;->target:Ljava/nio/file/Path;

    iget-object v1, p0, Lcn/hutool/core/io/file/visitor/CopyVisitor;->source:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/io/file/visitor/CopyVisitor;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcn/hutool/core/io/file/visitor/CopyVisitor;->initTargetDir()V

    .line 55
    invoke-direct {p0, p1}, Lcn/hutool/core/io/file/visitor/CopyVisitor;->resolveTarget(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    .line 59
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/io/file/visitor/CopyVisitor;->copyOptions:[Ljava/nio/file/CopyOption;

    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 61
    invoke-static {p2, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 66
    :goto_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 63
    :cond_0
    throw p1
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/io/file/visitor/CopyVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lcn/hutool/core/io/file/visitor/CopyVisitor;->initTargetDir()V

    .line 74
    invoke-direct {p0, p1}, Lcn/hutool/core/io/file/visitor/CopyVisitor;->resolveTarget(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    iget-object v0, p0, Lcn/hutool/core/io/file/visitor/CopyVisitor;->copyOptions:[Ljava/nio/file/CopyOption;

    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 75
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
