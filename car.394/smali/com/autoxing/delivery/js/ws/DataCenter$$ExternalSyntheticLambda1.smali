.class public final synthetic Lcom/autoxing/delivery/js/ws/DataCenter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/autoxing/delivery/js/model/ZipInfo;

    check-cast p2, Lcom/autoxing/delivery/js/model/ZipInfo;

    invoke-static {p1, p2}, Lcom/autoxing/delivery/js/ws/DataCenter;->lambda$sortZipInfoList$0(Lcom/autoxing/delivery/js/model/ZipInfo;Lcom/autoxing/delivery/js/model/ZipInfo;)I

    move-result p1

    return p1
.end method
