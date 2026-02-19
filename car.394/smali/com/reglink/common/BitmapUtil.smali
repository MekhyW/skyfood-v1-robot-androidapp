.class public Lcom/reglink/common/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 96
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private static blur(Landroid/content/Context;Landroid/graphics/Bitmap;IIFZ)Landroid/graphics/Bitmap;
    .locals 5

    .line 214
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    if-nez p5, :cond_0

    .line 218
    new-instance p5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p5, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 220
    :cond_0
    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5}, Landroid/graphics/Rect;-><init>()V

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, p2

    div-int/lit8 v3, v3, 0x2

    iput v3, p5, Landroid/graphics/Rect;->left:I

    .line 222
    iget v3, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iput v3, p5, Landroid/graphics/Rect;->right:I

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p3

    div-int/lit8 v3, v3, 0x2

    iput v3, p5, Landroid/graphics/Rect;->top:I

    .line 224
    iget v3, p5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iput v3, p5, Landroid/graphics/Rect;->bottom:I

    .line 226
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p2, 0x0

    .line 227
    invoke-virtual {v1, p1, p5, v3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 228
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 229
    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p2

    .line 231
    invoke-virtual {p2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 232
    invoke-virtual {p2, p4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 233
    invoke-virtual {p2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 234
    invoke-virtual {p1, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 235
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    return-object v0
.end method

.method public static blur(Landroid/graphics/Bitmap;Landroid/view/View;F)V
    .locals 5

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 284
    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 286
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 287
    invoke-virtual {v2, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 288
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 289
    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 290
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 291
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    return-void
.end method

.method public static blur2(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 241
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/reglink/common/BitmapUtil;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;IIFZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object v6

    :catch_0
    move-exception p0

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "blur2:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapUtil"

    invoke-static {p1, p0}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static blurCenter(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 265
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/reglink/common/BitmapUtil;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;IIFZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    .line 267
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/reglink/common/BitmapUtil;->blur2(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-object v6

    :catch_1
    move-exception p0

    move-object p1, v6

    :goto_0
    if-eqz p1, :cond_1

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 274
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "blurCenter:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapUtil"

    invoke-static {p1, p0}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static centerBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5

    .line 100
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 105
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 106
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 107
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p2

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 108
    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 110
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x0

    .line 111
    invoke-virtual {v1, p0, v2, v3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static copyBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 255
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 256
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 257
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 258
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 259
    invoke-virtual {v2, p0, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static createCircleImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 77
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 85
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 86
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 84
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static fitCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 148
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 154
    div-int v3, p2, p1

    div-int v4, v2, v1

    sub-int/2addr v3, v4

    const/16 v4, 0x1f

    const/high16 v5, -0x1000000

    if-lez v3, :cond_1

    mul-int v3, p2, v1

    .line 162
    div-int/2addr v3, p1

    .line 164
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    sub-int/2addr p1, v1

    .line 165
    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    sub-int/2addr p2, v3

    .line 167
    div-int/lit8 p2, p2, 0x2

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    add-int/2addr v3, p2

    .line 170
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 172
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 174
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 176
    invoke-virtual {p1, p0, v0, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 178
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-object v6

    :cond_1
    mul-int v3, v2, p1

    .line 189
    div-int/2addr v3, p2

    .line 191
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    sub-int/2addr p1, v3

    .line 193
    div-int/lit8 p1, p1, 0x2

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    add-int/2addr v3, p1

    sub-int/2addr p2, v2

    .line 195
    div-int/lit8 p2, p2, 0x2

    add-int/2addr v2, p2

    .line 198
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 200
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 204
    invoke-virtual {p1, p0, v0, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 206
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-object v6

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v0, 0x0

    .line 296
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 298
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 301
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-object v1
.end method

.method public static recycleBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 41
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5

    .line 116
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 120
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    .line 121
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 123
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 124
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 125
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x0

    .line 126
    invoke-virtual {v1, p0, v2, v4, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static resourceToBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 37
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static saveBmp(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 13

    if-nez p0, :cond_0

    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 315
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    .line 317
    rem-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    .line 321
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 323
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 325
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, v3, 0x36

    int-to-long v5, p1

    const/16 p1, 0x4d42

    .line 333
    invoke-static {v4, p1}, Lcom/reglink/common/BitmapUtil;->writeWord(Ljava/io/FileOutputStream;I)V

    .line 334
    invoke-static {v4, v5, v6}, Lcom/reglink/common/BitmapUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    const/4 p1, 0x0

    .line 335
    invoke-static {v4, p1}, Lcom/reglink/common/BitmapUtil;->writeWord(Ljava/io/FileOutputStream;I)V

    .line 336
    invoke-static {v4, p1}, Lcom/reglink/common/BitmapUtil;->writeWord(Ljava/io/FileOutputStream;I)V

    const-wide/16 v5, 0x36

    .line 337
    invoke-static {v4, v5, v6}, Lcom/reglink/common/BitmapUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    int-to-long v5, v0

    int-to-long v7, v1

    const-wide/16 v9, 0x28

    .line 351
    invoke-static {v4, v9, v10}, Lcom/reglink/common/BitmapUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 352
    invoke-static {v4, v5, v6}, Lcom/reglink/common/BitmapUtil;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 353
    invoke-static {v4, v7, v8}, Lcom/reglink/common/BitmapUtil;->writeLong(Ljava/io/FileOutputStream;J)V

    const/4 v5, 0x1

    .line 354
    invoke-static {v4, v5}, Lcom/reglink/common/BitmapUtil;->writeWord(Ljava/io/FileOutputStream;I)V

    const/16 v5, 0x18

    .line 355
    invoke-static {v4, v5}, Lcom/reglink/common/BitmapUtil;->writeWord(Ljava/io/FileOutputStream;I)V

    const-wide/16 v5, 0x0

    .line 356
    invoke-static {v4, v5, v6}, Lcom/reglink/common/BitmapUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 357
    invoke-static {v4, v5, v6}, Lcom/reglink/common/BitmapUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 358
    invoke-static {v4, v5, v6}, Lcom/reglink/common/BitmapUtil;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 359
    invoke-static {v4, v5, v6}, Lcom/reglink/common/BitmapUtil;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 360
    invoke-static {v4, v5, v6}, Lcom/reglink/common/BitmapUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 361
    invoke-static {v4, v5, v6}, Lcom/reglink/common/BitmapUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 363
    new-array v3, v3, [B

    .line 364
    rem-int/lit8 v5, v0, 0x4

    add-int/2addr v2, v5

    add-int/lit8 v5, v1, -0x1

    move v6, p1

    :goto_0
    if-ge v6, v1, :cond_3

    move v7, p1

    move v8, v7

    :goto_1
    if-ge v7, v0, :cond_2

    .line 367
    invoke-virtual {p0, v7, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    mul-int v10, v5, v2

    add-int/2addr v10, v8

    .line 368
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    add-int/lit8 v11, v10, 0x1

    .line 369
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v3, v11

    add-int/lit8 v10, v10, 0x2

    .line 370
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 374
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 375
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 380
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 378
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected static writeDword(Ljava/io/FileOutputStream;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/16 v3, 0x8

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    const/16 v3, 0x10

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    const/16 v3, 0x18

    shr-long/2addr p1, v3

    and-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x3

    aput-byte p1, v0, p2

    .line 397
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method protected static writeLong(Ljava/io/FileOutputStream;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/16 v3, 0x8

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    const/16 v3, 0x10

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    const/16 v3, 0x18

    shr-long/2addr p1, v3

    and-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x3

    aput-byte p1, v0, p2

    .line 406
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method protected static writeWord(Ljava/io/FileOutputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 388
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method
