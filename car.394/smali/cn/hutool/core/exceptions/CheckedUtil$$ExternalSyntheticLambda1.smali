.class public final synthetic Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/exceptions/CheckedUtil$VoidFunc1Rt;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/lang/func/VoidFunc1;

.field public final synthetic f$1:Lcn/hutool/core/lang/func/Supplier1;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/lang/func/VoidFunc1;Lcn/hutool/core/lang/func/Supplier1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/core/lang/func/VoidFunc1;

    iput-object p2, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda1;->f$1:Lcn/hutool/core/lang/func/Supplier1;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/core/lang/func/VoidFunc1;

    iget-object v1, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda1;->f$1:Lcn/hutool/core/lang/func/Supplier1;

    invoke-static {v0, v1, p1}, Lcn/hutool/core/exceptions/CheckedUtil;->lambda$uncheck$ad313ebc$1(Lcn/hutool/core/lang/func/VoidFunc1;Lcn/hutool/core/lang/func/Supplier1;Ljava/lang/Object;)V

    return-void
.end method
