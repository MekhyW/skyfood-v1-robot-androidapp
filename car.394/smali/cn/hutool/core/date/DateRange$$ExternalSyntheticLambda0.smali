.class public final synthetic Lcn/hutool/core/date/DateRange$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/lang/Range$Stepper;


# instance fields
.field public final synthetic f$0:Ljava/util/Date;

.field public final synthetic f$1:Lcn/hutool/core/date/DateField;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/Date;Lcn/hutool/core/date/DateField;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/date/DateRange$$ExternalSyntheticLambda0;->f$0:Ljava/util/Date;

    iput-object p2, p0, Lcn/hutool/core/date/DateRange$$ExternalSyntheticLambda0;->f$1:Lcn/hutool/core/date/DateField;

    iput p3, p0, Lcn/hutool/core/date/DateRange$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final step(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcn/hutool/core/date/DateRange$$ExternalSyntheticLambda0;->f$0:Ljava/util/Date;

    iget-object v1, p0, Lcn/hutool/core/date/DateRange$$ExternalSyntheticLambda0;->f$1:Lcn/hutool/core/date/DateField;

    iget v2, p0, Lcn/hutool/core/date/DateRange$$ExternalSyntheticLambda0;->f$2:I

    move-object v3, p1

    check-cast v3, Lcn/hutool/core/date/DateTime;

    move-object v4, p2

    check-cast v4, Lcn/hutool/core/date/DateTime;

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcn/hutool/core/date/DateRange;->lambda$new$0(Ljava/util/Date;Lcn/hutool/core/date/DateField;ILcn/hutool/core/date/DateTime;Lcn/hutool/core/date/DateTime;I)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    return-object p1
.end method
