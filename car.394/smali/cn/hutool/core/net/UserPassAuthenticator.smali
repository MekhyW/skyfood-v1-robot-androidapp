.class public Lcn/hutool/core/net/UserPassAuthenticator;
.super Ljava/net/Authenticator;
.source "UserPassAuthenticator.java"


# instance fields
.field private final pass:[C

.field private final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/hutool/core/net/UserPassAuthenticator;->user:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcn/hutool/core/net/UserPassAuthenticator;->pass:[C

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 3

    .line 30
    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, Lcn/hutool/core/net/UserPassAuthenticator;->user:Ljava/lang/String;

    iget-object v2, p0, Lcn/hutool/core/net/UserPassAuthenticator;->pass:[C

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    return-object v0
.end method
