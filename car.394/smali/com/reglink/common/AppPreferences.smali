.class public Lcom/reglink/common/AppPreferences;
.super Ljava/lang/Object;
.source "AppPreferences.java"


# static fields
.field public static final CallGetCmd:Ljava/lang/String; = "get"

.field public static final CallSetCmd:Ljava/lang/String; = "set"

.field public static final KValueInBundle:Ljava/lang/String; = "value"

.field public static final KValueType:Ljava/lang/String; = "value_type"

.field public static final SettingChangedId:I = 0x1

.field public static final URI:Landroid/net/Uri;

.field public static final ValueType_Bool:I = 0x2

.field public static final ValueType_Bundle:I = 0x4

.field public static final ValueType_Double:I = 0x3

.field public static final ValueType_Int:I = 0x0

.field public static final ValueType_String:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.reglink.services.provider.app_prefs"

    .line 14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/reglink/common/AppPreferences;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x2

    .line 81
    invoke-static {p0, p1, v0}, Lcom/reglink/common/AppPreferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/reglink/common/AppPreferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 144
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBundle(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x4

    .line 93
    invoke-static {p0, p1, v0}, Lcom/reglink/common/AppPreferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p1, "value"

    .line 95
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/reglink/common/AppPreferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p1, "value"

    .line 156
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getDouble(Landroid/content/ContentResolver;Ljava/lang/String;D)D
    .locals 1

    const/4 v0, 0x3

    .line 87
    invoke-static {p0, p1, v0}, Lcom/reglink/common/AppPreferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    const-string p1, "value"

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getDouble(Landroid/content/Context;Ljava/lang/String;D)D
    .locals 1

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/reglink/common/AppPreferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    const-string p1, "value"

    .line 150
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, p1, v0}, Lcom/reglink/common/AppPreferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 71
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/reglink/common/AppPreferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 132
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 75
    invoke-static {p0, p1, v0}, Lcom/reglink/common/AppPreferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string p1, "value"

    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/reglink/common/AppPreferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string p1, "value"

    .line 138
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_type"

    .line 32
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    sget-object p2, Lcom/reglink/common/AppPreferences;->URI:Landroid/net/Uri;

    const-string v1, "get"

    invoke-virtual {p0, p2, v1, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 51
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x2

    .line 52
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/AppPreferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 112
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/AppPreferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putBundle(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 63
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p2, 0x4

    .line 64
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/AppPreferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putBundle(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 124
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x4

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/AppPreferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putDouble(Landroid/content/ContentResolver;Ljava/lang/String;D)V
    .locals 2

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 57
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 p2, 0x3

    .line 58
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/AppPreferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putDouble(Landroid/content/Context;Ljava/lang/String;D)V
    .locals 2

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 118
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x3

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/AppPreferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 2

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 39
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 40
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/AppPreferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 100
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/AppPreferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 45
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 46
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/AppPreferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 106
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/AppPreferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method private static putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "value_type"

    .line 27
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    sget-object p3, Lcom/reglink/common/AppPreferences;->URI:Landroid/net/Uri;

    const-string v0, "set"

    invoke-virtual {p0, p3, v0, p1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
