.class public final synthetic Lcn/hutool/extra/ssh/JschSessionPool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/jcraft/jsch/Session;

    invoke-static {p1}, Lcn/hutool/extra/ssh/JschSessionPool;->$r8$lambda$-g9evQtqoGk8lzUHqKZ5YBt8O3c(Lcom/jcraft/jsch/Session;)Z

    move-result p1

    return p1
.end method
