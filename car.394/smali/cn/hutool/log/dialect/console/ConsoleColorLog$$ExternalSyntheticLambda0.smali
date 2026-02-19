.class public final synthetic Lcn/hutool/log/dialect/console/ConsoleColorLog$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcn/hutool/log/level/Level;

    invoke-static {p1}, Lcn/hutool/log/dialect/console/ConsoleColorLog;->lambda$static$0(Lcn/hutool/log/level/Level;)Lcn/hutool/core/lang/ansi/AnsiColor;

    move-result-object p1

    return-object p1
.end method
