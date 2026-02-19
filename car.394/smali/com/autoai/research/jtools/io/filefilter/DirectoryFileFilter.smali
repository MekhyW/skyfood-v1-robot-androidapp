.class public Lcom/autoai/research/jtools/io/filefilter/DirectoryFileFilter;
.super Lcom/autoai/research/jtools/io/filefilter/AbstractFileFilter;
.source "DirectoryFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECTORY:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field public static final INSTANCE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = -0x4772370ad9ffe7a4L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/DirectoryFileFilter;

    invoke-direct {v0}, Lcom/autoai/research/jtools/io/filefilter/DirectoryFileFilter;-><init>()V

    sput-object v0, Lcom/autoai/research/jtools/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    .line 56
    sput-object v0, Lcom/autoai/research/jtools/io/filefilter/DirectoryFileFilter;->INSTANCE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/autoai/research/jtools/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1
.end method
