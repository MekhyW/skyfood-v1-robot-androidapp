.class public final synthetic Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/lang/Editor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final edit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->lambda$nullToEmpty$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
