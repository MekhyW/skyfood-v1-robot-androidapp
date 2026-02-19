.class public final synthetic Lcn/hutool/core/date/format/GlobalCustomFormat$$ExternalSyntheticLambda2;
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

    check-cast p1, Ljava/util/Date;

    invoke-static {p1}, Lcn/hutool/core/date/format/GlobalCustomFormat;->lambda$static$2(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
