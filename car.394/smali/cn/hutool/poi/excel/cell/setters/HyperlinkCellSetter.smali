.class public Lcn/hutool/poi/excel/cell/setters/HyperlinkCellSetter;
.super Ljava/lang/Object;
.source "HyperlinkCellSetter.java"

# interfaces
.implements Lcn/hutool/poi/excel/cell/CellSetter;


# instance fields
.field private final value:Lorg/apache/poi/ss/usermodel/Hyperlink;


# direct methods
.method constructor <init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/hutool/poi/excel/cell/setters/HyperlinkCellSetter;->value:Lorg/apache/poi/ss/usermodel/Hyperlink;

    return-void
.end method


# virtual methods
.method public setValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/setters/HyperlinkCellSetter;->value:Lorg/apache/poi/ss/usermodel/Hyperlink;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    .line 29
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/setters/HyperlinkCellSetter;->value:Lorg/apache/poi/ss/usermodel/Hyperlink;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/lang/String;)V

    return-void
.end method
