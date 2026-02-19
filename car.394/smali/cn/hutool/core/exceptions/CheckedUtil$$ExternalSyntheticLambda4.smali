.class public final synthetic Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc0Rt;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/lang/func/VoidFunc0;

.field public final synthetic f$1:Ljava/lang/RuntimeException;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/lang/func/VoidFunc0;Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda4;->f$0:Lcn/hutool/core/lang/func/VoidFunc0;

    iput-object p2, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda4;->f$1:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda4;->f$0:Lcn/hutool/core/lang/func/VoidFunc0;

    iget-object v1, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda4;->f$1:Ljava/lang/RuntimeException;

    invoke-static {v0, v1}, Lcn/hutool/core/exceptions/CheckedUtil;->lambda$uncheck$a3c5d001$1(Lcn/hutool/core/lang/func/VoidFunc0;Ljava/lang/RuntimeException;)V

    return-void
.end method
