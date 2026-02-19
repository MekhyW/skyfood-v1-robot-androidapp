.class public Lcom/reglink/common/LruBitmapDrawable;
.super Landroid/util/LruCache;
.source "LruBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 16
    iput-object p1, p0, Lcom/reglink/common/LruBitmapDrawable;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/reglink/common/LruBitmapDrawable;->evictAll()V

    return-void
.end method

.method protected create(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/reglink/common/LruBitmapDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/reglink/common/AssetUtil;->loadDrawableNonCached(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/reglink/common/LruBitmapDrawable;->create(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected entryRemoved(ZLjava/lang/Integer;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 29
    instance-of p1, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_0

    .line 30
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Landroid/graphics/drawable/Drawable;

    check-cast p4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/reglink/common/LruBitmapDrawable;->entryRemoved(ZLjava/lang/Integer;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/reglink/common/LruBitmapDrawable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method protected sizeOf(Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)I
    .locals 0

    if-eqz p2, :cond_0

    .line 38
    instance-of p1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/reglink/common/LruBitmapDrawable;->sizeOf(Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)I

    move-result p1

    return p1
.end method
