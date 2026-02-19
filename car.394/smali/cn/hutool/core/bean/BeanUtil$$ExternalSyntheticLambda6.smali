.class public final synthetic Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Class;

    invoke-static {v0}, Lcn/hutool/core/bean/BeanUtil;->lambda$toBean$3(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
