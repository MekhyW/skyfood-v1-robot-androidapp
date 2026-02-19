.class public final synthetic Lcn/hutool/extra/servlet/ServletUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/lang/func/Func1;
.implements Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljavax/servlet/http/Cookie;

    invoke-static {p1}, Lcn/hutool/extra/servlet/ServletUtil;->$r8$lambda$5LnqokvN2EDRx7vo3d8rHIahd7w(Ljavax/servlet/http/Cookie;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
