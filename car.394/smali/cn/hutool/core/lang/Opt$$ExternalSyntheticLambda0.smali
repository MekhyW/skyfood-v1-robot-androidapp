.class public final synthetic Lcn/hutool/core/lang/Opt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcn/hutool/core/lang/Opt;

    check-cast p2, Ljava/util/function/Consumer;

    invoke-virtual {p1, p2}, Lcn/hutool/core/lang/Opt;->peek(Ljava/util/function/Consumer;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    return-object p1
.end method
