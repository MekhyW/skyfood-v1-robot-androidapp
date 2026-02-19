.class public final Lcom/autoai/research/jtools/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;,
        Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;,
        Lcom/autoai/research/jtools/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 88
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 275
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 137
    iput-wide v2, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->size:J

    .line 139
    new-instance v4, Ljava/util/LinkedHashMap;

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v6}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 148
    iput-wide v2, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->nextSequenceNumber:J

    .line 257
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v3, "diskCahce"

    .line 258
    invoke-static {v3}, Lcom/autoai/research/jtools/ThreadPoolUtils;->createThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v15

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 259
    new-instance v2, Lcom/autoai/research/jtools/cache/DiskLruCache$1;

    invoke-direct {v2, v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$1;-><init>(Lcom/autoai/research/jtools/cache/DiskLruCache;)V

    iput-object v2, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 276
    iput-object v1, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->directory:Ljava/io/File;

    move/from16 v2, p2

    .line 277
    iput v2, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->appVersion:I

    .line 278
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 279
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    move/from16 v1, p3

    .line 280
    iput v1, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->valueCount:I

    move-wide/from16 v1, p4

    .line 281
    iput-wide v1, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->maxSize:J

    return-void
.end method

.method static synthetic access$000(Lcom/autoai/research/jtools/cache/DiskLruCache;)Ljava/io/Writer;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autoai/research/jtools/cache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/autoai/research/jtools/cache/DiskLruCache;Ljava/lang/String;J)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/autoai/research/jtools/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800()Ljava/nio/charset/Charset;
    .locals 1

    .line 77
    sget-object v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/autoai/research/jtools/cache/DiskLruCache;Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/autoai/research/jtools/cache/DiskLruCache;->completeEdit(Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/autoai/research/jtools/cache/DiskLruCache;)Z
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/autoai/research/jtools/cache/DiskLruCache;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->valueCount:I

    return p0
.end method

