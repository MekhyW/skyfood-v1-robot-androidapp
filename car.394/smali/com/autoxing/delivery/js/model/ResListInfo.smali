.class public Lcom/autoxing/delivery/js/model/ResListInfo;
.super Ljava/lang/Object;
.source "ResListInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;
    }
.end annotation


# static fields
.field public static final FILE_SUBFIX_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CLOUD_ZIP:I = 0x1

.field public static final TYPE_LOCAL_ANIMATION:I = 0x5

.field public static final TYPE_LOCAL_APK:I = 0x6

.field public static final TYPE_LOCAL_BGM:I = 0x4

.field public static final TYPE_LOCAL_FILE:I = 0x3

.field public static final TYPE_LOCAL_ZIP:I = 0x2


# instance fields
.field private count:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/js/model/ZipInfo;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/autoxing/delivery/js/model/ResListInfo;->FILE_SUBFIX_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;

    sget-object v3, Lcom/autoxing/delivery/constant/Configs;->localResFilePath:Ljava/lang/String;

    sget-object v4, Lcom/autoxing/delivery/constant/Configs;->validMeidaSubfixArr:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;

    sget-object v3, Lcom/autoxing/delivery/constant/Configs;->localResFilePath:Ljava/lang/String;

    sget-object v4, Lcom/autoxing/delivery/constant/Configs;->validBGMSubfixArr:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;

    sget-object v3, Lcom/autoxing/delivery/constant/Configs;->localAnimationFilePath:Ljava/lang/String;

    sget-object v4, Lcom/autoxing/delivery/constant/Configs;->validAnimationSubfixArr:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;

    sget-object v3, Lcom/autoxing/delivery/constant/Configs;->localApkZipPath:Ljava/lang/String;

    sget-object v4, Lcom/autoxing/delivery/constant/Configs;->validApknSubfixArr:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/autoxing/delivery/js/model/ResListInfo;->count:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/js/model/ZipInfo;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ResListInfo;->list:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/autoxing/delivery/js/model/ResListInfo;->type:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/autoxing/delivery/js/model/ResListInfo;->count:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/js/model/ZipInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ResListInfo;->list:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/autoxing/delivery/js/model/ResListInfo;->type:I

    return-void
.end method
