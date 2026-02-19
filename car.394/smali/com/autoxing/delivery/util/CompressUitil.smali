.class public Lcom/autoxing/delivery/util/CompressUitil;
.super Ljava/lang/Object;
.source "CompressUitil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompressOperate_zip4j"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uncompress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "uncompressZip4j: zipFile_\uff1a"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CompressOperate_zip4j"

    invoke-static {v1, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    :try_start_0
    new-instance v2, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    .line 32
    invoke-virtual {v2}, Lnet/lingala/zip4j/ZipFile;->isValidZipFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 38
    :cond_0
    invoke-virtual {v2}, Lnet/lingala/zip4j/ZipFile;->isEncrypted()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/lingala/zip4j/ZipFile;->setPassword([C)V

    .line 41
    :cond_1
    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/ZipFile;->extractAll(Ljava/lang/String;)V

    const-string p0, "uncompressZip4j: \u89e3\u538b\u6210\u529f"

    .line 42
    invoke-static {v1, p0}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 33
    :cond_2
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "\u538b\u7f29\u6587\u4ef6\u4e0d\u5408\u6cd5,\u53ef\u80fd\u88ab\u635f\u574f."

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "uncompressZip4j: \u5f02\u5e38\uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method
