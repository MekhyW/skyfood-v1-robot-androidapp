.class public final Lcom/reglink/appad/AppAdProvider$AppAd;
.super Ljava/lang/Object;
.source "AppAdProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/appad/AppAdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppAd"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "app_ad"

.field public static final action:Ljava/lang/String; = "action_"

.field public static final ad_id:Ljava/lang/String; = "ad_id"

.field public static final expire:Ljava/lang/String; = "expire"

.field public static final extra:Ljava/lang/String; = "extra"

.field public static final height:Ljava/lang/String; = "height"

.field public static final img_url:Ljava/lang/String; = "img_url"

.field public static final push_time:Ljava/lang/String; = "push_time"

.field public static final seq_id:Ljava/lang/String; = "seq_id"

.field public static final title:Ljava/lang/String; = "title"

.field public static final userdata:Ljava/lang/String; = "userdata"

.field public static final width:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.reglink.services.db.ad/appad"

    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/reglink/appad/AppAdProvider$AppAd;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
