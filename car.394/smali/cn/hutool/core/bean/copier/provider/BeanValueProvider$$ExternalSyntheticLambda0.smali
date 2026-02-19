.class public final synthetic Lcn/hutool/core/bean/copier/provider/BeanValueProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcn/hutool/core/lang/Editor;


# direct methods
.method public synthetic constructor <init>(ZLcn/hutool/core/lang/Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/hutool/core/bean/copier/provider/BeanValueProvider$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcn/hutool/core/bean/copier/provider/BeanValueProvider$$ExternalSyntheticLambda0;->f$1:Lcn/hutool/core/lang/Editor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcn/hutool/core/bean/copier/provider/BeanValueProvider$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcn/hutool/core/bean/copier/provider/BeanValueProvider$$ExternalSyntheticLambda0;->f$1:Lcn/hutool/core/lang/Editor;

    invoke-static {v0, v1, p1}, Lcn/hutool/core/bean/copier/provider/BeanValueProvider;->lambda$new$9d0d83f1$1(ZLcn/hutool/core/lang/Editor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
