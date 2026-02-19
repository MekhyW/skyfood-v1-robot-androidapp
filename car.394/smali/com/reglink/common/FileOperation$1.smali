.class Lcom/reglink/common/FileOperation$1;
.super Ljava/lang/Object;
.source "FileOperation.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/FileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reglink/common/FileOperation;


# direct methods
.method constructor <init>(Lcom/reglink/common/FileOperation;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/reglink/common/FileOperation$1;->this$0:Lcom/reglink/common/FileOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
