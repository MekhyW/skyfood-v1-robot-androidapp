.class public Lcn/hutool/core/convert/impl/OptConverter;
.super Lcn/hutool/core/convert/AbstractConverter;
.source "OptConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/convert/AbstractConverter<",
        "Lcn/hutool/core/lang/Opt<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcn/hutool/core/convert/AbstractConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertInternal(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcn/hutool/core/lang/Opt<",
            "*>;"
        }
    .end annotation

    .line 18
    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic convertInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcn/hutool/core/convert/impl/OptConverter;->convertInternal(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    return-object p1
.end method
