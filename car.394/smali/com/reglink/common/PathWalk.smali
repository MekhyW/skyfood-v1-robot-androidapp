.class public Lcom/reglink/common/PathWalk;
.super Ljava/lang/Object;
.source "PathWalk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/common/PathWalk$PathWalkItem;,
        Lcom/reglink/common/PathWalk$Listener;
    }
.end annotation


# static fields
.field public static final filterDirPath:Ljava/lang/String; = "/sdcard/txz/"


# instance fields
.field private canceled:Z

.field private excludePath:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extensions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/reglink/common/PathWalk$Listener;

.field movie:Z

.field private pathWalkItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/reglink/common/PathWalk$PathWalkItem;",
            ">;"
        }
    .end annotation
.end field

.field private walkPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private walkRunnable:Ljava/lang/Runnable;

.field private walkThread:Ljava/lang/Thread;

.field private walking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/PathWalk;->pathWalkItems:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/PathWalk;->excludePath:Ljava/util/HashSet;

    .line 92
    new-instance v0, Lcom/reglink/common/PathWalk$2;

    invoke-direct {v0, p0}, Lcom/reglink/common/PathWalk$2;-><init>(Lcom/reglink/common/PathWalk;)V

    iput-object v0, p0, Lcom/reglink/common/PathWalk;->walkRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/PathWalk;->pathWalkItems:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/PathWalk;->excludePath:Ljava/util/HashSet;

    .line 92
    new-instance v0, Lcom/reglink/common/PathWalk$2;

    invoke-direct {v0, p0}, Lcom/reglink/common/PathWalk$2;-><init>(Lcom/reglink/common/PathWalk;)V

    iput-object v0, p0, Lcom/reglink/common/PathWalk;->walkRunnable:Ljava/lang/Runnable;

    .line 124
    iput-object p1, p0, Lcom/reglink/common/PathWalk;->walkPaths:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/PathWalk;->pathWalkItems:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/PathWalk;->excludePath:Ljava/util/HashSet;

    .line 92
    new-instance v0, Lcom/reglink/common/PathWalk$2;

    invoke-direct {v0, p0}, Lcom/reglink/common/PathWalk$2;-><init>(Lcom/reglink/common/PathWalk;)V

    iput-object v0, p0, Lcom/reglink/common/PathWalk;->walkRunnable:Ljava/lang/Runnable;

    .line 120
    iput-boolean p1, p0, Lcom/reglink/common/PathWalk;->movie:Z

    return-void
.end method

.method static synthetic access$000(Lcom/reglink/common/PathWalk;)Ljava/util/HashSet;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/reglink/common/PathWalk;->excludePath:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/reglink/common/PathWalk;)Ljava/util/HashSet;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/reglink/common/PathWalk;->extensions:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$202(Lcom/reglink/common/PathWalk;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/reglink/common/PathWalk;->walking:Z

    return p1
.end method

.method static synthetic access$300(Lcom/reglink/common/PathWalk;)Ljava/util/ArrayList;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/reglink/common/PathWalk;->walkPaths:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/reglink/common/PathWalk;Ljava/lang/String;I)Z
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/reglink/common/PathWalk;->walkFile(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/reglink/common/PathWalk;)Lcom/reglink/common/PathWalk$Listener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/reglink/common/PathWalk;->listener:Lcom/reglink/common/PathWalk$Listener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/reglink/common/PathWalk;)Ljava/util/ArrayList;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/reglink/common/PathWalk;->pathWalkItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method private walkFile(Ljava/lang/String;I)Z
    .locals 9

    .line 38
    invoke-virtual {p0}, Lcom/reglink/common/PathWalk;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xa

    const/4 v2, 0x1

    if-le p2, v0, :cond_1

    return v2

    .line 40
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 42
    new-instance p1, Lcom/reglink/common/PathWalk$1;

    invoke-direct {p1, p0, p2}, Lcom/reglink/common/PathWalk$1;-><init>(Lcom/reglink/common/PathWalk;I)V

    invoke-virtual {v3, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 71
    array-length v3, p1

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, p1, v4

    .line 72
    invoke-virtual {p0}, Lcom/reglink/common/PathWalk;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    .line 73
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    if-ge p2, v0, :cond_4

    .line 75
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    invoke-direct {p0, v5, v6}, Lcom/reglink/common/PathWalk;->walkFile(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4

    return v1

    .line 80
    :cond_3
    iget-object v6, p0, Lcom/reglink/common/PathWalk;->pathWalkItems:Ljava/util/ArrayList;

    monitor-enter v6

    .line 82
    :try_start_0
    iget-object v7, p0, Lcom/reglink/common/PathWalk;->pathWalkItems:Ljava/util/ArrayList;

    new-instance v8, Lcom/reglink/common/PathWalk$PathWalkItem;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/reglink/common/PathWalk$PathWalkItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    return v2
.end method


# virtual methods
.method public addExclude(Ljava/lang/String;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/reglink/common/PathWalk;->excludePath:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/reglink/common/PathWalk;->canceled:Z

    return-void
.end method

.method public getFileSize(Ljava/io/File;)J
    .locals 2

    .line 174
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPathWalkItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/reglink/common/PathWalk$PathWalkItem;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/reglink/common/PathWalk;->pathWalkItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/reglink/common/PathWalk;->canceled:Z

    return v0
.end method

.method public isWalking()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/reglink/common/PathWalk;->walking:Z

    return v0
.end method

.method public setExtensions(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/reglink/common/PathWalk;->extensions:Ljava/util/HashSet;

    return-void
.end method

.method public setListener(Lcom/reglink/common/PathWalk$Listener;)V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/reglink/common/PathWalk;->walking:Z

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/reglink/common/PathWalk;->listener:Lcom/reglink/common/PathWalk$Listener;

    return-void
.end method

.method public setWalkPaths(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/reglink/common/PathWalk;->walking:Z

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/reglink/common/PathWalk;->walkPaths:Ljava/util/ArrayList;

    return-void
.end method

.method public walk()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/reglink/common/PathWalk;->listener:Lcom/reglink/common/PathWalk$Listener;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/reglink/common/PathWalk;->walkPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    iget-boolean v0, p0, Lcom/reglink/common/PathWalk;->walking:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/PathWalk;->pathWalkItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/reglink/common/PathWalk;->canceled:Z

    .line 150
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/reglink/common/PathWalk;->walkRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/reglink/common/PathWalk;->walkThread:Ljava/lang/Thread;

    .line 151
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "walkPaths is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
