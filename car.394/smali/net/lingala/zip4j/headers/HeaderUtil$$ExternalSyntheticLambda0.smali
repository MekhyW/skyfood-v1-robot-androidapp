.class public final synthetic Lnet/lingala/zip4j/headers/HeaderUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lnet/lingala/zip4j/model/FileHeader;


# direct methods
.method public synthetic constructor <init>(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/headers/HeaderUtil$$ExternalSyntheticLambda0;->f$0:Lnet/lingala/zip4j/model/FileHeader;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderUtil$$ExternalSyntheticLambda0;->f$0:Lnet/lingala/zip4j/model/FileHeader;

    check-cast p1, Lnet/lingala/zip4j/model/FileHeader;

    invoke-static {v0, p1}, Lnet/lingala/zip4j/headers/HeaderUtil;->lambda$getFileHeadersUnderDirectory$0(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result p1

    return p1
.end method
