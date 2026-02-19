.class public final synthetic Lcn/hutool/core/util/EnumUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/util/EnumUtil$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcn/hutool/core/util/EnumUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/util/EnumUtil$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lcn/hutool/core/util/EnumUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {v0, v1, p1}, Lcn/hutool/core/util/EnumUtil;->lambda$getFieldBy$1(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Enum;)Z

    move-result p1

    return p1
.end method
