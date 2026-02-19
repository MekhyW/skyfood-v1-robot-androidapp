.class public final synthetic Lcn/hutool/http/server/HttpServerRequest$$ExternalSyntheticLambda0;
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

    check-cast p1, Ljava/net/HttpCookie;

    invoke-static {p1}, Lcn/hutool/http/server/HttpServerRequest;->$r8$lambda$DgdevooU7-q42HMT9Vyk5WfywMc(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
