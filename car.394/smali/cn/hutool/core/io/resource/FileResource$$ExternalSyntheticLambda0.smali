.class public final synthetic Lcn/hutool/core/io/resource/FileResource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/io/resource/FileResource$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/io/resource/FileResource$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    invoke-static {v0}, Lcn/hutool/core/io/resource/FileResource;->$r8$lambda$svrVDp_zN9TR6t4KRrvxuC3wZRw(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
