.class public Lcom/reglink/common/DeviceProfile;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# static fields
.field public static final CallGetCmd:Ljava/lang/String; = "get"

.field public static final CallSetCmd:Ljava/lang/String; = "set"

.field public static final KValueInBundle:Ljava/lang/String; = "value"

.field public static final KValueType:Ljava/lang/String; = "value_type"

.field private static final TAG:Ljava/lang/String; = "DeviceProfile"

.field public static final URI:Landroid/net/Uri;

.field public static final ValueCmd_AddToSet:I = 0xf

.field public static final ValueCmd_Dec:I = 0xb

.field public static final ValueCmd_Delete:I = 0xc

.field public static final ValueCmd_Inc:I = 0xa

.field public static final ValueCmd_Max:I = 0xd

.field public static final ValueCmd_Min:I = 0xe

.field public static final ValueCmd_Push:I = 0x10

.field public static final ValueType_Bool:I = 0x3

.field public static final ValueType_Double:I = 0x4

.field public static final ValueType_Int:I = 0x1

.field public static final ValueType_JSON:I = 0x5

.field public static final ValueType_String:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.reglink.data.provider.device_profile"

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/reglink/common/DeviceProfile;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 216
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p2, 0xf

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static dec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v1, 0xb

    invoke-static {p0, p1, v0, v1}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v1, 0xc

    invoke-static {p0, p1, v0, v1}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method private static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x3

    .line 115
    invoke-static {p0, p1, v0}, Lcom/reglink/common/DeviceProfile;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/reglink/common/DeviceProfile;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 171
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getDouble(Landroid/content/ContentResolver;Ljava/lang/String;D)D
    .locals 1

    const/4 v0, 0x4

    .line 121
    invoke-static {p0, p1, v0}, Lcom/reglink/common/DeviceProfile;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    const-string p1, "value"

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getDouble(Landroid/content/Context;Ljava/lang/String;D)D
    .locals 1

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/reglink/common/DeviceProfile;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    const-string p1, "value"

    .line 177
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-static {p0, p1, v0}, Lcom/reglink/common/DeviceProfile;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/reglink/common/DeviceProfile;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 159
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 109
    invoke-static {p0, p1, v0}, Lcom/reglink/common/DeviceProfile;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string p1, "value"

    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/reglink/common/DeviceProfile;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string p1, "value"

    .line 165
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_type"

    .line 62
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    :try_start_0
    sget-object p2, Lcom/reglink/common/DeviceProfile;->URI:Landroid/net/Uri;

    const-string v1, "get"

    invoke-virtual {p0, p2, v1, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "DeviceProfile"

    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static inc(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v1, 0xa

    invoke-static {p0, p1, v0, v1}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static max(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 198
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p2, 0xd

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static min(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 204
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p2, 0xe

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static push(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 210
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p2, 0x10

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method private static putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "value_type"

    .line 50
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    :try_start_0
    sget-object p3, Lcom/reglink/common/DeviceProfile;->URI:Landroid/net/Uri;

    const-string v0, "set"

    invoke-virtual {p0, p3, v0, p1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DeviceProfile"

    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 86
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x3

    .line 87
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 140
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x3

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static setDouble(Landroid/content/ContentResolver;Ljava/lang/String;D)V
    .locals 2

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 92
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 p2, 0x4

    .line 93
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static setDouble(Landroid/content/Context;Ljava/lang/String;D)V
    .locals 2

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 146
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x4

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static setInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 2

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 74
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, 0x1

    .line 75
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 128
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static setJSON(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 98
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    .line 99
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static setJSON(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 152
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x5

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static setString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 80
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 81
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 134
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/DeviceProfile;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method
