.class public final synthetic Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/codec/Hashids;

.field public final synthetic f$1:[C

.field public final synthetic f$2:C

.field public final synthetic f$3:Ljava/lang/StringBuilder;

.field public final synthetic f$4:[J


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/codec/Hashids;[CCLjava/lang/StringBuilder;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;->f$0:Lcn/hutool/core/codec/Hashids;

    iput-object p2, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;->f$1:[C

    iput-char p3, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;->f$2:C

    iput-object p4, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;->f$3:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;->f$4:[J

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget-object v0, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;->f$0:Lcn/hutool/core/codec/Hashids;

    iget-object v1, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;->f$1:[C

    iget-char v2, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;->f$2:C

    iget-object v3, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;->f$3:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;->f$4:[J

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcn/hutool/core/codec/Hashids;->lambda$encode$2$cn-hutool-core-codec-Hashids([CCLjava/lang/StringBuilder;[JI)V

    return-void
.end method
