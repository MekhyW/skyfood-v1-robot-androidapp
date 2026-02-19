.class public final synthetic Lcom/autoxing/delivery/js/JsEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/autoxing/delivery/js/ws/OnDataCenterListener;


# instance fields
.field public final synthetic f$0:Lcom/autoxing/delivery/js/JsEngine;

.field public final synthetic f$1:Lcom/autoxing/delivery/js/model/MsgInfo;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/autoxing/delivery/js/JsEngine;Lcom/autoxing/delivery/js/model/MsgInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autoxing/delivery/js/JsEngine$$ExternalSyntheticLambda0;->f$0:Lcom/autoxing/delivery/js/JsEngine;

    iput-object p2, p0, Lcom/autoxing/delivery/js/JsEngine$$ExternalSyntheticLambda0;->f$1:Lcom/autoxing/delivery/js/model/MsgInfo;

    iput-object p3, p0, Lcom/autoxing/delivery/js/JsEngine$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onZipChanged(Lcom/autoxing/delivery/js/model/ResEditResult;)V
    .locals 3

    iget-object v0, p0, Lcom/autoxing/delivery/js/JsEngine$$ExternalSyntheticLambda0;->f$0:Lcom/autoxing/delivery/js/JsEngine;

    iget-object v1, p0, Lcom/autoxing/delivery/js/JsEngine$$ExternalSyntheticLambda0;->f$1:Lcom/autoxing/delivery/js/model/MsgInfo;

    iget-object v2, p0, Lcom/autoxing/delivery/js/JsEngine$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/autoxing/delivery/js/JsEngine;->lambda$handleData$0$com-autoxing-delivery-js-JsEngine(Lcom/autoxing/delivery/js/model/MsgInfo;Ljava/lang/String;Lcom/autoxing/delivery/js/model/ResEditResult;)V

    return-void
.end method
