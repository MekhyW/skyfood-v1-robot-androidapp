.class public Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate;
.super Lcn/hutool/extra/template/AbstractTemplate;
.source "JetbrickTemplate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final rawTemplate:Ljetbrick/template/JetTemplate;


# direct methods
.method public constructor <init>(Ljetbrick/template/JetTemplate;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/hutool/extra/template/AbstractTemplate;-><init>()V

    .line 41
    iput-object p1, p0, Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate;->rawTemplate:Ljetbrick/template/JetTemplate;

    return-void
.end method

.method public static wrap(Ljetbrick/template/JetTemplate;)Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate;

    invoke-direct {v0, p0}, Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate;-><init>(Ljetbrick/template/JetTemplate;)V

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

    .line 52
    new-instance v0, Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate$2;

    invoke-direct {v0, p0}, Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate$2;-><init>(Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate;)V

    invoke-static {v0, p1}, Lcn/hutool/core/convert/Convert;->convert(Lcn/hutool/core/lang/TypeReference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 53
    iget-object v0, p0, Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate;->rawTemplate:Ljetbrick/template/JetTemplate;

    invoke-interface {v0, p1, p2}, Ljetbrick/template/JetTemplate;->render(Ljava/util/Map;Ljava/io/OutputStream;)V

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

    .line 46
    new-instance v0, Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate$1;

    invoke-direct {v0, p0}, Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate$1;-><init>(Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate;)V

    invoke-static {v0, p1}, Lcn/hutool/core/convert/Convert;->convert(Lcn/hutool/core/lang/TypeReference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 47
    iget-object v0, p0, Lcn/hutool/extra/template/engine/jetbrick/JetbrickTemplate;->rawTemplate:Ljetbrick/template/JetTemplate;

    invoke-interface {v0, p1, p2}, Ljetbrick/template/JetTemplate;->render(Ljava/util/Map;Ljava/io/Writer;)V

    return-void
.end method
