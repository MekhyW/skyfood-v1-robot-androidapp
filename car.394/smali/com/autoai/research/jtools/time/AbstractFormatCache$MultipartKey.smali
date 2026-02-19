.class Lcom/autoai/research/jtools/time/AbstractFormatCache$MultipartKey;
.super Ljava/lang/Object;
.source "AbstractFormatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoai/research/jtools/time/AbstractFormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipartKey"
.end annotation


# instance fields
.field private hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/autoai/research/jtools/time/AbstractFormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 243
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/autoai/research/jtools/time/AbstractFormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    check-cast p1, Lcom/autoai/research/jtools/time/AbstractFormatCache$MultipartKey;

    iget-object p1, p1, Lcom/autoai/research/jtools/time/AbstractFormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 5

    .line 257
    iget v0, p0, Lcom/autoai/research/jtools/time/AbstractFormatCache$MultipartKey;->hashCode:I

    if-nez v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/autoai/research/jtools/time/AbstractFormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    mul-int/lit8 v3, v3, 0x7

    .line 261
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_1
    iput v3, p0, Lcom/autoai/research/jtools/time/AbstractFormatCache$MultipartKey;->hashCode:I

    .line 266
    :cond_2
    iget v0, p0, Lcom/autoai/research/jtools/time/AbstractFormatCache$MultipartKey;->hashCode:I

    return v0
.end method
