.class Lcom/reglink/common/PathWalk$1;
.super Ljava/lang/Object;
.source "PathWalk.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reglink/common/PathWalk;->walkFile(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reglink/common/PathWalk;

.field final synthetic val$deep:I


# direct methods
.method constructor <init>(Lcom/reglink/common/PathWalk;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/reglink/common/PathWalk$1;->this$0:Lcom/reglink/common/PathWalk;

    iput p2, p0, Lcom/reglink/common/PathWalk$1;->val$deep:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 8

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/reglink/common/PathWalk$1;->this$0:Lcom/reglink/common/PathWalk;

    invoke-static {v1}, Lcom/reglink/common/PathWalk;->access$000(Lcom/reglink/common/PathWalk;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    .line 51
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 52
    iget v0, p0, Lcom/reglink/common/PathWalk$1;->val$deep:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/sdcard/txz/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    move v3, v1

    :cond_2
    return v3

    .line 53
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/reglink/common/FilePath;->fileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 56
    iget-object v4, p0, Lcom/reglink/common/PathWalk$1;->this$0:Lcom/reglink/common/PathWalk;

    invoke-static {v4}, Lcom/reglink/common/PathWalk;->access$100(Lcom/reglink/common/PathWalk;)Ljava/util/HashSet;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 57
    iget-object v4, p0, Lcom/reglink/common/PathWalk$1;->this$0:Lcom/reglink/common/PathWalk;

    invoke-static {v4}, Lcom/reglink/common/PathWalk;->access$100(Lcom/reglink/common/PathWalk;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/reglink/common/PathWalk$1;->this$0:Lcom/reglink/common/PathWalk;

    invoke-virtual {v2, p1}, Lcom/reglink/common/PathWalk;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    const-wide/32 v6, 0x4b000

    cmp-long p1, v4, v6

    if-gtz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/reglink/common/PathWalk$1;->this$0:Lcom/reglink/common/PathWalk;

    iget-boolean p1, p1, Lcom/reglink/common/PathWalk;->movie:Z

    if-eqz p1, :cond_6

    const-string p1, "mp4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    return v1

    :cond_6
    return v3
.end method
