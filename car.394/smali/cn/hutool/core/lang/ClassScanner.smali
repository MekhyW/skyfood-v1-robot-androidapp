.class public Lcn/hutool/core/lang/ClassScanner;
.super Ljava/lang/Object;
.source "ClassScanner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final classFilter:Lcn/hutool/core/lang/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/lang/Filter<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private classLoader:Ljava/lang/ClassLoader;

.field private final classes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final classesOfLoadError:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreLoadError:Z

.field private initialize:Z

.field private final packageDirName:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final packageNameWithDot:Ljava/lang/String;

.field private final packagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, v0}, Lcn/hutool/core/lang/ClassScanner;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/lang/ClassScanner;-><init>(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/hutool/core/lang/Filter<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 204
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/core/lang/ClassScanner;-><init>(Ljava/lang/String;Lcn/hutool/core/lang/Filter;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/hutool/core/lang/Filter;Ljava/nio/charset/Charset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/hutool/core/lang/Filter<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->classes:Ljava/util/Set;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcn/hutool/core/lang/ClassScanner;->ignoreLoadError:Z

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->classesOfLoadError:Ljava/util/Set;

    .line 215
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 216
    iput-object p1, p0, Lcn/hutool/core/lang/ClassScanner;->packageName:Ljava/lang/String;

    const-string v0, "."

    .line 217
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->addSuffixIfNot(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->packageNameWithDot:Ljava/lang/String;

    .line 218
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2e

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->packageDirName:Ljava/lang/String;

    const/16 v0, 0x2f

    .line 219
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/lang/ClassScanner;->packagePath:Ljava/lang/String;

    .line 220
    iput-object p2, p0, Lcn/hutool/core/lang/ClassScanner;->classFilter:Lcn/hutool/core/lang/Filter;

    .line 221
    iput-object p3, p0, Lcn/hutool/core/lang/ClassScanner;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method private addIfAccept(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 440
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->classFilter:Lcn/hutool/core/lang/Filter;

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0, p1}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->classes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addIfAccept(Ljava/lang/String;)V
    .locals 2

    .line 415
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 419
    iget-object v1, p0, Lcn/hutool/core/lang/ClassScanner;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 422
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/ClassScanner;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/lang/ClassScanner;->addIfAccept(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_3

    const-string v0, "."

    .line 427
    iget-object v1, p0, Lcn/hutool/core/lang/ClassScanner;->packageNameWithDot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->packageNameWithDot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 428
    :cond_2
    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/ClassScanner;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/lang/ClassScanner;->addIfAccept(Ljava/lang/Class;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic lambda$scanAllPackageByAnnotation$0(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$scanAllPackageBySuper$2(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$scanPackageByAnnotation$1(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$scanPackageBySuper$3(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static scanAllPackage()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 132
    invoke-static {v0, v1}, Lcn/hutool/core/lang/ClassScanner;->scanAllPackage(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static scanAllPackage(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/hutool/core/lang/Filter<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 165
    new-instance v0, Lcn/hutool/core/lang/ClassScanner;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/lang/ClassScanner;-><init>(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcn/hutool/core/lang/ClassScanner;->scan(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static scanAllPackageByAnnotation(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lcn/hutool/core/lang/ClassScanner$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcn/hutool/core/lang/ClassScanner$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcn/hutool/core/lang/ClassScanner;->scanAllPackage(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static scanAllPackageBySuper(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcn/hutool/core/lang/ClassScanner$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcn/hutool/core/lang/ClassScanner$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcn/hutool/core/lang/ClassScanner;->scanAllPackage(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private scanFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    .line 331
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x6

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-char p2, Ljava/io/File;->separatorChar:C

    const/16 v0, 0x2e

    .line 337
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-direct {p0, p1}, Lcn/hutool/core/lang/ClassScanner;->addIfAccept(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const-string p2, ".jar"

    .line 340
    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 342
    :try_start_0
    new-instance p2, Ljava/util/jar/JarFile;

    invoke-direct {p2, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p2}, Lcn/hutool/core/lang/ClassScanner;->scanJar(Ljava/util/jar/JarFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 344
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 347
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 350
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-nez p2, :cond_2

    .line 351
    invoke-direct {p0, p1}, Lcn/hutool/core/lang/ClassScanner;->subPathBeforePackage(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, p2

    :goto_1
    invoke-direct {p0, v3, v4}, Lcn/hutool/core/lang/ClassScanner;->scanFile(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private scanJar(Ljava/util/jar/JarFile;)V
    .locals 3

    .line 364
    new-instance v0, Lcn/hutool/core/collection/EnumerationIter;

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/hutool/core/collection/EnumerationIter;-><init>(Ljava/util/Enumeration;)V

    invoke-virtual {v0}, Lcn/hutool/core/collection/EnumerationIter;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 365
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v1, v2}, Lcn/hutool/core/util/StrUtil;->removePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 366
    iget-object v2, p0, Lcn/hutool/core/lang/ClassScanner;->packagePath:Ljava/lang/String;

    invoke-static {v2}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/hutool/core/lang/ClassScanner;->packagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const-string v2, ".class"

    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    .line 370
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {p0, v0}, Lcn/hutool/core/lang/ClassScanner;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/hutool/core/lang/ClassScanner;->addIfAccept(Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private scanJavaClassPaths()V
    .locals 5

    .line 315
    invoke-static {}, Lcn/hutool/core/util/ClassUtil;->getJavaClassPaths()[Ljava/lang/String;

    move-result-object v0

    .line 316
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 318
    invoke-static {}, Lcn/hutool/core/util/CharsetUtil;->systemCharsetName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/hutool/core/util/URLUtil;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, v4, v3}, Lcn/hutool/core/lang/ClassScanner;->scanFile(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scanPackage()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 141
    invoke-static {v0, v1}, Lcn/hutool/core/lang/ClassScanner;->scanPackage(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static scanPackage(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 151
    invoke-static {p0, v0}, Lcn/hutool/core/lang/ClassScanner;->scanPackage(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static scanPackage(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/hutool/core/lang/Filter<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 178
    new-instance v0, Lcn/hutool/core/lang/ClassScanner;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/lang/ClassScanner;-><init>(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)V

    invoke-virtual {v0}, Lcn/hutool/core/lang/ClassScanner;->scan()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static scanPackageByAnnotation(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcn/hutool/core/lang/ClassScanner$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcn/hutool/core/lang/ClassScanner$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcn/hutool/core/lang/ClassScanner;->scanPackage(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static scanPackageBySuper(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Lcn/hutool/core/lang/ClassScanner$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcn/hutool/core/lang/ClassScanner$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcn/hutool/core/lang/ClassScanner;->scanPackage(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private subPathBeforePackage(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 454
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 455
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->packageDirName:Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->packageDirName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcn/hutool/core/util/StrUtil;->subBefore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p1

    .line 458
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->addSuffixIfNot(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 308
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassesOfLoadError()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->classesOfLoadError:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 386
    invoke-static {}, Lcn/hutool/core/util/ClassLoaderUtil;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 387
    iput-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->classLoader:Ljava/lang/ClassLoader;

    .line 392
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcn/hutool/core/lang/ClassScanner;->initialize:Z

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedClassVersionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 400
    iget-boolean v1, p0, Lcn/hutool/core/lang/ClassScanner;->ignoreLoadError:Z

    if-eqz v1, :cond_1

    .line 403
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->classesOfLoadError:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 398
    :catch_0
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->classesOfLoadError:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    :catch_1
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->classesOfLoadError:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public scan()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, v0}, Lcn/hutool/core/lang/ClassScanner;->scan(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public scan(Z)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->classes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 256
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->classesOfLoadError:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 258
    iget-object v0, p0, Lcn/hutool/core/lang/ClassScanner;->packagePath:Ljava/lang/String;

    iget-object v1, p0, Lcn/hutool/core/lang/ClassScanner;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lcn/hutool/core/io/resource/ResourceUtil;->getResourceIter(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcn/hutool/core/collection/EnumerationIter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/core/collection/EnumerationIter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 259
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "jar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/hutool/core/lang/ClassScanner;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/hutool/core/util/URLUtil;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcn/hutool/core/lang/ClassScanner;->scanFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-static {v1}, Lcn/hutool/core/util/URLUtil;->getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/hutool/core/lang/ClassScanner;->scanJar(Ljava/util/jar/JarFile;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 270
    iget-object p1, p0, Lcn/hutool/core/lang/ClassScanner;->classes:Ljava/util/Set;

    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 271
    :cond_3
    invoke-direct {p0}, Lcn/hutool/core/lang/ClassScanner;->scanJavaClassPaths()V

    .line 274
    :cond_4
    iget-object p1, p0, Lcn/hutool/core/lang/ClassScanner;->classes:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcn/hutool/core/lang/ClassScanner;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setIgnoreLoadError(Z)Lcn/hutool/core/lang/ClassScanner;
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcn/hutool/core/lang/ClassScanner;->ignoreLoadError:Z

    return-object p0
.end method

.method public setInitialize(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcn/hutool/core/lang/ClassScanner;->initialize:Z

    return-void
.end method
