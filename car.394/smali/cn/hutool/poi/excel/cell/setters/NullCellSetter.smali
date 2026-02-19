.class public Lcn/hutool/poi/excel/cell/setters/NullCellSetter;
.super Ljava/lang/Object;
.source "NullCellSetter.java"

# interfaces
.implements Lcn/hutool/poi/excel/cell/CellSetter;


# static fields
.field public static final INSTANCE:Lcn/hutool/poi/excel/cell/setters/NullCellSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcn/hutool/poi/excel/cell/setters/NullCellSetter;

    invoke-direct {v0}, Lcn/hutool/poi/excel/cell/setters/NullCellSetter;-><init>()V

    sput-object v0, Lcn/hutool/poi/excel/cell/setters/NullCellSetter;->INSTANCE:Lcn/hutool/poi/excel/cell/setters/NullCellSetter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    const-string v0, ""

    .line 19
    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/lang/String;)V

    return-void
.end method
