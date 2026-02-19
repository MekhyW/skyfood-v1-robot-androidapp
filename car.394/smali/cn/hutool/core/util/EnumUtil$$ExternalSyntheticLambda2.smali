.class public final synthetic Lcn/hutool/core/util/EnumUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/lang/func/Func1;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/lang/func/Func1;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/util/EnumUtil$$ExternalSyntheticLambda2;->f$0:Lcn/hutool/core/lang/func/Func1;

    iput-object p2, p0, Lcn/hutool/core/util/EnumUtil$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/util/EnumUtil$$ExternalSyntheticLambda2;->f$0:Lcn/hutool/core/lang/func/Func1;

    iget-object v1, p0, Lcn/hutool/core/util/EnumUtil$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {v0, v1, p1}, Lcn/hutool/core/util/EnumUtil;->lambda$getBy$0(Lcn/hutool/core/lang/func/Func1;Ljava/lang/Object;Ljava/lang/Enum;)Z

    move-result p1

    return p1
.end method
