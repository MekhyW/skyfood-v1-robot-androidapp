.class public final synthetic Lcn/hutool/core/compress/ZipReader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/compress/ZipReader;

.field public final synthetic f$1:Lcn/hutool/core/lang/Filter;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/compress/ZipReader;Lcn/hutool/core/lang/Filter;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/compress/ZipReader$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/compress/ZipReader;

    iput-object p2, p0, Lcn/hutool/core/compress/ZipReader$$ExternalSyntheticLambda0;->f$1:Lcn/hutool/core/lang/Filter;

    iput-object p3, p0, Lcn/hutool/core/compress/ZipReader$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcn/hutool/core/compress/ZipReader$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/compress/ZipReader;

    iget-object v1, p0, Lcn/hutool/core/compress/ZipReader$$ExternalSyntheticLambda0;->f$1:Lcn/hutool/core/lang/Filter;

    iget-object v2, p0, Lcn/hutool/core/compress/ZipReader$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    check-cast p1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1, v2, p1}, Lcn/hutool/core/compress/ZipReader;->lambda$readTo$0$cn-hutool-core-compress-ZipReader(Lcn/hutool/core/lang/Filter;Ljava/io/File;Ljava/util/zip/ZipEntry;)V

    return-void
.end method
