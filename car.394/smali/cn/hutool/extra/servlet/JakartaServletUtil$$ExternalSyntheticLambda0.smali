.class public final synthetic Lcn/hutool/extra/servlet/JakartaServletUtil$$ExternalSyntheticLambda0;
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

    check-cast p1, Ljakarta/servlet/http/Cookie;

    invoke-static {p1}, Lcn/hutool/extra/servlet/JakartaServletUtil;->$r8$lambda$Xfwrh7gio8x3Y0OSjJ5Td1KB3mY(Ljakarta/servlet/http/Cookie;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
