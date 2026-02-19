.class public final synthetic Lcn/hutool/core/util/EscapeUtil$$ExternalSyntheticLambda1;
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

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1}, Lcn/hutool/core/util/EscapeUtil;->lambda$escapeAll$1(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method
