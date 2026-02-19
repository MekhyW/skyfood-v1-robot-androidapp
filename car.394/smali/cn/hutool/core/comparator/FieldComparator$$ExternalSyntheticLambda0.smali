.class public final synthetic Lcn/hutool/core/comparator/FieldComparator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/comparator/FieldComparator$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/comparator/FieldComparator$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Lcn/hutool/core/comparator/FieldComparator;->lambda$new$0(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
