.class public final synthetic Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:[C

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>([CLjava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda8;->f$0:[C

    iput-object p2, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda8;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda8;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda8;->f$0:[C

    iget-object v1, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda8;->f$1:Ljava/util/Set;

    iget-object v2, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda8;->f$2:Ljava/util/Set;

    invoke-static {v0, v1, v2, p1}, Lcn/hutool/core/codec/Hashids;->lambda$validateAndFilterAlphabet$12([CLjava/util/Set;Ljava/util/Set;I)V

    return-void
.end method
