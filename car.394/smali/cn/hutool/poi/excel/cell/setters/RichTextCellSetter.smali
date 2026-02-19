.class public Lcn/hutool/poi/excel/cell/setters/RichTextCellSetter;
.super Ljava/lang/Object;
.source "RichTextCellSetter.java"

# interfaces
.implements Lcn/hutool/poi/excel/cell/CellSetter;


# instance fields
.field private final value:Lorg/apache/poi/ss/usermodel/RichTextString;


# direct methods
.method constructor <init>(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/hutool/poi/excel/cell/setters/RichTextCellSetter;->value:Lorg/apache/poi/ss/usermodel/RichTextString;

    return-void
.end method


# virtual methods
.method public setValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/setters/RichTextCellSetter;->value:Lorg/apache/poi/ss/usermodel/RichTextString;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    return-void
.end method
