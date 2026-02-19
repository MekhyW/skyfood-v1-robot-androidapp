.class public final enum Lcn/hutool/extra/ssh/ChannelType;
.super Ljava/lang/Enum;
.source "ChannelType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/extra/ssh/ChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/extra/ssh/ChannelType;

.field public static final enum AGENT_FORWARDING:Lcn/hutool/extra/ssh/ChannelType;

.field public static final enum DIRECT_TCPIP:Lcn/hutool/extra/ssh/ChannelType;

.field public static final enum EXEC:Lcn/hutool/extra/ssh/ChannelType;

.field public static final enum FORWARDED_TCPIP:Lcn/hutool/extra/ssh/ChannelType;

.field public static final enum SESSION:Lcn/hutool/extra/ssh/ChannelType;

.field public static final enum SFTP:Lcn/hutool/extra/ssh/ChannelType;

.field public static final enum SHELL:Lcn/hutool/extra/ssh/ChannelType;

.field public static final enum SUBSYSTEM:Lcn/hutool/extra/ssh/ChannelType;

.field public static final enum X11:Lcn/hutool/extra/ssh/ChannelType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 11
    new-instance v0, Lcn/hutool/extra/ssh/ChannelType;

    const-string v1, "session"

    const-string v2, "SESSION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcn/hutool/extra/ssh/ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/hutool/extra/ssh/ChannelType;->SESSION:Lcn/hutool/extra/ssh/ChannelType;

    .line 13
    new-instance v1, Lcn/hutool/extra/ssh/ChannelType;

    const-string v2, "shell"

    const-string v4, "SHELL"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcn/hutool/extra/ssh/ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/hutool/extra/ssh/ChannelType;->SHELL:Lcn/hutool/extra/ssh/ChannelType;

    .line 15
    new-instance v2, Lcn/hutool/extra/ssh/ChannelType;

    const-string v4, "exec"

    const-string v6, "EXEC"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcn/hutool/extra/ssh/ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcn/hutool/extra/ssh/ChannelType;->EXEC:Lcn/hutool/extra/ssh/ChannelType;

    .line 17
    new-instance v4, Lcn/hutool/extra/ssh/ChannelType;

    const-string v6, "x11"

    const-string v8, "X11"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcn/hutool/extra/ssh/ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcn/hutool/extra/ssh/ChannelType;->X11:Lcn/hutool/extra/ssh/ChannelType;

    .line 19
    new-instance v6, Lcn/hutool/extra/ssh/ChannelType;

    const-string v8, "auth-agent@openssh.com"

    const-string v10, "AGENT_FORWARDING"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcn/hutool/extra/ssh/ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcn/hutool/extra/ssh/ChannelType;->AGENT_FORWARDING:Lcn/hutool/extra/ssh/ChannelType;

    .line 21
    new-instance v8, Lcn/hutool/extra/ssh/ChannelType;

    const-string v10, "direct-tcpip"

    const-string v12, "DIRECT_TCPIP"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcn/hutool/extra/ssh/ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcn/hutool/extra/ssh/ChannelType;->DIRECT_TCPIP:Lcn/hutool/extra/ssh/ChannelType;

    .line 23
    new-instance v10, Lcn/hutool/extra/ssh/ChannelType;

    const-string v12, "forwarded-tcpip"

    const-string v14, "FORWARDED_TCPIP"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcn/hutool/extra/ssh/ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcn/hutool/extra/ssh/ChannelType;->FORWARDED_TCPIP:Lcn/hutool/extra/ssh/ChannelType;

    .line 25
    new-instance v12, Lcn/hutool/extra/ssh/ChannelType;

    const-string v14, "sftp"

    const-string v15, "SFTP"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcn/hutool/extra/ssh/ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcn/hutool/extra/ssh/ChannelType;->SFTP:Lcn/hutool/extra/ssh/ChannelType;

    .line 27
    new-instance v14, Lcn/hutool/extra/ssh/ChannelType;

    const-string v15, "subsystem"

    const-string v13, "SUBSYSTEM"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcn/hutool/extra/ssh/ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcn/hutool/extra/ssh/ChannelType;->SUBSYSTEM:Lcn/hutool/extra/ssh/ChannelType;

    const/16 v13, 0x9

    new-array v13, v13, [Lcn/hutool/extra/ssh/ChannelType;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    .line 9
    sput-object v13, Lcn/hutool/extra/ssh/ChannelType;->$VALUES:[Lcn/hutool/extra/ssh/ChannelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcn/hutool/extra/ssh/ChannelType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/extra/ssh/ChannelType;
    .locals 1

    .line 9
    const-class v0, Lcn/hutool/extra/ssh/ChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/extra/ssh/ChannelType;

    return-object p0
.end method

.method public static values()[Lcn/hutool/extra/ssh/ChannelType;
    .locals 1

    .line 9
    sget-object v0, Lcn/hutool/extra/ssh/ChannelType;->$VALUES:[Lcn/hutool/extra/ssh/ChannelType;

    invoke-virtual {v0}, [Lcn/hutool/extra/ssh/ChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/extra/ssh/ChannelType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/hutool/extra/ssh/ChannelType;->value:Ljava/lang/String;

    return-object v0
.end method
