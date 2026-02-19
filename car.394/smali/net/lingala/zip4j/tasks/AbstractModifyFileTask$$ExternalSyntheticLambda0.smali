.class public final synthetic Lnet/lingala/zip4j/tasks/AbstractModifyFileTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/lingala/zip4j/model/FileHeader;

    check-cast p2, Lnet/lingala/zip4j/model/FileHeader;

    invoke-static {p1, p2}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;->lambda$cloneAndSortFileHeadersByOffset$0(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/model/FileHeader;)I

    move-result p1

    return p1
.end method
