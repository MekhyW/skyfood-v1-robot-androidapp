.class public Lcom/autoai/research/jtools/io/filefilter/EmptyFileFilter;
.super Lcom/autoai/research/jtools/io/filefilter/AbstractFileFilter;
.source "EmptyFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field public static final NOT_EMPTY:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x3265672603b5b8d3L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/EmptyFileFilter;

    invoke-direct {v0}, Lcom/autoai/research/jtools/io/filefilter/EmptyFileFilter;-><init>()V

    sput-object v0, Lcom/autoai/research/jtools/io/filefilter/EmptyFileFilter;->EMPTY:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    .line 63
    new-instance v1, Lcom/autoai/research/jtools/io/filefilter/NotFileFilter;

    invoke-direct {v1, v0}, Lcom/autoai/research/jtools/io/filefilter/NotFileFilter;-><init>(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)V

    sput-object v1, Lcom/autoai/research/jtools/io/filefilter/EmptyFileFilter;->NOT_EMPTY:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/autoai/research/jtools/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 82
    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 84
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method
