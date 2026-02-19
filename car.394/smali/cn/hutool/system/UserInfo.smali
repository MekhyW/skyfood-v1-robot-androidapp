.class public Lcn/hutool/system/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final JAVA_IO_TMPDIR:Ljava/lang/String;

.field private final USER_COUNTRY:Ljava/lang/String;

.field private final USER_DIR:Ljava/lang/String;

.field private final USER_HOME:Ljava/lang/String;

.field private final USER_LANGUAGE:Ljava/lang/String;

.field private final USER_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "user.name"

    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Lcn/hutool/system/SystemUtil;->get(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/system/UserInfo;->fixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/system/UserInfo;->USER_NAME:Ljava/lang/String;

    const-string v0, "user.home"

    .line 23
    invoke-static {v0, v1}, Lcn/hutool/system/SystemUtil;->get(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/system/UserInfo;->fixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/system/UserInfo;->USER_HOME:Ljava/lang/String;

    const-string v0, "user.dir"

    .line 24
    invoke-static {v0, v1}, Lcn/hutool/system/SystemUtil;->get(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/system/UserInfo;->fixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/system/UserInfo;->USER_DIR:Ljava/lang/String;

    const-string v0, "java.io.tmpdir"

    .line 25
    invoke-static {v0, v1}, Lcn/hutool/system/SystemUtil;->get(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/system/UserInfo;->fixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/system/UserInfo;->JAVA_IO_TMPDIR:Ljava/lang/String;

    const-string v0, "user.language"

    .line 26
    invoke-static {v0, v1}, Lcn/hutool/system/SystemUtil;->get(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/system/UserInfo;->USER_LANGUAGE:Ljava/lang/String;

    const-string v0, "user.country"

    .line 29
    invoke-static {v0, v1}, Lcn/hutool/system/SystemUtil;->get(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 31
    invoke-static {v0, v1}, Lcn/hutool/system/SystemUtil;->get(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 33
    :cond_0
    iput-object v2, p0, Lcn/hutool/system/UserInfo;->USER_COUNTRY:Ljava/lang/String;

    return-void
.end method

.method private static fixPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 154
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->addSuffixIfNot(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCountry()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcn/hutool/system/UserInfo;->USER_COUNTRY:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentDir()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcn/hutool/system/UserInfo;->USER_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public final getHomeDir()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/hutool/system/UserInfo;->USER_HOME:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/hutool/system/UserInfo;->USER_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/hutool/system/UserInfo;->USER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public final getTempDir()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcn/hutool/system/UserInfo;->JAVA_IO_TMPDIR:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User Name:        "

    .line 133
    invoke-virtual {p0}, Lcn/hutool/system/UserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/hutool/system/SystemUtil;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "User Home Dir:    "

    .line 134
    invoke-virtual {p0}, Lcn/hutool/system/UserInfo;->getHomeDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/hutool/system/SystemUtil;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "User Current Dir: "

    .line 135
    invoke-virtual {p0}, Lcn/hutool/system/UserInfo;->getCurrentDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/hutool/system/SystemUtil;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "User Temp Dir:    "

    .line 136
    invoke-virtual {p0}, Lcn/hutool/system/UserInfo;->getTempDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/hutool/system/SystemUtil;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "User Language:    "

    .line 137
    invoke-virtual {p0}, Lcn/hutool/system/UserInfo;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/hutool/system/SystemUtil;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "User Country:     "

    .line 138
    invoke-virtual {p0}, Lcn/hutool/system/UserInfo;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/hutool/system/SystemUtil;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
