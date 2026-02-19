.class public final synthetic Lcn/hutool/core/io/FileUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/io/LineHandler;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/io/FileUtil$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcn/hutool/core/io/FileUtil$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final handle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/io/FileUtil$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcn/hutool/core/io/FileUtil$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcn/hutool/core/io/FileUtil;->lambda$readLines$0(Ljava/util/function/Predicate;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
