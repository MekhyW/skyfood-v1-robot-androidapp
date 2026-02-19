.class public final synthetic Lcn/hutool/core/exceptions/ExceptionUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/lang/Matcher;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/exceptions/ExceptionUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final match(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/exceptions/ExceptionUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/StackTraceElement;

    invoke-static {v0, p1}, Lcn/hutool/core/exceptions/ExceptionUtil;->lambda$getStackElement$0(Ljava/lang/String;Ljava/lang/StackTraceElement;)Z

    move-result p1

    return p1
.end method
