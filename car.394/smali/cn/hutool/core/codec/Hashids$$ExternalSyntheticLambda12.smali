.class public final synthetic Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/codec/Hashids;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/codec/Hashids;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda12;->f$0:Lcn/hutool/core/codec/Hashids;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda12;->f$0:Lcn/hutool/core/codec/Hashids;

    invoke-virtual {v0, p1}, Lcn/hutool/core/codec/Hashids;->lambda$new$0$cn-hutool-core-codec-Hashids(I)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method
