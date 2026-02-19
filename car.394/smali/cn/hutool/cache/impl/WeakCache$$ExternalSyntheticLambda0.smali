.class public final synthetic Lcn/hutool/cache/impl/WeakCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-static {p1}, Lcn/hutool/cache/impl/WeakCache;->$r8$lambda$9Z5LV-q5jGlgrlCABfHI2MuMWQo(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/lang/mutable/Mutable;

    return-object p1
.end method
