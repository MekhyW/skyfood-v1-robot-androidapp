.class public Lcom/reglink/common/AssetUtil;
.super Ljava/lang/Object;
.source "AssetUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadDrawableNonCached(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 70
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 71
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 72
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 75
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object p1

    .line 76
    invoke-static {p0, v0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 77
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method

.method public static writeAssetToCacheFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 23
    invoke-static {p0, p1, p1, p2}, Lcom/reglink/common/AssetUtil;->writeAssetToCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static writeAssetToCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 2

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p1, v0, p3}, Lcom/reglink/common/AssetUtil;->writeAssetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static writeAssetToFile(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;
    .locals 1

    if-nez p1, :cond_0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 47
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 48
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 52
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result p4

    if-lez p4, :cond_1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p2, v0, p4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 56
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    const-string p1, "AssetUtil"

    const-string p2, "could not extract asset"

    .line 60
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_2

    .line 62
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static writeAssetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-static {p0, v0, p1, p2, p3}, Lcom/reglink/common/AssetUtil;->writeAssetToFile(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static writeAssetToSdcardFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 31
    invoke-static {p0, p1, p1, p2}, Lcom/reglink/common/AssetUtil;->writeAssetToSdcardFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static writeAssetToSdcardFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, p3}, Lcom/reglink/common/AssetUtil;->writeAssetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
