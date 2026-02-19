.class public final synthetic Lcn/hutool/poi/excel/cell/CellUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/poi/ss/usermodel/Sheet;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/poi/excel/cell/CellUtil$$ExternalSyntheticLambda1;->f$0:Lorg/apache/poi/ss/usermodel/Sheet;

    iput p2, p0, Lcn/hutool/poi/excel/cell/CellUtil$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcn/hutool/poi/excel/cell/CellUtil$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcn/hutool/poi/excel/cell/CellUtil$$ExternalSyntheticLambda1;->f$0:Lorg/apache/poi/ss/usermodel/Sheet;

    iget v1, p0, Lcn/hutool/poi/excel/cell/CellUtil$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcn/hutool/poi/excel/cell/CellUtil$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Lcn/hutool/poi/excel/cell/CellUtil;->lambda$getMergedRegionCell$1(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    return-object v0
.end method
