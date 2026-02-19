.class public Lcom/reglink/parcel/ford/SyncUi;
.super Ljava/lang/Object;
.source "SyncUi.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BTN_FLAG_HIGHLIGHT:I = 0x1

.field public static final BTN_FLAG_MUTE:I = 0x8

.field public static final BTN_FLAG_PAUSE:I = 0x4

.field public static final BTN_FLAG_PLAY:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/ford/SyncUi;",
            ">;"
        }
    .end annotation
.end field

.field public static final Encoding_Ansi:I = 0x0

.field public static final Encoding_Unicode:I = 0x1

.field public static final ITEM_FLAG_DISABLE:I = 0x1

.field public static final ITEM_FLAG_MULTILINE:I = 0x2

.field public static final UiType_Dialog:I = 0x1

.field public static final UiType_Window:I = 0x0

.field public static final Update_All:I = 0x0

.field public static final Update_Buttons:I = 0x2

.field public static final Update_Items:I = 0x1

.field static final fields:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final buttonFlag:[I

.field public buttonMask:I

.field public final buttonTitle:[Ljava/lang/String;

.field public d7:Z

.field public dialogShowTime:I

.field public encoding:I

.field public hasProgressBar:Z

.field public hasTitle:Z

.field public final iconLeft:[I

.field public iconMask:I

.field public final iconRight:[I

.field public isValid:Z

.field public itemAlign:I

.field public itemCount:I

.field public itemFlag:[I

.field public itemMask:I

.field public itemText:[Ljava/lang/String;

.field public listSelected:I

.field public popupListSelected:I

.field public progressBarMax:I

.field public progressBarProgress:I

.field public title:Ljava/lang/String;

.field public titleIcon:I

.field public updateMode:I

.field public windowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/reglink/parcel/ford/SyncUi;->fields:Ljava/util/HashSet;

    const-string v1, "isValid"

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "listSelected"

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "popupListSelected"

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "iconMask"

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "iconLeft"

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "iconRight"

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "dialogShowTime"

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "itemAlign"

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "hasTitle"

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "titleIcon"

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "title"

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "buttonMask"

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "buttonTitle"

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "buttonFlag"

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "itemMask"

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "itemCount"

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "itemText"

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "itemFlag"

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "hasProgressBar"

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "progressBarProgress"

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "progressBarMax"

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "d7"

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "windowType"

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "updateMode"

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "encoding"

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v0, Lcom/reglink/parcel/ford/SyncUi$1;

    invoke-direct {v0}, Lcom/reglink/parcel/ford/SyncUi$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/ford/SyncUi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 37
    iput-object v1, p0, Lcom/reglink/parcel/ford/SyncUi;->iconLeft:[I

    new-array v1, v0, [I

    .line 38
    iput-object v1, p0, Lcom/reglink/parcel/ford/SyncUi;->iconRight:[I

    new-array v1, v0, [Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/reglink/parcel/ford/SyncUi;->buttonTitle:[Ljava/lang/String;

    new-array v1, v0, [I

    .line 47
    iput-object v1, p0, Lcom/reglink/parcel/ford/SyncUi;->buttonFlag:[I

    new-array v1, v0, [Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/reglink/parcel/ford/SyncUi;->itemText:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 52
    iput-object v0, p0, Lcom/reglink/parcel/ford/SyncUi;->itemFlag:[I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 37
    iput-object v1, p0, Lcom/reglink/parcel/ford/SyncUi;->iconLeft:[I

    new-array v1, v0, [I

    .line 38
    iput-object v1, p0, Lcom/reglink/parcel/ford/SyncUi;->iconRight:[I

    new-array v1, v0, [Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/reglink/parcel/ford/SyncUi;->buttonTitle:[Ljava/lang/String;

    new-array v1, v0, [I

    .line 47
    iput-object v1, p0, Lcom/reglink/parcel/ford/SyncUi;->buttonFlag:[I

    new-array v1, v0, [Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/reglink/parcel/ford/SyncUi;->itemText:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 52
    iput-object v0, p0, Lcom/reglink/parcel/ford/SyncUi;->itemFlag:[I

    .line 166
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/ford/SyncUi;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/ford/SyncUi$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/reglink/parcel/ford/SyncUi;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/reglink/parcel/ford/SyncUi;)V
    .locals 2

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p1, v0, v1}, Lcom/reglink/parcel/ford/SyncUi;->writeToParcel(Landroid/os/Parcel;I)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->readFromParcel(Landroid/os/Parcel;)V

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDialogShowTime()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/reglink/parcel/ford/SyncUi;->dialogShowTime:I

    return v0
.end method

.method public getItemAlign()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/reglink/parcel/ford/SyncUi;->itemAlign:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/reglink/parcel/ford/SyncUi;->itemCount:I

    return v0
.end method

.method public getListSelected()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/reglink/parcel/ford/SyncUi;->listSelected:I

    return v0
.end method

.method public getPopupListSelected()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/reglink/parcel/ford/SyncUi;->popupListSelected:I

    return v0
.end method

.method public getProgressBarMax()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/reglink/parcel/ford/SyncUi;->progressBarMax:I

    return v0
.end method

.method public getProgressBarProgress()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/reglink/parcel/ford/SyncUi;->progressBarProgress:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/reglink/parcel/ford/SyncUi;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleIcon()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/reglink/parcel/ford/SyncUi;->titleIcon:I

    return v0
.end method

.method public getUpdateMode()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/reglink/parcel/ford/SyncUi;->updateMode:I

    return v0
.end method

.method public getWindowType()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/reglink/parcel/ford/SyncUi;->windowType:I

    return v0
.end method

.method public isD7()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/reglink/parcel/ford/SyncUi;->d7:Z

    return v0
.end method

.method public isHasProgressBar()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/reglink/parcel/ford/SyncUi;->hasProgressBar:Z

    return v0
.end method

.method public isHasTitle()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/reglink/parcel/ford/SyncUi;->hasTitle:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/reglink/parcel/ford/SyncUi;->isValid:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setIsValid(Z)V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setWindowType(I)V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setUpdateMode(I)V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setListSelected(I)V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setPopupListSelected(I)V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/ford/SyncUi;->iconMask:I

    .line 140
    iget-object v0, p0, Lcom/reglink/parcel/ford/SyncUi;->iconLeft:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 141
    iget-object v0, p0, Lcom/reglink/parcel/ford/SyncUi;->iconRight:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setDialogShowTime(I)V

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setItemAlign(I)V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setHasTitle(Z)V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setTitleIcon(I)V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setTitle(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/ford/SyncUi;->buttonMask:I

    .line 151
    iget-object v0, p0, Lcom/reglink/parcel/ford/SyncUi;->buttonTitle:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/reglink/parcel/ford/SyncUi;->buttonFlag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/ford/SyncUi;->itemMask:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setItemCount(I)V

    .line 156
    iget-object v0, p0, Lcom/reglink/parcel/ford/SyncUi;->itemText:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/reglink/parcel/ford/SyncUi;->itemFlag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setHasProgressBar(Z)V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setProgressBarMax(I)V

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/SyncUi;->setProgressBarProgress(I)V

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Lcom/reglink/parcel/ford/SyncUi;->setD7(Z)V

    return-void
.end method

.method public setD7(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/reglink/parcel/ford/SyncUi;->d7:Z

    return-void
.end method

.method public setDialogShowTime(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/reglink/parcel/ford/SyncUi;->dialogShowTime:I

    return-void
.end method

.method public setHasProgressBar(Z)V
    .locals 0

    .line 270
    iput-boolean p1, p0, Lcom/reglink/parcel/ford/SyncUi;->hasProgressBar:Z

    return-void
.end method

.method public setHasTitle(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/reglink/parcel/ford/SyncUi;->hasTitle:Z

    return-void
.end method

.method public setIsValid(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/reglink/parcel/ford/SyncUi;->isValid:Z

    return-void
.end method

.method public setItemAlign(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/reglink/parcel/ford/SyncUi;->itemAlign:I

    return-void
.end method

.method public setItemCount(I)V
    .locals 0

    .line 262
    iput p1, p0, Lcom/reglink/parcel/ford/SyncUi;->itemCount:I

    return-void
.end method

.method public setListSelected(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/reglink/parcel/ford/SyncUi;->listSelected:I

    return-void
.end method

.method public setPopupListSelected(I)V
    .locals 0

    .line 214
    iput p1, p0, Lcom/reglink/parcel/ford/SyncUi;->popupListSelected:I

    return-void
.end method

.method public setProgressBarMax(I)V
    .locals 0

    .line 286
    iput p1, p0, Lcom/reglink/parcel/ford/SyncUi;->progressBarMax:I

    return-void
.end method

.method public setProgressBarProgress(I)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/reglink/parcel/ford/SyncUi;->progressBarProgress:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/reglink/parcel/ford/SyncUi;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleIcon(I)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/reglink/parcel/ford/SyncUi;->titleIcon:I

    return-void
.end method

.method public setUpdateMode(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/reglink/parcel/ford/SyncUi;->updateMode:I

    return-void
.end method

.method public setWindowType(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/reglink/parcel/ford/SyncUi;->windowType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    .line 321
    sget-object v6, Lcom/reglink/parcel/ford/SyncUi;->fields:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_4

    .line 322
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    .line 323
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, [I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "}"

    const-string v9, "{"

    const-string v10, ","

    if-ne v6, v7, :cond_2

    .line 325
    :try_start_1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    aget v9, v5, v7

    .line 327
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 330
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 331
    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, [Ljava/lang/String;

    if-ne v6, v7, :cond_4

    .line 332
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    array-length v6, v5

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v9, v5, v7

    .line 334
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 337
    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 339
    :cond_4
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    :goto_3
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 344
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_5
    const-string v1, "]"

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->isValid()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->getWindowType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->getUpdateMode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->getListSelected()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 106
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->getPopupListSelected()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    iget p2, p0, Lcom/reglink/parcel/ford/SyncUi;->iconMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object p2, p0, Lcom/reglink/parcel/ford/SyncUi;->iconLeft:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 109
    iget-object p2, p0, Lcom/reglink/parcel/ford/SyncUi;->iconRight:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 110
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->getDialogShowTime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->getItemAlign()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->isHasTitle()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 113
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->getTitleIcon()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget p2, p0, Lcom/reglink/parcel/ford/SyncUi;->buttonMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object p2, p0, Lcom/reglink/parcel/ford/SyncUi;->buttonTitle:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/reglink/parcel/ford/SyncUi;->buttonFlag:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 120
    iget p2, p0, Lcom/reglink/parcel/ford/SyncUi;->itemMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->getItemCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object p2, p0, Lcom/reglink/parcel/ford/SyncUi;->itemText:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/reglink/parcel/ford/SyncUi;->itemFlag:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 125
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->isHasProgressBar()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->getProgressBarMax()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->getProgressBarProgress()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/SyncUi;->isD7()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
