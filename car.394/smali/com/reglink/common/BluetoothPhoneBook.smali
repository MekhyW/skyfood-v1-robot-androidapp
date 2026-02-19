.class public Lcom/reglink/common/BluetoothPhoneBook;
.super Ljava/lang/Object;
.source "BluetoothPhoneBook.java"


# static fields
.field public static final URI:Landroid/net/Uri;


# instance fields
.field contractInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/reglink/parcel/ContractInfo;",
            ">;"
        }
    .end annotation
.end field

.field recentContracts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/reglink/parcel/RecentContract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.reglink.bluetooth.provider.phonebook"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/reglink/common/BluetoothPhoneBook;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/BluetoothPhoneBook;->contractInfos:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/BluetoothPhoneBook;->recentContracts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getPhoneBook()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/reglink/parcel/ContractInfo;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/reglink/common/BluetoothPhoneBook;->contractInfos:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/reglink/common/BluetoothPhoneBook;->URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 26
    invoke-static {p1}, Lcom/reglink/common/IoUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 29
    array-length v3, v1

    invoke-virtual {v2, v1, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 30
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 31
    iget-object v1, p0, Lcom/reglink/common/BluetoothPhoneBook;->contractInfos:Ljava/util/ArrayList;

    sget-object v3, Lcom/reglink/parcel/ContractInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 32
    iget-object v1, p0, Lcom/reglink/common/BluetoothPhoneBook;->recentContracts:Ljava/util/ArrayList;

    sget-object v3, Lcom/reglink/parcel/RecentContract;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 36
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method
