.class Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
.super Ljava/lang/Object;
.source "Draft_6455.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/java_websocket/drafts/Draft_6455;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslatedPayloadMetaData"
.end annotation


# instance fields
.field private payloadLength:I

.field private realPackageSize:I

.field final synthetic this$0:Lorg/java_websocket/drafts/Draft_6455;


# direct methods
.method constructor <init>(Lorg/java_websocket/drafts/Draft_6455;II)V
    .locals 0

    .line 1083
    iput-object p1, p0, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->this$0:Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput p2, p0, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->payloadLength:I

    .line 1085
    iput p3, p0, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->realPackageSize:I

    return-void
.end method

.method static synthetic access$0(Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;)I
    .locals 0

    .line 1075
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->getPayloadLength()I

    move-result p0

    return p0
.end method

.method static synthetic access$1(Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;)I
    .locals 0

    .line 1079
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->getRealPackageSize()I

    move-result p0

    return p0
.end method

.method private getPayloadLength()I
    .locals 1

    .line 1076
    iget v0, p0, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->payloadLength:I

    return v0
.end method

.method private getRealPackageSize()I
    .locals 1

    .line 1080
    iget v0, p0, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->realPackageSize:I

    return v0
.end method
