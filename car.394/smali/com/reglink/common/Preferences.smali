.class public Lcom/reglink/common/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/common/Preferences$Callback;
    }
.end annotation


# static fields
.field public static final CallGetCmd:Ljava/lang/String; = "get"

.field public static final CallSetCmd:Ljava/lang/String; = "set"

.field public static final KDefValue:Ljava/lang/String; = "def_value"

.field public static final KValueInBundle:Ljava/lang/String; = "value"

.field public static final KValueType:Ljava/lang/String; = "value_type"

.field public static final SettingChangedId:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Preferences"

.field public static final URI:Landroid/net/Uri;

.field public static final ValueType_Bool:I = 0x2

.field public static final ValueType_Bundle:I = 0x4

.field public static final ValueType_Double:I = 0x3

.field public static final ValueType_Int:I = 0x0

.field public static final ValueType_String:I = 0x1


# instance fields
.field private callback:Lcom/reglink/common/Preferences$Callback;

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private locker:Ljava/lang/Object;

.field private messageClient:Lcom/reglink/services/IMessageClient;

.field private messageService:Lcom/reglink/services/IMessageService;

.field private observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/reglink/common/ContentObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.reglink.services.provider.preferences"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/reglink/common/Preferences;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/Preferences;->locker:Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/reglink/common/Preferences;->context:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/reglink/common/Preferences;Lcom/reglink/parcel/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lcom/reglink/common/Preferences;->onDroidMessage(Lcom/reglink/parcel/Message;)V

    return-void
.end method

