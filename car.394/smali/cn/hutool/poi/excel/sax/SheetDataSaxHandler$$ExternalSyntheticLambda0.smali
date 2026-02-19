.class public final synthetic Lcn/hutool/poi/excel/sax/SheetDataSaxHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0}, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->lambda$setCellType$0(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
