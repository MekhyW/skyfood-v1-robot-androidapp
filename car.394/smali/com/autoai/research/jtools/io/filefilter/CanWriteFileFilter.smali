.class public Lcom/autoai/research/jtools/io/filefilter/CanWriteFileFilter;
.super Lcom/autoai/research/jtools/io/filefilter/AbstractFileFilter;
.source "CanWriteFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_WRITE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field public static final CAN_WRITE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x47388b8d5efd54abL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/CanWriteFileFilter;

    invoke-direct {v0}, Lcom/autoai/research/jtools/io/filefilter/CanWriteFileFilter;-><init>()V

    sput-object v0, Lcom/autoai/research/jtools/io/filefilter/CanWriteFileFilter;->CAN_WRITE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    .line 64
    new-instance v1, Lcom/autoai/research/jtools/io/filefilter/NotFileFilter;

    invoke-direct {v1, v0}, Lcom/autoai/research/jtools/io/filefilter/NotFileFilter;-><init>(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)V

    sput-object v1, Lcom/autoai/research/jtools/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/autoai/research/jtools/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    return p1
.end method
