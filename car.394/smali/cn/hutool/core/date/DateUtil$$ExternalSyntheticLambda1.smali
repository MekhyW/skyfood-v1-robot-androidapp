.class public final synthetic Lcn/hutool/core/date/DateUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/date/DateUtil$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/date/DateUtil$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    check-cast p1, Lcn/hutool/core/date/DateTime;

    invoke-static {v0, p1}, Lcn/hutool/core/date/DateUtil;->lambda$rangeNotContains$0(Ljava/util/List;Lcn/hutool/core/date/DateTime;)Z

    move-result p1

    return p1
.end method
