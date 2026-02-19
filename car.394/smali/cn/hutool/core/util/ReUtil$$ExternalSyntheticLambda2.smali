.class public final synthetic Lcn/hutool/core/util/ReUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/lang/mutable/MutableObj;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/lang/mutable/MutableObj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/util/ReUtil$$ExternalSyntheticLambda2;->f$0:Lcn/hutool/core/lang/mutable/MutableObj;

    iput p2, p0, Lcn/hutool/core/util/ReUtil$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/util/ReUtil$$ExternalSyntheticLambda2;->f$0:Lcn/hutool/core/lang/mutable/MutableObj;

    iget v1, p0, Lcn/hutool/core/util/ReUtil$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Ljava/util/regex/Matcher;

    invoke-static {v0, v1, p1}, Lcn/hutool/core/util/ReUtil;->lambda$get$0(Lcn/hutool/core/lang/mutable/MutableObj;ILjava/util/regex/Matcher;)V

    return-void
.end method