.method private static buildDefValue(I)Landroid/os/Bundle;
    .locals 3

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_type"

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "def_value"

    .line 50
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static buildDefValue(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_type"

    const/4 v2, 0x4

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "def_value"

    .line 78
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static buildDefValue(Ljava/lang/Double;)Landroid/os/Bundle;
    .locals 4

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_type"

    const/4 v2, 0x3

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "def_value"

    .line 71
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method private static buildDefValue(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_type"

    const/4 v2, 0x1

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "def_value"

    .line 64
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildDefValue(Z)Landroid/os/Bundle;
    .locals 3

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value_type"

    const/4 v2, 0x2

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "def_value"

    .line 57
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    .line 138
    invoke-static {p2}, Lcom/reglink/common/Preferences;->buildDefValue(Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/reglink/common/Preferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 140
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2}, Lcom/reglink/common/Preferences;->buildDefValue(Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/reglink/common/Preferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 201
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBundle(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x0

    .line 150
    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/reglink/common/Preferences;->buildDefValue(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/reglink/common/Preferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string p1, "value"

    .line 152
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/reglink/common/Preferences;->buildDefValue(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/reglink/common/Preferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string p1, "value"

    .line 213
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/reglink/common/Preferences;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public static getDouble(Landroid/content/ContentResolver;Ljava/lang/String;D)D
    .locals 1

    .line 144
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/reglink/common/Preferences;->buildDefValue(Ljava/lang/Double;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/reglink/common/Preferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    const-string p1, "value"

    .line 146
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getDouble(Landroid/content/Context;Ljava/lang/String;D)D
    .locals 1

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/reglink/common/Preferences;->buildDefValue(Ljava/lang/Double;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/reglink/common/Preferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    const-string p1, "value"

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    .line 126
    invoke-static {p2}, Lcom/reglink/common/Preferences;->buildDefValue(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/reglink/common/Preferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2}, Lcom/reglink/common/Preferences;->buildDefValue(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/reglink/common/Preferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "value"

    .line 189
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 132
    invoke-static {p2}, Lcom/reglink/common/Preferences;->buildDefValue(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/reglink/common/Preferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string p1, "value"

    .line 134
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2}, Lcom/reglink/common/Preferences;->buildDefValue(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/reglink/common/Preferences;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string p1, "value"

    .line 195
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 86
    :try_start_0
    sget-object v0, Lcom/reglink/common/Preferences;->URI:Landroid/net/Uri;

    const-string v1, "get"

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Preferences"

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private isContextAvailable()Z
    .locals 1

    .line 234
    invoke-direct {p0}, Lcom/reglink/common/Preferences;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onDroidMessage(Lcom/reglink/parcel/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    invoke-virtual {p1}, Lcom/reglink/parcel/Message;->what()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_2

    .line 349
    invoke-virtual {p1}, Lcom/reglink/parcel/Message;->paramString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 351
    iget-object v0, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/reglink/common/ContentObserver;

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {v2, p1}, Lcom/reglink/common/ContentObserver;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    invoke-virtual {v2, p1}, Lcom/reglink/common/ContentObserver;->dispatchOnChange(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 108
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x2

    .line 109
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/Preferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 169
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/Preferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putBundle(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 120
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p2, 0x4

    .line 121
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/Preferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putBundle(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 181
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x4

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/Preferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putDouble(Landroid/content/ContentResolver;Ljava/lang/String;D)V
    .locals 2

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 114
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 p2, 0x3

    .line 115
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/Preferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putDouble(Landroid/content/Context;Ljava/lang/String;D)V
    .locals 2

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 175
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x3

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/Preferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 2

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 96
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 97
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/Preferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 157
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/Preferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 102
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 103
    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/Preferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 163
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/Preferences;->putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method private static putValue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "value_type"

    .line 39
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    :try_start_0
    sget-object p3, Lcom/reglink/common/Preferences;->URI:Landroid/net/Uri;

    const-string v0, "set"

    invoke-virtual {p0, p3, v0, p1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Preferences"

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/reglink/common/Preferences;->unregisterMessageCallback()V

    .line 296
    iget-object v0, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 298
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 0

    .line 287
    invoke-virtual {p0}, Lcom/reglink/common/Preferences;->unregisterMessageCallback()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 283
    invoke-virtual {p0}, Lcom/reglink/common/Preferences;->registerMessageCallback()Z

    return-void
.end method

.method public registerContentObserver(Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/reglink/common/Preferences;->onResume()V

    .line 303
    iget-object v0, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 305
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/reglink/common/ContentObserver;->setKey(Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerContentObserver([Ljava/lang/String;Lcom/reglink/common/ContentObserver;)V
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/reglink/common/Preferences;->onResume()V

    .line 313
    iget-object v0, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 315
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/reglink/common/ContentObserver;->setKey([Ljava/lang/String;)V

    .line 316
    iget-object p1, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method registerMessageCallback()Z
    .locals 6

    .line 238
    invoke-direct {p0}, Lcom/reglink/common/Preferences;->isContextAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/Preferences;->locker:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/reglink/common/Preferences;->callback:Lcom/reglink/common/Preferences$Callback;

    if-nez v2, :cond_1

    .line 243
    new-instance v2, Lcom/reglink/common/Preferences$Callback;

    invoke-direct {v2, p0}, Lcom/reglink/common/Preferences$Callback;-><init>(Lcom/reglink/common/Preferences;)V

    iput-object v2, p0, Lcom/reglink/common/Preferences;->callback:Lcom/reglink/common/Preferences$Callback;

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/reglink/common/Preferences;->messageClient:Lcom/reglink/services/IMessageClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 247
    :try_start_1
    invoke-static {}, Lcom/reglink/common/ServiceManager;->getDroidService()Lcom/reglink/services/IDroidService;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    .line 248
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/reglink/common/ServiceManager;->getDroidService()Lcom/reglink/services/IDroidService;

    move-result-object v2

    const-string v4, "Message"

    invoke-interface {v2, v4}, Lcom/reglink/services/IDroidService;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/reglink/services/IMessageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IMessageService;

    move-result-object v2

    iput-object v2, p0, Lcom/reglink/common/Preferences;->messageService:Lcom/reglink/services/IMessageService;

    if-eqz v2, :cond_3

    .line 250
    iget-object v4, p0, Lcom/reglink/common/Preferences;->callback:Lcom/reglink/common/Preferences$Callback;

    invoke-interface {v2, v4}, Lcom/reglink/services/IMessageService;->registerCallback(Lcom/reglink/services/IMessageCallback;)Lcom/reglink/services/IMessageClient;

    move-result-object v2

    iput-object v2, p0, Lcom/reglink/common/Preferences;->messageClient:Lcom/reglink/services/IMessageClient;

    if-eqz v2, :cond_3

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/reglink/common/Preferences;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-PreferencesObserver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/reglink/services/IMessageClient;->setId(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/reglink/common/Preferences;->messageClient:Lcom/reglink/services/IMessageClient;

    new-array v4, v3, [I

    const/16 v5, 0xc9

    aput v5, v4, v1

    invoke-interface {v2, v4}, Lcom/reglink/services/IMessageClient;->subscribe([I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    :try_start_4
    monitor-exit v0

    return v3

    .line 264
    :cond_3
    monitor-exit v0

    return v1

    :catch_0
    move-exception v2

    .line 258
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 259
    monitor-exit v0

    return v1

    .line 262
    :cond_4
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 264
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public unregisterContentObserver(Lcom/reglink/common/ContentObserver;)V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 326
    iget-object v2, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 327
    iget-object v2, p0, Lcom/reglink/common/Preferences;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 331
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method unregisterMessageCallback()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/reglink/common/Preferences;->locker:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/Preferences;->messageClient:Lcom/reglink/services/IMessageClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/reglink/common/Preferences;->messageService:Lcom/reglink/services/IMessageService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 272
    :try_start_1
    iget-object v2, p0, Lcom/reglink/common/Preferences;->callback:Lcom/reglink/common/Preferences$Callback;

    invoke-interface {v1, v2}, Lcom/reglink/services/IMessageService;->unregisterCallback(Lcom/reglink/services/IMessageCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 274
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 277
    iput-object v1, p0, Lcom/reglink/common/Preferences;->messageClient:Lcom/reglink/services/IMessageClient;

    .line 278
    iput-object v1, p0, Lcom/reglink/common/Preferences;->messageService:Lcom/reglink/services/IMessageService;

    .line 279
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
