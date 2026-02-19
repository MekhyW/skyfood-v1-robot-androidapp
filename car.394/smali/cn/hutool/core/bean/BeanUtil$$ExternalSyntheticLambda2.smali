.class public final synthetic Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/lang/Filter;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/beans/PropertyDescriptor;

    invoke-static {p1}, Lcn/hutool/core/bean/BeanUtil;->lambda$getPropertyDescriptors$0(Ljava/beans/PropertyDescriptor;)Z

    move-result p1

    return p1
.end method
