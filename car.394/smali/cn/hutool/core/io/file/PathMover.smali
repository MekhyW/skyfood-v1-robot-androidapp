.class public Lcn/hutool/core/io/file/PathMover;
.super Ljava/lang/Object;
.source "PathMover.java"


# instance fields
.field private final options:[Ljava/nio/file/CopyOption;

.field private final src:Ljava/nio/file/Path;

.field private final target:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Src path must be not null !"

    .line 56
    invoke-static {p2, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p1, v0}, Lcn/hutool/core/io/file/PathUtil;->exists(Ljava/nio/file/Path;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iput-object p1, p0, Lcn/hutool/core/io/file/PathMover;->src:Ljava/nio/file/Path;

    const-string p1, "Target path must be not null !"

    new-array v1, v0, [Ljava/lang/Object;

    .line 61
    invoke-static {p2, p1, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    iput-object p1, p0, Lcn/hutool/core/io/file/PathMover;->target:Ljava/nio/file/Path;

    new-array p1, v0, [Ljava/nio/file/CopyOption;

    .line 62
    invoke-static {p3, p1}, Lcn/hutool/core/util/ObjUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/CopyOption;

    iput-object p1, p0, Lcn/hutool/core/io/file/PathMover;->options:[Ljava/nio/file/CopyOption;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Src path is not exist!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static of(Ljava/nio/file/Path;Ljava/nio/file/Path;Z)Lcn/hutool/core/io/file/PathMover;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/nio/file/CopyOption;

    .line 29
    sget-object v1, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v1, p2, v0

    goto :goto_0

    :cond_0
    new-array p2, v0, [Ljava/nio/file/CopyOption;

    :goto_0
    invoke-static {p0, p1, p2}, Lcn/hutool/core/io/file/PathMover;->of(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lcn/hutool/core/io/file/PathMover;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lcn/hutool/core/io/file/PathMover;
    .locals 1

    .line 41
    new-instance v0, Lcn/hutool/core/io/file/PathMover;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/core/io/file/PathMover;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    return-object v0
.end method

.method private static varargs walkMove(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 1

    .line 166
    :try_start_0
    new-instance v0, Lcn/hutool/core/io/file/visitor/MoveVisitor;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/core/io/file/visitor/MoveVisitor;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    invoke-static {p0, v0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 168
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public move()Ljava/nio/file/Path;
    .locals 5

    .line 80
    iget-object v0, p0, Lcn/hutool/core/io/file/PathMover;->src:Ljava/nio/file/Path;

    .line 81
    iget-object v1, p0, Lcn/hutool/core/io/file/PathMover;->target:Ljava/nio/file/Path;

    .line 82
    iget-object v2, p0, Lcn/hutool/core/io/file/PathMover;->options:[Ljava/nio/file/CopyOption;

    .line 84
    invoke-static {v0, v1}, Lcn/hutool/core/io/file/PathUtil;->isSub(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    .line 85
    invoke-static {v1, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Lcn/hutool/core/io/file/PathUtil;->equals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    .line 91
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, "Target [{}] is sub path of src [{}]!"

    invoke-static {v0, v4}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :cond_1
    invoke-static {v1}, Lcn/hutool/core/io/file/PathUtil;->isDirectory(Ljava/nio/file/Path;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    .line 100
    :cond_2
    invoke-static {v1}, Lcn/hutool/core/io/file/PathUtil;->mkParentDirs(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 102
    :try_start_0
    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    .line 104
    instance-of v4, v3, Ljava/nio/file/FileAlreadyExistsException;

    if-nez v4, :cond_3

    .line 110
    invoke-static {v0, v1, v2}, Lcn/hutool/core/io/file/PathMover;->walkMove(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 112
    invoke-static {v0}, Lcn/hutool/core/io/file/PathUtil;->del(Ljava/nio/file/Path;)Z

    return-object v1

    .line 107
    :cond_3
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, v3}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public moveContent()Ljava/nio/file/Path;
    .locals 3

    .line 131
    iget-object v0, p0, Lcn/hutool/core/io/file/PathMover;->src:Ljava/nio/file/Path;

    .line 132
    iget-object v1, p0, Lcn/hutool/core/io/file/PathMover;->target:Ljava/nio/file/Path;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/hutool/core/io/file/PathUtil;->isExistsAndNotDirectory(Ljava/nio/file/Path;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcn/hutool/core/io/file/PathMover;->move()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    iget-object v1, p0, Lcn/hutool/core/io/file/PathMover;->target:Ljava/nio/file/Path;

    .line 138
    invoke-static {v1, v2}, Lcn/hutool/core/io/file/PathUtil;->isExistsAndNotDirectory(Ljava/nio/file/Path;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    invoke-static {v0, v1}, Lcn/hutool/core/io/file/PathUtil;->equals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 149
    :cond_1
    iget-object v2, p0, Lcn/hutool/core/io/file/PathMover;->options:[Ljava/nio/file/CopyOption;

    .line 152
    invoke-static {v0, v1, v2}, Lcn/hutool/core/io/file/PathMover;->walkMove(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    return-object v1

    .line 140
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not move dir content to a file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
