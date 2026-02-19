.class public final synthetic Lcom/autoxing/delivery/js/ws/DataCenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/autoxing/delivery/util/ZipUtils$OnZipListener;


# instance fields
.field public final synthetic f$0:Lcom/autoxing/delivery/js/model/ResEditInfo;

.field public final synthetic f$1:Lcom/autoxing/delivery/js/ws/OnDataCenterListener;


# direct methods
.method public synthetic constructor <init>(Lcom/autoxing/delivery/js/model/ResEditInfo;Lcom/autoxing/delivery/js/ws/OnDataCenterListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autoxing/delivery/js/ws/DataCenter$$ExternalSyntheticLambda0;->f$0:Lcom/autoxing/delivery/js/model/ResEditInfo;

    iput-object p2, p0, Lcom/autoxing/delivery/js/ws/DataCenter$$ExternalSyntheticLambda0;->f$1:Lcom/autoxing/delivery/js/ws/OnDataCenterListener;

    return-void
.end method


# virtual methods
.method public final onProgress(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/DataCenter$$ExternalSyntheticLambda0;->f$0:Lcom/autoxing/delivery/js/model/ResEditInfo;

    iget-object v1, p0, Lcom/autoxing/delivery/js/ws/DataCenter$$ExternalSyntheticLambda0;->f$1:Lcom/autoxing/delivery/js/ws/OnDataCenterListener;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autoxing/delivery/js/ws/DataCenter;->lambda$modifyZipFile$1(Lcom/autoxing/delivery/js/model/ResEditInfo;Lcom/autoxing/delivery/js/ws/OnDataCenterListener;IJ)V

    return-void
.end method
