.class public final synthetic Lcn/hutool/extra/compress/extractor/SevenZExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/lang/Filter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/extra/compress/extractor/SevenZExtractor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcn/hutool/extra/compress/extractor/SevenZExtractor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/compress/archivers/ArchiveEntry;

    invoke-static {v0, p1}, Lcn/hutool/extra/compress/extractor/SevenZExtractor;->lambda$get$0(Ljava/lang/String;Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z

    move-result p1

    return p1
.end method
