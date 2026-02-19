.class public final synthetic Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/lang/Editor;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda4;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final edit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda4;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {v0, v1, p1}, Lcn/hutool/core/bean/BeanUtil;->lambda$trimStrFields$7([Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method
