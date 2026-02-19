.class public Lcom/autoai/research/jtools/io/filefilter/CanReadFileFilter;
.super Lcom/autoai/research/jtools/io/filefilter/AbstractFileFilter;
.source "CanReadFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_READ:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field public static final CAN_READ:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field public static final READ_ONLY:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x2c214a929094a84dL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/CanReadFileFilter;

    invoke-direct {v0}, Lcom/autoai/research/jtools/io/filefilter/CanReadFileFilter;-><init>()V

    sput-object v0, Lcom/autoai/research/jtools/io/filefilter/CanReadFileFilter;->CAN_READ:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    .line 72
    new-instance v1, Lcom/autoai/research/jtools/io/filefilter/NotFileFilter;

    invoke-direct {v1, v0}, Lcom/autoai/research/jtools/io/filefilter/NotFileFilter;-><init>(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)V

    sput-object v1, Lcom/autoai/research/jtools/io/filefilter/CanReadFileFilter;->CANNOT_READ:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    .line 75
    new-instance v1, Lcom/autoai/research/jtools/io/filefilter/AndFileFilter;

    sget-object v2, Lcom/autoai/research/jtools/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    invoke-direct {v1, v0, v2}, Lcom/autoai/research/jtools/io/filefilter/AndFileFilter;-><init>(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)V

    sput-object v1, Lcom/autoai/research/jtools/io/filefilter/CanReadFileFilter;->READ_ONLY:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/autoai/research/jtools/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1
.end method
