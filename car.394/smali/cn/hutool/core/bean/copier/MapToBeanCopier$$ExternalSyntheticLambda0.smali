.class public final synthetic Lcn/hutool/core/bean/copier/MapToBeanCopier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/bean/copier/MapToBeanCopier;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/bean/copier/MapToBeanCopier;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/bean/copier/MapToBeanCopier;

    iput-object p2, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/bean/copier/MapToBeanCopier;

    iget-object v1, p0, Lcn/hutool/core/bean/copier/MapToBeanCopier$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lcn/hutool/core/bean/copier/MapToBeanCopier;->lambda$copy$0$cn-hutool-core-bean-copier-MapToBeanCopier(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
