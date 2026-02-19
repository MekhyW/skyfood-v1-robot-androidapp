.class public Lcn/hutool/jwt/JWTPayload;
.super Lcn/hutool/jwt/Claims;
.source "JWTPayload.java"

# interfaces
.implements Lcn/hutool/jwt/RegisteredPayload;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/jwt/Claims;",
        "Lcn/hutool/jwt/RegisteredPayload<",
        "Lcn/hutool/jwt/JWTPayload;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/hutool/jwt/Claims;-><init>()V

    return-void
.end method


# virtual methods
.method public addPayloads(Ljava/util/Map;)Lcn/hutool/jwt/JWTPayload;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcn/hutool/jwt/JWTPayload;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWTPayload;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/JWTPayload;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcn/hutool/jwt/JWTPayload;->setClaim(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/RegisteredPayload;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcn/hutool/jwt/JWTPayload;->setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/JWTPayload;

    move-result-object p1

    return-object p1
.end method
