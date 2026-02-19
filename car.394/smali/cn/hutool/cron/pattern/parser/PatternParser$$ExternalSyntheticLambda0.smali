.class public final synthetic Lcn/hutool/cron/pattern/parser/PatternParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/cron/pattern/parser/PatternParser$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/cron/pattern/parser/PatternParser$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/cron/pattern/parser/PatternParser;->lambda$parseSingle$0(Ljava/lang/String;)Lcn/hutool/cron/CronException;

    move-result-object v0

    return-object v0
.end method
