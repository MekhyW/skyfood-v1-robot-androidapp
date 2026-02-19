.class public final synthetic Lcn/hutool/core/comparator/FieldsComparator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/comparator/FieldsComparator$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcn/hutool/core/comparator/FieldsComparator$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/comparator/FieldsComparator$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lcn/hutool/core/comparator/FieldsComparator$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Class;

    invoke-static {v0, v1, p1, p2}, Lcn/hutool/core/comparator/FieldsComparator;->lambda$new$0([Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
