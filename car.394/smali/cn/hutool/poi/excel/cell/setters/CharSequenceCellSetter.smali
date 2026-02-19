.class public Lcn/hutool/poi/excel/cell/setters/CharSequenceCellSetter;
.super Ljava/lang/Object;
.source "CharSequenceCellSetter.java"

# interfaces
.implements Lcn/hutool/poi/excel/cell/CellSetter;


# instance fields
.field private final value:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/hutool/poi/excel/cell/setters/CharSequenceCellSetter;->value:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public setValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/setters/CharSequenceCellSetter;->value:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/lang/String;)V

    return-void
.end method
