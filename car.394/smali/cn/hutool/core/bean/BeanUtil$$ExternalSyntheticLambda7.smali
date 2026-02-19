.class public final synthetic Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/lang/func/Func0;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Class;

    iput-boolean p2, p0, Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda7;->f$1:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Class;

    iget-boolean v1, p0, Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda7;->f$1:Z

    invoke-static {v0, v1}, Lcn/hutool/core/bean/BeanUtil;->lambda$getPropertyDescriptorMap$58f3b7cb$1(Ljava/lang/Class;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
