.class public Lcn/hutool/core/io/file/visitor/MoveVisitor;
.super Ljava/nio/file/SimpleFileVisitor;
.source "MoveVisitor.java"


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

    .line 35
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    const/4 v0, 0x0

    .line 36
    invoke-static {p2, v0}, Lcn/hutool/core/io/file/PathUtil;->exists(Ljava/nio/file/Path;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcn/hutool/core/io/file/PathUtil;->isDirectory(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target must be a directory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    :goto_0
    iput-object p1, p0, Lcn/hutool/core/io/file/visitor/MoveVisitor;->source:Ljava/nio/file/Path;

    .line 40
    iput-object p2, p0, Lcn/hutool/core/io/file/visitor/MoveVisitor;->target:Ljava/nio/file/Path;

    .line 41
    iput-object p3, p0, Lcn/hutool/core/io/file/visitor/MoveVisitor;->copyOptions:[Ljava/nio/file/CopyOption;

    return-void
.end method

.method private initTarget()V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcn/hutool/core/io/file/visitor/MoveVisitor;->isTargetCreated:Z

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcn/hutool/core/io/file/visitor/MoveVisitor;->target:Ljava/nio/file/Path;

    invoke-static {v0}, Lcn/hutool/core/io/file/PathUtil;->mkdir(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcn/hutool/core/io/file/visitor/MoveVisitor;->isTargetCreated:Z

    :cond_0
    return-void
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

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/io/file/visitor/MoveVisitor;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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

    .line 47
    invoke-direct {p0}, Lcn/hutool/core/io/file/visitor/MoveVisitor;->initTarget()V

    .line 49
    iget-object p2, p0, Lcn/hutool/core/io/file/visitor/MoveVisitor;->target:Ljava/nio/file/Path;

    iget-object v0, p0, Lcn/hutool/core/io/file/visitor/MoveVisitor;->source:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/nio/file/LinkOption;

    .line 50
    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array p2, p2, [Ljava/nio/file/attribute/FileAttribute;

    .line 51
    invoke-static {p1, p2}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    goto :goto_0

    :cond_0
    new-array p2, p2, [Ljava/nio/file/LinkOption;

    .line 52
    invoke-static {p1, p2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 55
    :goto_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 53
    :cond_1
    new-instance p2, Ljava/nio/file/FileAlreadyExistsException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw p2
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

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/io/file/visitor/MoveVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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

    .line 61
    invoke-direct {p0}, Lcn/hutool/core/io/file/visitor/MoveVisitor;->initTarget()V

    .line 62
    iget-object p2, p0, Lcn/hutool/core/io/file/visitor/MoveVisitor;->target:Ljava/nio/file/Path;

    iget-object v0, p0, Lcn/hutool/core/io/file/visitor/MoveVisitor;->source:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    iget-object v0, p0, Lcn/hutool/core/io/file/visitor/MoveVisitor;->copyOptions:[Ljava/nio/file/CopyOption;

    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 63
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
