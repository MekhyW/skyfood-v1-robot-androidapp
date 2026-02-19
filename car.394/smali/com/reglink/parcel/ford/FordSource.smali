.class public Lcom/reglink/parcel/ford/FordSource;
.super Ljava/lang/Object;
.source "FordSource.java"


# static fields
.field public static final ActionAdd:I = 0x1

.field public static final ActionRemove:I = 0x2

.field public static final ActionSwitch:I = 0x0

.field public static final Android:I = 0x1

.field private static final BASE:I = 0x10

.field public static final CD:I = 0x12

.field public static final Ipod:I = 0x15

.field public static final Navi:I = 0x16

.field public static final Phone:I = 0x17

.field public static final Radio:I = 0x11

.field public static final SYNC:I = 0x14

.field public static final Usb:I = 0x13

.field public static final VR:I = 0x18

.field static final fieldsName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static fordSource:Lcom/reglink/parcel/ford/FordSource;


# instance fields
.field private source:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/reglink/parcel/ford/FordSource;

    invoke-direct {v0}, Lcom/reglink/parcel/ford/FordSource;-><init>()V

    sput-object v0, Lcom/reglink/parcel/ford/FordSource;->fordSource:Lcom/reglink/parcel/ford/FordSource;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/reglink/parcel/ford/FordSource;->fieldsName:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "Android"

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x11

    const-string v2, "Radio"

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x12

    const-string v2, "CD"

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x13

    const-string v2, "Usb"

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x14

    const-string v2, "SYNC"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x15

    const-string v2, "iPod"

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x16

    const-string v2, "Navi"

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x17

    const-string v2, "Phone"

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x18

    const-string v2, "VR"

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 2

    .line 45
    sget-object v0, Lcom/reglink/parcel/ford/FordSource;->fieldsName:Landroid/util/SparseArray;

    const-string v1, "unknown"

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static make(II)I
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, p1, v0}, Lcom/reglink/parcel/ford/FordSource;->make(III)I

    move-result p0

    return p0
.end method

.method public static make(III)I
    .locals 2

    .line 49
    sget-object v0, Lcom/reglink/parcel/ford/FordSource;->fordSource:Lcom/reglink/parcel/ford/FordSource;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/reglink/parcel/ford/FordSource;->fordSource:Lcom/reglink/parcel/ford/FordSource;

    invoke-virtual {v1, p1}, Lcom/reglink/parcel/ford/FordSource;->setAction(I)Lcom/reglink/parcel/ford/FordSource;

    .line 51
    sget-object p1, Lcom/reglink/parcel/ford/FordSource;->fordSource:Lcom/reglink/parcel/ford/FordSource;

    invoke-virtual {p1, p0}, Lcom/reglink/parcel/ford/FordSource;->setSource(I)Lcom/reglink/parcel/ford/FordSource;

    .line 52
    sget-object p0, Lcom/reglink/parcel/ford/FordSource;->fordSource:Lcom/reglink/parcel/ford/FordSource;

    invoke-virtual {p0, p2}, Lcom/reglink/parcel/ford/FordSource;->setFlags(I)Lcom/reglink/parcel/ford/FordSource;

    .line 53
    sget-object p0, Lcom/reglink/parcel/ford/FordSource;->fordSource:Lcom/reglink/parcel/ford/FordSource;

    invoke-virtual {p0}, Lcom/reglink/parcel/ford/FordSource;->build()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public action()I
    .locals 2

    .line 76
    iget v0, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public addFlag(I)Lcom/reglink/parcel/ford/FordSource;
    .locals 1

    .line 90
    iget v0, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    iput p1, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    return-object p0
.end method

.method public build()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    return v0
.end method

.method public clear()Lcom/reglink/parcel/ford/FordSource;
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    return-object p0
.end method

.method public hasFlag(I)Z
    .locals 2

    .line 87
    iget v0, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    shl-int/lit8 v1, p1, 0x10

    and-int/2addr v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAction(I)Lcom/reglink/parcel/ford/FordSource;
    .locals 2

    .line 95
    iget v0, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    iput p1, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    return-object p0
.end method

.method public setFlags(I)Lcom/reglink/parcel/ford/FordSource;
    .locals 2

    .line 83
    iget v0, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    const v1, -0xff0001

    and-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    iput p1, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    return-object p0
.end method

.method public setSource(I)Lcom/reglink/parcel/ford/FordSource;
    .locals 1

    .line 100
    iget v0, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    and-int/lit16 v0, v0, -0x100

    or-int/2addr p1, v0

    iput p1, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    return-object p0
.end method

.method public source()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/reglink/parcel/ford/FordSource;->source:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
