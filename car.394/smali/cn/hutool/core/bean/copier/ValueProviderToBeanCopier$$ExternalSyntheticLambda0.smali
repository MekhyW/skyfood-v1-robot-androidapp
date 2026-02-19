.class public final synthetic Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcn/hutool/core/bean/PropDesc;

    invoke-virtual {v0, p1, p2}, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;->lambda$copy$0$cn-hutool-core-bean-copier-ValueProviderToBeanCopier(Ljava/lang/String;Lcn/hutool/core/bean/PropDesc;)V

    return-void
.end method
