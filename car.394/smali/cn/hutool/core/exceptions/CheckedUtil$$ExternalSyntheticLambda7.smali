.class public final synthetic Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/exceptions/CheckedUtil$FuncRt;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/lang/func/Func;

.field public final synthetic f$1:Lcn/hutool/core/lang/func/Supplier1;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/lang/func/Func;Lcn/hutool/core/lang/func/Supplier1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda7;->f$0:Lcn/hutool/core/lang/func/Func;

    iput-object p2, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda7;->f$1:Lcn/hutool/core/lang/func/Supplier1;

    return-void
.end method


# virtual methods
.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda7;->f$0:Lcn/hutool/core/lang/func/Func;

    iget-object v1, p0, Lcn/hutool/core/exceptions/CheckedUtil$$ExternalSyntheticLambda7;->f$1:Lcn/hutool/core/lang/func/Supplier1;

    invoke-static {v0, v1, p1}, Lcn/hutool/core/exceptions/CheckedUtil;->lambda$uncheck$6c25eb8b$1(Lcn/hutool/core/lang/func/Func;Lcn/hutool/core/lang/func/Supplier1;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
