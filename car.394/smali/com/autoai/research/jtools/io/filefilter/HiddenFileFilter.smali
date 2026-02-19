.class public Lcom/autoai/research/jtools/io/filefilter/HiddenFileFilter;
.super Lcom/autoai/research/jtools/io/filefilter/AbstractFileFilter;
.source "HiddenFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HIDDEN:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field public static final VISIBLE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x7bf0b9c4d4ed8916L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/HiddenFileFilter;

    invoke-direct {v0}, Lcom/autoai/research/jtools/io/filefilter/HiddenFileFilter;-><init>()V

    sput-object v0, Lcom/autoai/research/jtools/io/filefilter/HiddenFileFilter;->HIDDEN:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    .line 60
    new-instance v1, Lcom/autoai/research/jtools/io/filefilter/NotFileFilter;

    invoke-direct {v1, v0}, Lcom/autoai/research/jtools/io/filefilter/NotFileFilter;-><init>(Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;)V

    sput-object v1, Lcom/autoai/research/jtools/io/filefilter/HiddenFileFilter;->VISIBLE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/autoai/research/jtools/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result p1

    return p1
.end method
