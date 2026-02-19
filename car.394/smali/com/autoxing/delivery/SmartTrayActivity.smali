.class public Lcom/autoxing/delivery/SmartTrayActivity;
.super Landroid/app/Activity;
.source "SmartTrayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartTrayActivity"


# instance fields
.field private etTextView:Landroid/widget/EditText;

.field private mOnSmartTrayListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Lcom/autoxing/delivery/SmartTrayActivity$1;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/SmartTrayActivity$1;-><init>(Lcom/autoxing/delivery/SmartTrayActivity;)V

    iput-object v0, p0, Lcom/autoxing/delivery/SmartTrayActivity;->mOnSmartTrayListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->stop()V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object p1, p0, Lcom/autoxing/delivery/SmartTrayActivity;->etTextView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->beginCheckSmartTrayStatus(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f07002a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001d

    .line 20
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/SmartTrayActivity;->setContentView(I)V

    const p1, 0x7f07003c

    .line 21
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/SmartTrayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/autoxing/delivery/SmartTrayActivity;->etTextView:Landroid/widget/EditText;

    const p1, 0x7f07002a

    .line 22
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/SmartTrayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07002b

    .line 23
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/SmartTrayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/autoxing/delivery/SmartTrayActivity;->mOnSmartTrayListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;

    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->setListener(Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;)V

    .line 25
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->start()V

    return-void
.end method
