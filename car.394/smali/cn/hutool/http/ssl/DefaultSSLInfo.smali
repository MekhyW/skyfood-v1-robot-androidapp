.class public Lcn/hutool/http/ssl/DefaultSSLInfo;
.super Ljava/lang/Object;
.source "DefaultSSLInfo.java"


# static fields
.field public static final DEFAULT_SSF:Ljavax/net/ssl/SSLSocketFactory;

.field public static final TRUST_ANY_HOSTNAME_VERIFIER:Lcn/hutool/http/ssl/TrustAnyHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcn/hutool/http/ssl/TrustAnyHostnameVerifier;

    invoke-direct {v0}, Lcn/hutool/http/ssl/TrustAnyHostnameVerifier;-><init>()V

    sput-object v0, Lcn/hutool/http/ssl/DefaultSSLInfo;->TRUST_ANY_HOSTNAME_VERIFIER:Lcn/hutool/http/ssl/TrustAnyHostnameVerifier;

    .line 25
    sget-boolean v0, Lcn/hutool/core/util/JdkUtil;->IS_ANDROID:Z

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcn/hutool/http/ssl/AndroidSupportSSLFactory;

    invoke-direct {v0}, Lcn/hutool/http/ssl/AndroidSupportSSLFactory;-><init>()V

    sput-object v0, Lcn/hutool/http/ssl/DefaultSSLInfo;->DEFAULT_SSF:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lcn/hutool/http/ssl/DefaultSSLFactory;

    invoke-direct {v0}, Lcn/hutool/http/ssl/DefaultSSLFactory;-><init>()V

    sput-object v0, Lcn/hutool/http/ssl/DefaultSSLInfo;->DEFAULT_SSF:Ljavax/net/ssl/SSLSocketFactory;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
