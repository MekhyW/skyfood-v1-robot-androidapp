.class public interface abstract Lcom/reglink/widgets/IBuiltinWidgetCreator;
.super Ljava/lang/Object;
.source "IBuiltinWidgetCreator.java"


# virtual methods
.method public abstract create(Lcom/reglink/widgets/BuiltinWidgetConfig;)Lcom/reglink/widgets/IBuiltinWidget;
.end method

.method public abstract getWidgets()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/reglink/widgets/BuiltinWidgetConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onCreate(Landroid/content/Context;Lcom/reglink/widgets/HostConfig;)V
.end method
