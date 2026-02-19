.class public Lcom/autoai/research/jtools/io/filefilter/FileFileFilter;
.super Lcom/autoai/research/jtools/io/filefilter/AbstractFileFilter;
.source "FileFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FILE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x4a2e1f2e2788097eL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/FileFileFilter;

    invoke-direct {v0}, Lcom/autoai/research/jtools/io/filefilter/FileFileFilter;-><init>()V

    sput-object v0, Lcom/autoai/research/jtools/io/filefilter/FileFileFilter;->FILE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/autoai/research/jtools/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method
