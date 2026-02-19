.class public final synthetic Lcn/hutool/json/JSONArray$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/collection/CollUtil$Consumer;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:Lcn/hutool/json/serialize/JSONWriter;

.field public final synthetic f$1:Lcn/hutool/core/lang/Filter;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/json/serialize/JSONWriter;Lcn/hutool/core/lang/Filter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/json/JSONArray$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/json/serialize/JSONWriter;

    iput-object p2, p0, Lcn/hutool/json/JSONArray$$ExternalSyntheticLambda0;->f$1:Lcn/hutool/core/lang/Filter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lcn/hutool/json/JSONArray$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/json/serialize/JSONWriter;

    iget-object v1, p0, Lcn/hutool/json/JSONArray$$ExternalSyntheticLambda0;->f$1:Lcn/hutool/core/lang/Filter;

    invoke-static {v0, v1, p1, p2}, Lcn/hutool/json/JSONArray;->lambda$write$2cc9e97d$1(Lcn/hutool/json/serialize/JSONWriter;Lcn/hutool/core/lang/Filter;Ljava/lang/Object;I)V

    return-void
.end method
