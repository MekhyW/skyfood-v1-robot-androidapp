.class public final synthetic Lcn/hutool/poi/excel/ExcelWriter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/builder/Builder;
.implements Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcn/hutool/core/map/TableMap;

    invoke-direct {v0}, Lcn/hutool/core/map/TableMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
