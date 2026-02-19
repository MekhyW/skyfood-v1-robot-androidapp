.class public Lcom/reglink/appad/AppAdBean;
.super Ljava/lang/Object;
.source "AppAdBean.java"


# instance fields
.field private action:Ljava/lang/String;

.field private expire:J

.field private extra:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private resId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/reglink/appad/AppAdBean;->resId:I

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/reglink/appad/AppAdBean;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getExpire()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/reglink/appad/AppAdBean;->expire:J

    return-wide v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/reglink/appad/AppAdBean;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/reglink/appad/AppAdBean;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/reglink/appad/AppAdBean;->resId:I

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/reglink/appad/AppAdBean;->action:Ljava/lang/String;

    return-void
.end method

.method public setExpire(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/reglink/appad/AppAdBean;->expire:J

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/reglink/appad/AppAdBean;->extra:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/reglink/appad/AppAdBean;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setResId(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/reglink/appad/AppAdBean;->resId:I

    return-void
.end method
