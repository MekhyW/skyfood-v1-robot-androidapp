.class public Lcom/autoai/research/jtools/io/filefilter/FalseFileFilter;
.super Ljava/lang/Object;
.source "FalseFileFilter.java"

# interfaces
.implements Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;
.implements Ljava/io/Serializable;


# static fields
.field public static final FALSE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field public static final INSTANCE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x562f51300a5686f8L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/autoai/research/jtools/io/filefilter/FalseFileFilter;

    invoke-direct {v0}, Lcom/autoai/research/jtools/io/filefilter/FalseFileFilter;-><init>()V

    sput-object v0, Lcom/autoai/research/jtools/io/filefilter/FalseFileFilter;->FALSE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    .line 45
    sput-object v0, Lcom/autoai/research/jtools/io/filefilter/FalseFileFilter;->INSTANCE:Lcom/autoai/research/jtools/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
