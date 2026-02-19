.class public Lcn/hutool/core/codec/Base62Codec$Base62Encoder;
.super Ljava/lang/Object;
.source "Base62Codec.java"

# interfaces
.implements Lcn/hutool/core/codec/Encoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/codec/Base62Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base62Encoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/codec/Encoder<",
        "[B[B>;"
    }
.end annotation


# static fields
.field private static final GMP:[B

.field public static GMP_ENCODER:Lcn/hutool/core/codec/Base62Codec$Base62Encoder;

.field private static final INVERTED:[B

.field public static INVERTED_ENCODER:Lcn/hutool/core/codec/Base62Codec$Base62Encoder;


# instance fields
.field private final alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x3e

    new-array v1, v0, [B

    .line 78
    fill-array-data v1, :array_0

    sput-object v1, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;->GMP:[B

    new-array v0, v0, [B

    .line 92
    fill-array-data v0, :array_1

    sput-object v0, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;->INVERTED:[B

    .line 103
    new-instance v2, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;

    invoke-direct {v2, v1}, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;-><init>([B)V

    sput-object v2, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;->GMP_ENCODER:Lcn/hutool/core/codec/Base62Codec$Base62Encoder;

    .line 104
    new-instance v1, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;

    invoke-direct {v1, v0}, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;-><init>([B)V

    sput-object v1, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;->INVERTED_ENCODER:Lcn/hutool/core/codec/Base62Codec$Base62Encoder;

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;->alphabet:[B

    return-void
.end method

.method static synthetic access$200()[B
    .locals 1

    .line 74
    sget-object v0, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;->GMP:[B

    return-object v0
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 74
    sget-object v0, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;->INVERTED:[B

    return-object v0
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;->encode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public encode([B)[B
    .locals 2

    const/16 v0, 0x100

    const/16 v1, 0x3e

    .line 119
    invoke-static {p1, v0, v1}, Lcn/hutool/core/codec/Base62Codec;->access$000([BII)[B

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;->alphabet:[B

    invoke-static {p1, v0}, Lcn/hutool/core/codec/Base62Codec;->access$100([B[B)[B

    move-result-object p1

    return-object p1
.end method
