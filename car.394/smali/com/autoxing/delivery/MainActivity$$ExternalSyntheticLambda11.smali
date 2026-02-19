.class public final synthetic Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/autoxing/delivery/js/JsEngine$OnJsEngineListener;


# instance fields
.field public final synthetic f$0:Lcom/autoxing/delivery/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/autoxing/delivery/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda11;->f$0:Lcom/autoxing/delivery/MainActivity;

    return-void
.end method


# virtual methods
.method public final onAnimation(Ljava/lang/String;Lcom/autoxing/delivery/js/model/AnimationInfo;)Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;
    .locals 1

    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda11;->f$0:Lcom/autoxing/delivery/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/autoxing/delivery/MainActivity;->lambda$new$11$com-autoxing-delivery-MainActivity(Ljava/lang/String;Lcom/autoxing/delivery/js/model/AnimationInfo;)Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    move-result-object p1

    return-object p1
.end method