.method static synthetic access$2200(Lcom/autoai/research/jtools/cache/DiskLruCache;)Ljava/io/File;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autoai/research/jtools/cache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/autoai/research/jtools/cache/DiskLruCache;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    .line 668
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 226
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 228
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 562
    :try_start_0
    invoke-static {p1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->access$1400(Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;)Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    move-result-object v0

    .line 563
    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$700(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 568
    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$600(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    .line 569
    :goto_0
    iget v3, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_1

    .line 570
    invoke-virtual {v0, v2}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {p1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->abort()V

    .line 572
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "edit didn\'t create file "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 577
    :cond_1
    :goto_1
    iget p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->valueCount:I

    if-ge v1, p1, :cond_4

    .line 578
    invoke-virtual {v0, v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 580
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 581
    invoke-virtual {v0, v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 582
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 583
    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1000(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 584
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 585
    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1000(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 586
    iget-wide v7, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->size:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->size:J

    goto :goto_2

    .line 589
    :cond_2
    invoke-static {p1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 593
    :cond_4
    iget p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->redundantOpCount:I

    const/4 p1, 0x0

    .line 594
    invoke-static {v0, p1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$702(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    .line 595
    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$600(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Z

    move-result p1

    const/16 v2, 0xa

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    goto :goto_3

    .line 602
    :cond_5
    iget-object p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1100(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1100(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 596
    :cond_6
    :goto_3
    invoke-static {v0, v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$602(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;Z)Z

    .line 597
    iget-object p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1100(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 599
    iget-wide p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v0, p1, p2}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1202(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;J)J

    .line 606
    :cond_7
    :goto_4
    iget-wide p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->size:J

    iget-wide v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->maxSize:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_8

    invoke-direct {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 607
    :cond_8
    iget-object p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    :cond_9
    monitor-exit p0

    return-void

    .line 564
    :cond_a
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 153
    array-length v0, p0

    if-gt p1, p2, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 161
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 164
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 158
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 155
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 246
    array-length p0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    .line 247
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-static {v2}, Lcom/autoai/research/jtools/cache/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 250
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    .line 244
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "DIRTY "

    monitor-enter p0

    .line 511
    :try_start_0
    invoke-direct {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->checkNotClosed()V

    .line 512
    invoke-direct {p0, p1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 515
    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1200(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p2, v4, p2

    if-eqz p2, :cond_1

    .line 516
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-nez v1, :cond_2

    .line 519
    :try_start_1
    new-instance v1, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1, v3}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;-><init>(Lcom/autoai/research/jtools/cache/DiskLruCache;Ljava/lang/String;Lcom/autoai/research/jtools/cache/DiskLruCache$1;)V

    .line 520
    iget-object p2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 521
    :cond_2
    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$700(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 522
    monitor-exit p0

    return-object v3

    .line 525
    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    invoke-direct {p2, p0, v1, v3}, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;-><init>(Lcom/autoai/research/jtools/cache/DiskLruCache;Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;Lcom/autoai/research/jtools/cache/DiskLruCache$1;)V

    .line 526
    invoke-static {v1, p2}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$702(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    .line 529
    iget-object p3, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 530
    iget-object p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 531
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/autoai/research/jtools/cache/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .line 617
    iget v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 618
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/autoai/research/jtools/cache/DiskLruCache;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    if-lez p2, :cond_1

    .line 304
    new-instance v0, Lcom/autoai/research/jtools/cache/DiskLruCache;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/autoai/research/jtools/cache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 305
    iget-object v1, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    :try_start_0
    invoke-direct {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->readJournal()V

    .line 308
    invoke-direct {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->processJournal()V

    .line 309
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 315
    :catch_0
    invoke-virtual {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->delete()V

    .line 320
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 321
    new-instance v0, Lcom/autoai/research/jtools/cache/DiskLruCache;

    move-object v4, v0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/autoai/research/jtools/cache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 322
    invoke-direct {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->rebuildJournal()V

    return-object v0

    .line 300
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 392
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    .line 394
    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$700(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 395
    :goto_1
    iget v2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_0

    .line 396
    iget-wide v4, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->size:J

    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1000(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 399
    invoke-static {v1, v2}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$702(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    .line 400
    :goto_2
    iget v2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_2

    .line 401
    invoke-virtual {v1, v3}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/autoai/research/jtools/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 402
    invoke-virtual {v1, v3}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/autoai/research/jtools/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 404
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 202
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-char v1, v1

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 204
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 180
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 181
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v0
.end method

.method private readJournal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    const-string v1, "unexpected journal header: ["

    .line 327
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 329
    :try_start_0
    invoke-static {v2}, Lcom/autoai/research/jtools/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-static {v2}, Lcom/autoai/research/jtools/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-static {v2}, Lcom/autoai/research/jtools/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-static {v2}, Lcom/autoai/research/jtools/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 333
    invoke-static {v2}, Lcom/autoai/research/jtools/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "libcore.io.DiskLruCache"

    .line 334
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "1"

    .line 335
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->appVersion:I

    .line 336
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->valueCount:I

    .line 337
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    .line 338
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 345
    :goto_0
    :try_start_1
    invoke-static {v2}, Lcom/autoai/research/jtools/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    :catch_0
    invoke-static {v2}, Lcom/autoai/research/jtools/cache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 339
    :cond_0
    :try_start_2
    new-instance v5, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 351
    invoke-static {v2}, Lcom/autoai/research/jtools/cache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " "

    .line 356
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 357
    array-length v1, v0

    const-string v2, "unexpected journal line: "

    const/4 v3, 0x2

    if-lt v1, v3, :cond_5

    const/4 v1, 0x1

    .line 361
    aget-object v4, v0, v1

    const/4 v5, 0x0

    .line 362
    aget-object v6, v0, v5

    const-string v7, "REMOVE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    array-length v6, v0

    if-ne v6, v3, :cond_0

    .line 363
    iget-object p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 367
    :cond_0
    iget-object v6, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 369
    new-instance v6, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    invoke-direct {v6, p0, v4, v7}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;-><init>(Lcom/autoai/research/jtools/cache/DiskLruCache;Ljava/lang/String;Lcom/autoai/research/jtools/cache/DiskLruCache$1;)V

    .line 370
    iget-object v8, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_1
    aget-object v4, v0, v5

    const-string v8, "CLEAN"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    array-length v4, v0

    iget v8, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->valueCount:I

    add-int/2addr v8, v3

    if-ne v4, v8, :cond_2

    .line 374
    invoke-static {v6, v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$602(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;Z)Z

    .line 375
    invoke-static {v6, v7}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$702(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    .line 376
    array-length p1, v0

    invoke-static {v0, v3, p1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$800(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_2
    aget-object v1, v0, v5

    const-string v4, "DIRTY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, v0

    if-ne v1, v3, :cond_3

    .line 378
    new-instance p1, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    invoke-direct {p1, p0, v6, v7}, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;-><init>(Lcom/autoai/research/jtools/cache/DiskLruCache;Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;Lcom/autoai/research/jtools/cache/DiskLruCache$1;)V

    invoke-static {v6, p1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$702(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    goto :goto_0

    .line 379
    :cond_3
    aget-object v1, v0, v5

    const-string v4, "READ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v0, v0

    if-ne v0, v3, :cond_4

    :goto_0
    return-void

    .line 382
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 418
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    const-string v1, "libcore.io.DiskLruCache"

    .line 419
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 420
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    .line 421
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 422
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 423
    iget v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 424
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 425
    iget v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 426
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 427
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    .line 430
    invoke-static {v3}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$700(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    move-result-object v4

    const/16 v5, 0xa

    if-eqz v4, :cond_1

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DIRTY "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1100(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLEAN "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1100(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 438
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 439
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private trimToSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    :goto_0
    iget-wide v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 706
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    .line 721
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 691
    monitor-exit p0

    return-void

    .line 693
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    .line 694
    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$700(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 695
    invoke-static {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$700(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;->abort()V

    goto :goto_0

    .line 698
    :cond_2
    invoke-direct {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->trimToSize()V

    .line 699
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    invoke-virtual {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->close()V

    .line 717
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 507
    invoke-direct {p0, p1, v0, v1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 678
    :try_start_0
    invoke-direct {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->checkNotClosed()V

    .line 679
    invoke-direct {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->trimToSize()V

    .line 680
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/autoai/research/jtools/cache/DiskLruCache$Snapshot;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 464
    :try_start_0
    invoke-direct {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->checkNotClosed()V

    .line 465
    invoke-direct {p0, p1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 468
    monitor-exit p0

    return-object v1

    .line 471
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$600(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 472
    monitor-exit p0

    return-object v1

    .line 480
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->valueCount:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 482
    :goto_0
    :try_start_3
    iget v3, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 483
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0, v2}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v8, v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 490
    :cond_2
    :try_start_4
    iget v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->redundantOpCount:I

    .line 491
    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 492
    invoke-direct {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 493
    iget-object v1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 496
    :cond_3
    new-instance v1, Lcom/autoai/research/jtools/cache/DiskLruCache$Snapshot;

    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1200(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/autoai/research/jtools/cache/DiskLruCache$Snapshot;-><init>(Lcom/autoai/research/jtools/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/autoai/research/jtools/cache/DiskLruCache$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 487
    :catch_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maxSize()J
    .locals 2

    .line 549
    iget-wide v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 630
    :try_start_0
    invoke-direct {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->checkNotClosed()V

    .line 631
    invoke-direct {p0, p1}, Lcom/autoai/research/jtools/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 633
    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$700(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)Lcom/autoai/research/jtools/cache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 637
    :cond_0
    :goto_0
    iget v2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_2

    .line 638
    invoke-virtual {v0, v1}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 639
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 642
    iget-wide v2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1000(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->size:J

    .line 643
    invoke-static {v0}, Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;->access$1000(Lcom/autoai/research/jtools/cache/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 640
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 646
    :cond_2
    iget v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->redundantOpCount:I

    .line 647
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 648
    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-direct {p0}, Lcom/autoai/research/jtools/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 651
    iget-object p1, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :cond_3
    monitor-exit p0

    return v1

    .line 634
    :cond_4
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 558
    :try_start_0
    iget-wide v0, p0, Lcom/autoai/research/jtools/cache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
