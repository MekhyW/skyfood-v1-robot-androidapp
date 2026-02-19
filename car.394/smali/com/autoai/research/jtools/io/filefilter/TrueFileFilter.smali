.class public Lcom/autoai/research/jtools/io/filefilter/TrueFileFilter;
.super Ljava/lang/Object;
.source "TrueFileFilter.java"

# interfaces
.implements Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field public static final TRUE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x79e1c04752927a87L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/TrueFileFilter;

    invoke-direct {v0}, Lcom/autoai/research/jtools/io/filefilter/TrueFileFilter;-><init>()V

    sput-object v0, Lcom/autoai/research/jtools/io/filefilter/TrueFileFilter;->TRUE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    .line 44
    sput-object v0, Lcom/autoai/research/jtools/io/filefilter/TrueFileFilter;->INSTANCE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
