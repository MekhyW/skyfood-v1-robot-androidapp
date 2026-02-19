.class public final synthetic Lcn/hutool/core/lang/PatternPool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/lang/PatternPool$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput p2, p0, Lcn/hutool/core/lang/PatternPool$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/lang/PatternPool$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget v1, p0, Lcn/hutool/core/lang/PatternPool$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcn/hutool/core/lang/PatternPool$RegexWithFlag;

    invoke-static {v0, v1, p1}, Lcn/hutool/core/lang/PatternPool;->lambda$get$0(Ljava/lang/String;ILcn/hutool/core/lang/PatternPool$RegexWithFlag;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method
