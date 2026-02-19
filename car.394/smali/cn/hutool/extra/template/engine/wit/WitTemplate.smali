.class public Lcn/hutool/extra/template/engine/wit/WitTemplate;
.super Lcn/hutool/extra/template/AbstractTemplate;
.source "WitTemplate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final rawTemplate:Lorg/febit/wit/Template;


# direct methods
.method public constructor <init>(Lorg/febit/wit/Template;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcn/hutool/extra/template/AbstractTemplate;-><init>()V

    .line 39
    iput-object p1, p0, Lcn/hutool/extra/template/engine/wit/WitTemplate;->rawTemplate:Lorg/febit/wit/Template;

    return-void
.end method

.method public static wrap(Lorg/febit/wit/Template;)Lcn/hutool/extra/template/engine/wit/WitTemplate;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcn/hutool/extra/template/engine/wit/WitTemplate;

    invoke-direct {v0, p0}, Lcn/hutool/extra/template/engine/wit/WitTemplate;-><init>(Lorg/febit/wit/Template;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public render(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .line 50
    new-instance v0, Lcn/hutool/extra/template/engine/wit/WitTemplate$2;

    invoke-direct {v0, p0}, Lcn/hutool/extra/template/engine/wit/WitTemplate$2;-><init>(Lcn/hutool/extra/template/engine/wit/WitTemplate;)V

    invoke-static {v0, p1}, Lcn/hutool/core/convert/Convert;->convert(Lcn/hutool/core/lang/TypeReference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 51
    iget-object v0, p0, Lcn/hutool/extra/template/engine/wit/WitTemplate;->rawTemplate:Lorg/febit/wit/Template;

    invoke-virtual {v0, p1, p2}, Lorg/febit/wit/Template;->merge(Ljava/util/Map;Ljava/io/OutputStream;)Lorg/febit/wit/Context;

    return-void
.end method

.method public render(Ljava/util/Map;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .line 44
    new-instance v0, Lcn/hutool/extra/template/engine/wit/WitTemplate$1;

    invoke-direct {v0, p0}, Lcn/hutool/extra/template/engine/wit/WitTemplate$1;-><init>(Lcn/hutool/extra/template/engine/wit/WitTemplate;)V

    invoke-static {v0, p1}, Lcn/hutool/core/convert/Convert;->convert(Lcn/hutool/core/lang/TypeReference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 45
    iget-object v0, p0, Lcn/hutool/extra/template/engine/wit/WitTemplate;->rawTemplate:Lorg/febit/wit/Template;

    invoke-virtual {v0, p1, p2}, Lorg/febit/wit/Template;->merge(Ljava/util/Map;Ljava/io/Writer;)Lorg/febit/wit/Context;

    return-void
.end method
