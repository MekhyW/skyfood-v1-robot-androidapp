.class Lcom/reglink/common/SimplerFileLogger$1;
.super Ljava/lang/Object;
.source "SimplerFileLogger.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reglink/common/SimplerFileLogger;->getAllLogFiles(Ljava/io/File;)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reglink/common/SimplerFileLogger;


# direct methods
.method constructor <init>(Lcom/reglink/common/SimplerFileLogger;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/reglink/common/SimplerFileLogger$1;->this$0:Lcom/reglink/common/SimplerFileLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, ".txt"

    .line 323
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "log_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
