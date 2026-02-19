.class public final synthetic Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongBinaryOperator;


# instance fields
.field public final synthetic f$0:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda0;->f$0:[J

    return-void
.end method


# virtual methods
.method public final applyAsLong(JJ)J
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda0;->f$0:[J

    invoke-static {v0, p1, p2, p3, p4}, Lcn/hutool/core/codec/Hashids;->lambda$encode$1([JJJ)J

    move-result-wide p1

    return-wide p1
.end method
