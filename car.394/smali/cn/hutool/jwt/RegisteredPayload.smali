.class public interface abstract Lcn/hutool/jwt/RegisteredPayload;
.super Ljava/lang/Object;
.source "RegisteredPayload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/hutool/jwt/RegisteredPayload<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final AUDIENCE:Ljava/lang/String; = "aud"

.field public static final EXPIRES_AT:Ljava/lang/String; = "exp"

.field public static final ISSUED_AT:Ljava/lang/String; = "iat"

.field public static final ISSUER:Ljava/lang/String; = "iss"

.field public static final JWT_ID:Ljava/lang/String; = "jti"

.field public static final NOT_BEFORE:Ljava/lang/String; = "nbf"

.field public static final SUBJECT:Ljava/lang/String; = "sub"


# virtual methods
.method public varargs setAudience([Ljava/lang/String;)Lcn/hutool/jwt/RegisteredPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "aud"

    .line 70
    invoke-interface {p0, v0, p1}, Lcn/hutool/jwt/RegisteredPayload;->setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/RegisteredPayload;

    move-result-object p1

    return-object p1
.end method

.method public setExpiresAt(Ljava/util/Date;)Lcn/hutool/jwt/RegisteredPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TT;"
        }
    .end annotation

    const-string v0, "exp"

    .line 81
    invoke-interface {p0, v0, p1}, Lcn/hutool/jwt/RegisteredPayload;->setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/RegisteredPayload;

    move-result-object p1

    return-object p1
.end method

.method public setIssuedAt(Ljava/util/Date;)Lcn/hutool/jwt/RegisteredPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TT;"
        }
    .end annotation

    const-string v0, "iat"

    .line 101
    invoke-interface {p0, v0, p1}, Lcn/hutool/jwt/RegisteredPayload;->setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/RegisteredPayload;

    move-result-object p1

    return-object p1
.end method

.method public setIssuer(Ljava/lang/String;)Lcn/hutool/jwt/RegisteredPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "iss"

    .line 50
    invoke-interface {p0, v0, p1}, Lcn/hutool/jwt/RegisteredPayload;->setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/RegisteredPayload;

    move-result-object p1

    return-object p1
.end method

.method public setJWTId(Ljava/lang/String;)Lcn/hutool/jwt/RegisteredPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "jti"

    .line 111
    invoke-interface {p0, v0, p1}, Lcn/hutool/jwt/RegisteredPayload;->setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/RegisteredPayload;

    move-result-object p1

    return-object p1
.end method

.method public setNotBefore(Ljava/util/Date;)Lcn/hutool/jwt/RegisteredPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TT;"
        }
    .end annotation

    const-string v0, "nbf"

    .line 91
    invoke-interface {p0, v0, p1}, Lcn/hutool/jwt/RegisteredPayload;->setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/RegisteredPayload;

    move-result-object p1

    return-object p1
.end method

.method public abstract setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/RegisteredPayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public setSubject(Ljava/lang/String;)Lcn/hutool/jwt/RegisteredPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "sub"

    .line 60
    invoke-interface {p0, v0, p1}, Lcn/hutool/jwt/RegisteredPayload;->setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/RegisteredPayload;

    move-result-object p1

    return-object p1
.end method
