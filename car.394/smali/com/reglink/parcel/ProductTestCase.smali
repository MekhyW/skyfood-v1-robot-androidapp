.class public Lcom/reglink/parcel/ProductTestCase;
.super Ljava/lang/Object;
.source "ProductTestCase.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/ProductTestCase;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BUTTON:I = 0x0

.field public static final TYPE_CHECKBOX:I = 0x1

.field public static final TYPE_LIST:I = 0x2

.field public static final TYPE_PROGRESS:I = 0x3


# instance fields
.field private checked:Z

.field private group:Ljava/lang/String;

.field private itemSelected:I

.field private items:[Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private maxValue:I

.field private minValue:I

.field private text:Ljava/lang/String;

.field private type:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/reglink/parcel/ProductTestCase$1;

    invoke-direct {v0}, Lcom/reglink/parcel/ProductTestCase$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/ProductTestCase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/reglink/parcel/ProductTestCase;->type:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/reglink/parcel/ProductTestCase;->type:I

    .line 61
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/ProductTestCase;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/ProductTestCase$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/reglink/parcel/ProductTestCase;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/reglink/parcel/ProductTestCase;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getItemSelected()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/reglink/parcel/ProductTestCase;->itemSelected:I

    return v0
.end method

.method public getItems()[Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/reglink/parcel/ProductTestCase;->items:[Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/reglink/parcel/ProductTestCase;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/reglink/parcel/ProductTestCase;->maxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/reglink/parcel/ProductTestCase;->minValue:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/reglink/parcel/ProductTestCase;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/reglink/parcel/ProductTestCase;->type:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/reglink/parcel/ProductTestCase;->value:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/reglink/parcel/ProductTestCase;->checked:Z

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ProductTestCase;->key:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ProductTestCase;->group:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ProductTestCase;->text:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/ProductTestCase;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/ProductTestCase;->value:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/ProductTestCase;->minValue:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/reglink/parcel/ProductTestCase;->maxValue:I

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/ProductTestCase;->itemSelected:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/parcel/ProductTestCase;->items:[Ljava/lang/String;

    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/reglink/parcel/ProductTestCase;->checked:Z

    :goto_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/reglink/parcel/ProductTestCase;->checked:Z

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/reglink/parcel/ProductTestCase;->group:Ljava/lang/String;

    return-void
.end method

.method public setItemSelected(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/reglink/parcel/ProductTestCase;->itemSelected:I

    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/reglink/parcel/ProductTestCase;->items:[Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/reglink/parcel/ProductTestCase;->key:Ljava/lang/String;

    return-void
.end method

.method public setMaxValue(I)V
    .locals 0

    .line 181
    iput p1, p0, Lcom/reglink/parcel/ProductTestCase;->maxValue:I

    return-void
.end method

.method public setMinValue(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/reglink/parcel/ProductTestCase;->minValue:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/reglink/parcel/ProductTestCase;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/reglink/parcel/ProductTestCase;->type:I

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/reglink/parcel/ProductTestCase;->value:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 70
    iget-object p2, p0, Lcom/reglink/parcel/ProductTestCase;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/reglink/parcel/ProductTestCase;->group:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lcom/reglink/parcel/ProductTestCase;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget p2, p0, Lcom/reglink/parcel/ProductTestCase;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget p2, p0, Lcom/reglink/parcel/ProductTestCase;->type:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget p2, p0, Lcom/reglink/parcel/ProductTestCase;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget p2, p0, Lcom/reglink/parcel/ProductTestCase;->minValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget p2, p0, Lcom/reglink/parcel/ProductTestCase;->maxValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    :cond_1
    iget p2, p0, Lcom/reglink/parcel/ProductTestCase;->itemSelected:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object p2, p0, Lcom/reglink/parcel/ProductTestCase;->items:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    iget-boolean p2, p0, Lcom/reglink/parcel/ProductTestCase;->checked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
