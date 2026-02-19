.class public Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;
.super Ljava/lang/Object;
.source "ResListInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/js/model/ResListInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigInfo"
.end annotation


# instance fields
.field private path:Ljava/lang/String;

.field private subfixArr:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;->path:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;->subfixArr:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSubfixArr()[Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;->subfixArr:[Ljava/lang/String;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setSubfixArr([Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;->subfixArr:[Ljava/lang/String;

    return-void
.end method
