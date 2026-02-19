.class public final Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;
.super Ljava/lang/Object;
.source "FileFilterUtils.java"


# static fields
.field private static final CVS_FILTER:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field private static final SVN_FILTER:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    .line 698
    invoke-static {}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->directoryFileFilter()Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CVS"

    invoke-static {v2}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->and([Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    move-result-object v1

    .line 697
    invoke-static {v1}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->notFileFilter(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    move-result-object v1

    sput-object v1, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->CVS_FILTER:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    new-array v0, v0, [Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    .line 702
    invoke-static {}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->directoryFileFilter()Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ".svn"

    invoke-static {v1}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->and([Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    move-result-object v0

    .line 701
    invoke-static {v0}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->notFileFilter(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->SVN_FILTER:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ageFileFilter(J)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 503
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/autoai/research/jtools/io/filefilter/AgeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static ageFileFilter(JZ)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 516
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/autoai/research/jtools/io/filefilter/AgeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 556
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;Z)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 570
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/autoai/research/jtools/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 529
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;Z)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 542
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/autoai/research/jtools/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;Z)V

    return-object v0
.end method

.method public static varargs and([Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 394
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/AndFileFilter;

    invoke-static {p0}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->toList([Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/io/filefilter/AndFileFilter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 477
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FilenameFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 489
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FilenameFilter;)V

    return-object v0
.end method

.method public static directoryFileFilter()Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 367
    sget-object v0, Lcom/autoai/research/jtools/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static falseFileFilter()Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 464
    sget-object v0, Lcom/autoai/research/jtools/io/filefilter/FalseFileFilter;->FALSE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static fileFileFilter()Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 377
    sget-object v0, Lcom/autoai/research/jtools/io/filefilter/FileFileFilter;->FILE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method private static filter(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;>(",
            "Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 276
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_1

    .line 280
    invoke-interface {p0, v0}, Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "file collection contains null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p2

    .line 273
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "file filter is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static filter(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)[Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/io/File;"
        }
    .end annotation

    .line 124
    invoke-static {p0, p1}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->filterList(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 125
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/io/File;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    return-object p0
.end method

.method public static varargs filter(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;
    .locals 5

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p0, v0, [Ljava/io/File;

    return-object p0

    .line 85
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, p1, v0

    if-eqz v3, :cond_2

    .line 90
    invoke-interface {p0, v3}, Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "file array contains null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/io/File;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    return-object p0

    .line 80
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "file filter is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static filterList(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->filter(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static varargs filterList(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-static {p0, p1}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->filter(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    .line 184
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static filterSet(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->filter(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static varargs filterSet(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-static {p0, p1}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->filter(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    .line 215
    new-instance p1, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public static magicNumberFileFilter(Ljava/lang/String;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 631
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static magicNumberFileFilter(Ljava/lang/String;J)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 652
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/autoai/research/jtools/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static magicNumberFileFilter([B)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 671
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/io/filefilter/MagicNumberFileFilter;-><init>([B)V

    return-object v0
.end method

.method public static magicNumberFileFilter([BJ)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 692
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/autoai/research/jtools/io/filefilter/MagicNumberFileFilter;-><init>([BJ)V

    return-object v0
.end method

.method public static makeCVSAware(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 2

    if-nez p0, :cond_0

    .line 715
    sget-object p0, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->CVS_FILTER:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 717
    sget-object v1, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->CVS_FILTER:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    aput-object v1, v0, p0

    invoke-static {v0}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->and([Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    move-result-object p0

    return-object p0
.end method

.method public static makeDirectoryOnly(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 2

    if-nez p0, :cond_0

    .line 749
    sget-object p0, Lcom/autoai/research/jtools/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-object p0

    .line 751
    :cond_0
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/AndFileFilter;

    sget-object v1, Lcom/autoai/research/jtools/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, p0}, Lcom/autoai/research/jtools/io/filefilter/AndFileFilter;-><init>(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static makeFileOnly(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 2

    if-nez p0, :cond_0

    .line 764
    sget-object p0, Lcom/autoai/research/jtools/io/filefilter/FileFileFilter;->FILE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-object p0

    .line 766
    :cond_0
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/AndFileFilter;

    sget-object v1, Lcom/autoai/research/jtools/io/filefilter/FileFileFilter;->FILE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, p0}, Lcom/autoai/research/jtools/io/filefilter/AndFileFilter;-><init>(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static makeSVNAware(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 2

    if-nez p0, :cond_0

    .line 732
    sget-object p0, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->SVN_FILTER:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 734
    sget-object v1, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->SVN_FILTER:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    aput-object v1, v0, p0

    invoke-static {v0}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->and([Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    move-result-object p0

    return-object p0
.end method

.method public static nameFileFilter(Ljava/lang/String;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 344
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nameFileFilter(Ljava/lang/String;Lcom/autoai/research/jtools/io/IOCase;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 357
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/autoai/research/jtools/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;Lcom/autoai/research/jtools/io/IOCase;)V

    return-object v0
.end method

.method public static notFileFilter(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 443
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/NotFileFilter;

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/io/filefilter/NotFileFilter;-><init>(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static varargs or([Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 409
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/OrFileFilter;

    invoke-static {p0}, Lcom/autoai/research/jtools/io/filefilter/FileFilterUtils;->toList([Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/io/filefilter/OrFileFilter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 296
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;Lcom/autoai/research/jtools/io/IOCase;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 309
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/autoai/research/jtools/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;Lcom/autoai/research/jtools/io/IOCase;)V

    return-object v0
.end method

.method public static sizeFileFilter(J)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 583
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/autoai/research/jtools/io/filefilter/SizeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static sizeFileFilter(JZ)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 596
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/autoai/research/jtools/io/filefilter/SizeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static sizeRangeFileFilter(JJ)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 3

    .line 610
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/SizeFileFilter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/autoai/research/jtools/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 611
    new-instance p0, Lcom/autoai/research/jtools/io/filefilter/SizeFileFilter;

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/autoai/research/jtools/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 612
    new-instance p1, Lcom/autoai/research/jtools/io/filefilter/AndFileFilter;

    invoke-direct {p1, v0, p0}, Lcom/autoai/research/jtools/io/filefilter/AndFileFilter;-><init>(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)V

    return-object p1
.end method

.method public static suffixFileFilter(Ljava/lang/String;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 320
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static suffixFileFilter(Ljava/lang/String;Lcom/autoai/research/jtools/io/IOCase;)Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 333
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/autoai/research/jtools/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;Lcom/autoai/research/jtools/io/IOCase;)V

    return-object v0
.end method

.method public static varargs toList([Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 426
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 427
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 430
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The filter["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0

    .line 423
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The filters must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static trueFileFilter()Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
    .locals 1

    .line 454
    sget-object v0, Lcom/autoai/research/jtools/io/filefilter/TrueFileFilter;->TRUE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-object v0
.end method
