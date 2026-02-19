.class public final synthetic Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic f$0:Lcom/autoxing/delivery/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/autoxing/delivery/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda0;->f$0:Lcom/autoxing/delivery/MainActivity;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda0;->f$0:Lcom/autoxing/delivery/MainActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autoxing/delivery/MainActivity;->lambda$playAnimation$7$com-autoxing-delivery-MainActivity(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
