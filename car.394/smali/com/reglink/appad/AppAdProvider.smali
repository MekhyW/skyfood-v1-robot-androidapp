.class public Lcom/reglink/appad/AppAdProvider;
.super Ljava/lang/Object;
.source "AppAdProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/appad/AppAdProvider$AppAd;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.reglink.services.db.ad"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.reglink.ad.appad"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.reglink.ad.appad"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
