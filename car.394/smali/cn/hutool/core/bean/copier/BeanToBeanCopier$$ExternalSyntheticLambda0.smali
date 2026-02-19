.class public final synthetic Lcn/hutool/core/bean/copier/BeanToBeanCopier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/bean/copier/BeanToBeanCopier;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/bean/copier/BeanToBeanCopier;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/bean/copier/BeanToBeanCopier$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/bean/copier/BeanToBeanCopier;

    iput-object p2, p0, Lcn/hutool/core/bean/copier/BeanToBeanCopier$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/bean/copier/BeanToBeanCopier$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/bean/copier/BeanToBeanCopier;

    iget-object v1, p0, Lcn/hutool/core/bean/copier/BeanToBeanCopier$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcn/hutool/core/bean/PropDesc;

    invoke-virtual {v0, v1, p1, p2}, Lcn/hutool/core/bean/copier/BeanToBeanCopier;->lambda$copy$0$cn-hutool-core-bean-copier-BeanToBeanCopier(Ljava/util/Map;Ljava/lang/String;Lcn/hutool/core/bean/PropDesc;)V

    return-void
.end method
