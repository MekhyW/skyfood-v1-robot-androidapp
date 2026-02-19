.class public Lcom/autoxing/delivery/js/model/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"


# static fields
.field public static final ANIMATION_PREFIX:Ljava/lang/String; = "/animation"

.field public static final APK_PREFIX:Ljava/lang/String; = "/apk"

.field public static final UPLOAD_TYPE_AD_VOICE:I = 0x1

.field public static final UPLOAD_TYPE_ANIMATION:I = 0x2

.field public static final UPLOAD_TYPE_APK:I = 0x3


# instance fields
.field private ssid:Ljava/lang/String;

.field private uploadType:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/autoxing/delivery/js/model/UploadInfo;->ssid:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/autoxing/delivery/js/model/UploadInfo;->url:Ljava/lang/String;

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/autoxing/delivery/js/model/UploadInfo;->uploadType:I

    return-void
.end method


# virtual methods
.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/UploadInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadType()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/autoxing/delivery/js/model/UploadInfo;->uploadType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/UploadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/UploadInfo;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setUploadType(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/autoxing/delivery/js/model/UploadInfo;->uploadType:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/UploadInfo;->url:Ljava/lang/String;

    return-void
.end method
