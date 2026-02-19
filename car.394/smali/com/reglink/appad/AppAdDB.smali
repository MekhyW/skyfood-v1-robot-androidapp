.class public Lcom/reglink/appad/AppAdDB;
.super Ljava/lang/Object;
.source "AppAdDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/appad/AppAdDB$AppAdBitmapCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryAppAd(Landroid/content/Context;Ljava/lang/String;)Lcom/reglink/appad/AppAdBean;
    .locals 7

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/reglink/appad/AppAdProvider$AppAd;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "extra"

    const-string v2, "push_time"

    const-string v3, "img_url"

    const-string v4, "expire"

    const-string v5, "action_"

    filled-new-array {v3, v4, v5, p0, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_id=?"

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const-string v5, "_id desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 26
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 28
    new-instance v0, Lcom/reglink/appad/AppAdBean;

    invoke-direct {v0}, Lcom/reglink/appad/AppAdBean;-><init>()V

    .line 29
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reglink/appad/AppAdBean;->setImgUrl(Ljava/lang/String;)V

    .line 30
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/reglink/appad/AppAdBean;->setExpire(J)V

    const/4 p0, 0x2

    .line 31
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/reglink/appad/AppAdBean;->setAction(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 32
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/reglink/appad/AppAdBean;->setExtra(Ljava/lang/String;)V

    .line 36
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method
