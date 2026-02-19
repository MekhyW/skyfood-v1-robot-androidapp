.class public final synthetic Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/exceptions/CheckedUtil$Func0Rt;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/lang/func/Func0;

.field public final synthetic f$1:Lcn/hutool/core/lang/func/Supplier1;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/lang/func/Func0;Lcn/hutool/core/lang/func/Supplier1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda5;->f$0:Lcn/hutool/core/lang/func/Func0;

    iput-object p2, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda5;->f$1:Lcn/hutool/core/lang/func/Supplier1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda5;->f$0:Lcn/hutool/core/lang/func/Func0;

    iget-object v1, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda5;->f$1:Lcn/hutool/core/lang/func/Supplier1;

    invoke-static {v0, v1}, Lcn/hutool/core/exceptions/CheckedUtil;->lambda$uncheck$e9066ec4$1(Lcn/hutool/core/lang/func/Func0;Lcn/hutool/core/lang/func/Supplier1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
