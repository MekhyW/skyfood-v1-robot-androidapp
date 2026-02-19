.class public final synthetic Lcn/hutool/crypto/symmetric/SymmetricCrypto$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljavax/crypto/Cipher;

    invoke-static {p1}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->$r8$lambda$g3irwG-CBGeJndh23vYo3CFndF0(Ljavax/crypto/Cipher;)[B

    move-result-object p1

    return-object p1
.end method
