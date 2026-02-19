.class public interface abstract Lcn/hutool/jwt/signers/JWTSigner;
.super Ljava/lang/Object;
.source "JWTSigner.java"


# virtual methods
.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public getAlgorithmId()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-interface {p0}, Lcn/hutool/jwt/signers/JWTSigner;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/jwt/signers/AlgorithmUtil;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method
