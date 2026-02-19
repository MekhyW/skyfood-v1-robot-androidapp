.class public final synthetic Lcn/hutool/poi/excel/ExcelWriter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/map/multi/Table;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/map/multi/Table;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/poi/excel/ExcelWriter$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/core/map/multi/Table;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/core/map/multi/Table;

    invoke-static {v0, p1, p2}, Lcn/hutool/poi/excel/ExcelWriter;->lambda$aliasTable$0(Lcn/hutool/core/map/multi/Table;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
