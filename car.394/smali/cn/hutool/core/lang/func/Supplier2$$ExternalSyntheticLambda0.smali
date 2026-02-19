.class public final synthetic Lcn/hutool/core/lang/func/Supplier2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/lang/func/Supplier2;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/lang/func/Supplier2;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/lang/func/Supplier2$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/lang/func/Supplier2;

    iput-object p2, p0, Lcn/hutool/core/lang/func/Supplier2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcn/hutool/core/lang/func/Supplier2$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcn/hutool/core/lang/func/Supplier2$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/lang/func/Supplier2;

    iget-object v1, p0, Lcn/hutool/core/lang/func/Supplier2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcn/hutool/core/lang/func/Supplier2$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/hutool/core/lang/func/Supplier2;->lambda$toSupplier$0(Lcn/hutool/core/lang/func/Supplier2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
