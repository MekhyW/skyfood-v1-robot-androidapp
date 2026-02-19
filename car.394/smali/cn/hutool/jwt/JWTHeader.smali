.class public Lcn/hutool/jwt/JWTHeader;
.super Lcn/hutool/jwt/Claims;
.source "JWTHeader.java"


# static fields
.field public static ALGORITHM:Ljava/lang/String; = "alg"

.field public static CONTENT_TYPE:Ljava/lang/String; = "cty"

.field public static KEY_ID:Ljava/lang/String; = "kid"

.field public static TYPE:Ljava/lang/String; = "typ"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/hutool/jwt/Claims;-><init>()V

    return-void
.end method


# virtual methods
.method public addHeaders(Ljava/util/Map;)Lcn/hutool/jwt/JWTHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcn/hutool/jwt/JWTHeader;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWTHeader;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setKeyId(Ljava/lang/String;)Lcn/hutool/jwt/JWTHeader;
    .locals 1

    .line 44
    sget-object v0, Lcn/hutool/jwt/JWTHeader;->KEY_ID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcn/hutool/jwt/JWTHeader;->setClaim(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
