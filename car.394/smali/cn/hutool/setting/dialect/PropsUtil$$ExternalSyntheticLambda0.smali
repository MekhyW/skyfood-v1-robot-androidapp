.class public final synthetic Lcn/hutool/setting/dialect/PropsUtil$$ExternalSyntheticLambda0;
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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcn/hutool/setting/dialect/PropsUtil;->lambda$get$0(Ljava/lang/String;)Lcn/hutool/setting/dialect/Props;

    move-result-object p1

    return-object p1
.end method
