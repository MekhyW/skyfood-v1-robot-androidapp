.class public final synthetic Lcn/hutool/core/bean/BeanInfoCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/lang/func/Func0;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/lang/func/Func0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/bean/BeanInfoCache$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/lang/func/Func0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/bean/BeanInfoCache$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/lang/func/Func0;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, p1}, Lcn/hutool/core/bean/BeanInfoCache;->lambda$getPropertyDescriptorMap$0(Lcn/hutool/core/lang/func/Func0;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
