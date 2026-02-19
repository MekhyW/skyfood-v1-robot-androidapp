.class Lcom/autoxing/delivery/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/autoxing/delivery/controller/OnWifiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/MainActivity;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$1;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetChanged(I)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$1;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/autoxing/delivery/MainActivity$1$1;-><init>(Lcom/autoxing/delivery/MainActivity$1;I)V

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
