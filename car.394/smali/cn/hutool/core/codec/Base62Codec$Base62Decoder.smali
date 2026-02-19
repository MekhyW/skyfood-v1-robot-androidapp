.class public Lcn/hutool/core/codec/Base62Codec$Base62Decoder;
.super Ljava/lang/Object;
.source "Base62Codec.java"

# interfaces
.implements Lcn/hutool/core/codec/Decoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/codec/Base62Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base62Decoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/codec/Decoder<",
        "[B[B>;"
    }
.end annotation


# static fields
.field public static GMP_DECODER:Lcn/hutool/core/codec/Base62Codec$Base62Decoder;

.field public static INVERTED_DECODER:Lcn/hutool/core/codec/Base62Codec$Base62Decoder;


# instance fields
.field private final lookupTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 131
    new-instance v0, Lcn/hutool/core/codec/Base62Codec$Base62Decoder;

    invoke-static {}, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;->access$200()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/hutool/core/codec/Base62Codec$Base62Decoder;-><init>([B)V

    sput-object v0, Lcn/hutool/core/codec/Base62Codec$Base62Decoder;->GMP_DECODER:Lcn/hutool/core/codec/Base62Codec$Base62Decoder;

    .line 132
    new-instance v0, Lcn/hutool/core/codec/Base62Codec$Base62Decoder;

    invoke-static {}, Lcn/hutool/core/codec/Base62Codec$Base62Encoder;->access$300()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/hutool/core/codec/Base62Codec$Base62Decoder;-><init>([B)V

    sput-object v0, Lcn/hutool/core/codec/Base62Codec$Base62Decoder;->INVERTED_DECODER:Lcn/hutool/core/codec/Base62Codec$Base62Decoder;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7b

    new-array v0, v0, [B

    .line 142
    iput-object v0, p0, Lcn/hutool/core/codec/Base62Codec$Base62Decoder;->lookupTable:[B

    const/4 v0, 0x0

    .line 143
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcn/hutool/core/codec/Base62Codec$Base62Decoder;->lookupTable:[B

    aget-byte v2, p1, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 129
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Base62Codec$Base62Decoder;->decode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public decode([B)[B
    .locals 2

    .line 151
    iget-object v0, p0, Lcn/hutool/core/codec/Base62Codec$Base62Decoder;->lookupTable:[B

    invoke-static {p1, v0}, Lcn/hutool/core/codec/Base62Codec;->access$100([B[B)[B

    move-result-object p1

    const/16 v0, 0x3e

    const/16 v1, 0x100

    .line 152
    invoke-static {p1, v0, v1}, Lcn/hutool/core/codec/Base62Codec;->access$000([BII)[B

    move-result-object p1

    return-object p1
.end method
