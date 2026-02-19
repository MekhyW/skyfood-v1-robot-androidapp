.class public final synthetic Lcom/autoxing/delivery/util/ZipUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autoxing/delivery/util/ZipUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/autoxing/delivery/util/ZipUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Lnet/lingala/zip4j/model/FileHeader;

    invoke-static {v0, p1}, Lcom/autoxing/delivery/util/ZipUtils;->lambda$getFileList$0(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;)V

    return-void
.end method
