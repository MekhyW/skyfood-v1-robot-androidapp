.class public final Lcom/reglink/common/ReglinkNativeService;
.super Ljava/lang/Object;
.source "ReglinkNativeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/common/ReglinkNativeService$ChildProcess;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.reglink.services.IReglinkNativeService"

.field private static final TAG:Ljava/lang/String; = "ReglinkNativeService"

.field static final TRANSACTION_addService:I = 0x5

.field static final TRANSACTION_cat:I = 0x7

.field static final TRANSACTION_chmod:I = 0x1

.field static final TRANSACTION_createPty:I = 0xf

.field static final TRANSACTION_exec:I = 0x4

.field static final TRANSACTION_fsync:I = 0xe

.field static final TRANSACTION_getParam:I = 0xc

.field static final TRANSACTION_open:I = 0x2

.field static final TRANSACTION_run:I = 0xa

.field static final TRANSACTION_sendCommand:I = 0xd

.field static final TRANSACTION_setCallback:I = 0x6

.field static final TRANSACTION_setParam:I = 0xb

.field static final TRANSACTION_shell:I = 0x9

.field static final TRANSACTION_su:I = 0x3

.field static final TRANSACTION_writeTo:I = 0x8

.field private static instance_:Lcom/reglink/common/ReglinkNativeService;


# instance fields
.field reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;


# direct methods
.method private constructor <init>(Lcom/reglink/services/IReglinkNativeService;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    return-void
.end method

.method private createPty_mod(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5

    const/4 v0, 0x0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v1, :cond_0

    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "com.reglink.services.IReglinkNativeService"

    .line 274
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    invoke-interface {p1}, Lcom/reglink/services/IReglinkNativeService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {p1, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 277
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 278
    invoke-virtual {v2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 280
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    const-string v1, "ReglinkNativeService"

    .line 288
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/reglink/common/ReglinkNativeService;
    .locals 3

    const-class v0, Lcom/reglink/common/ReglinkNativeService;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/reglink/common/ReglinkNativeService;->instance_:Lcom/reglink/common/ReglinkNativeService;

    if-nez v1, :cond_0

    .line 47
    invoke-static {}, Lcom/reglink/common/ReglinkNativeService;->getReglinkNativeService()Lcom/reglink/services/IReglinkNativeService;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/reglink/common/ReglinkNativeService;

    invoke-direct {v2, v1}, Lcom/reglink/common/ReglinkNativeService;-><init>(Lcom/reglink/services/IReglinkNativeService;)V

    sput-object v2, Lcom/reglink/common/ReglinkNativeService;->instance_:Lcom/reglink/common/ReglinkNativeService;

    .line 50
    :cond_0
    sget-object v1, Lcom/reglink/common/ReglinkNativeService;->instance_:Lcom/reglink/common/ReglinkNativeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getReglinkNativeService()Lcom/reglink/services/IReglinkNativeService;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "reglink.native_service"

    .line 55
    invoke-static {v1}, Lcom/reglink/common/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 57
    :cond_0
    invoke-static {v1}, Lcom/reglink/services/IReglinkNativeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IReglinkNativeService;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ReglinkNativeService"

    .line 59
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private open_mod(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .locals 4

    const/4 v0, 0x0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "com.reglink.services.IReglinkNativeService"

    .line 88
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object p1, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    invoke-interface {p1}, Lcom/reglink/services/IReglinkNativeService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-interface {p1, p2, v1, v2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 93
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 94
    invoke-virtual {v2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 96
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    const-string p2, "ReglinkNativeService"

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, p1, p2}, Lcom/reglink/services/IReglinkNativeService;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public cat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0, p1}, Lcom/reglink/services/IReglinkNativeService;->cat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public chmod(Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p1, p2}, Lcom/reglink/services/IReglinkNativeService;->chmod(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public createPty(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Lcom/reglink/common/ReglinkNativeService;->createPty_mod(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    invoke-interface {v0, p1}, Lcom/reglink/services/IReglinkNativeService;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "ReglinkNativeService"

    .line 190
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public fsync()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    .line 259
    :try_start_0
    invoke-interface {v0}, Lcom/reglink/services/IReglinkNativeService;->fsync()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0, p1}, Lcom/reglink/services/IReglinkNativeService;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public initSuccess()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/reglink/common/ReglinkNativeService;->open_mod(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public reconnect()Z
    .locals 1

    .line 65
    invoke-static {}, Lcom/reglink/common/ReglinkNativeService;->getReglinkNativeService()Lcom/reglink/services/IReglinkNativeService;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/reglink/common/ReglinkNativeService$ChildProcess;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0, p1, p2, p3}, Lcom/reglink/common/ReglinkNativeService;->run_mod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/reglink/common/ReglinkNativeService$ChildProcess;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public run_mod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/reglink/common/ReglinkNativeService$ChildProcess;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v1, :cond_0

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 141
    new-instance v3, Lcom/reglink/common/ReglinkNativeService$ChildProcess;

    invoke-direct {v3}, Lcom/reglink/common/ReglinkNativeService$ChildProcess;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "com.reglink.services.IReglinkNativeService"

    .line 143
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    invoke-interface {p1}, Lcom/reglink/services/IReglinkNativeService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/16 p2, 0xa

    const/4 p3, 0x0

    invoke-interface {p1, p2, v1, v2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 148
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 150
    invoke-virtual {v2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, v3, Lcom/reglink/common/ReglinkNativeService$ChildProcess;->fd:Landroid/os/ParcelFileDescriptor;

    .line 151
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v3, Lcom/reglink/common/ReglinkNativeService$ChildProcess;->pid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :catchall_0
    move-exception p1

    .line 153
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    const-string p2, "ReglinkNativeService"

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p1, p2}, Lcom/reglink/services/IReglinkNativeService;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0, p1, p2}, Lcom/reglink/services/IReglinkNativeService;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shell(Ljava/lang/String;)Lcom/reglink/common/ReglinkNativeService$ChildProcess;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Lcom/reglink/common/ReglinkNativeService;->shell_mod(Ljava/lang/String;)Lcom/reglink/common/ReglinkNativeService$ChildProcess;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public shell_mod(Ljava/lang/String;)Lcom/reglink/common/ReglinkNativeService$ChildProcess;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Lcom/reglink/common/ReglinkNativeService$ChildProcess;

    invoke-direct {v1}, Lcom/reglink/common/ReglinkNativeService$ChildProcess;-><init>()V

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "com.reglink.services.IReglinkNativeService"

    .line 116
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    invoke-interface {p1}, Lcom/reglink/services/IReglinkNativeService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {p1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 119
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 120
    invoke-virtual {v3}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, v1, Lcom/reglink/common/ReglinkNativeService$ChildProcess;->fd:Landroid/os/ParcelFileDescriptor;

    .line 121
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v1, Lcom/reglink/common/ReglinkNativeService$ChildProcess;->pid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception p1

    .line 123
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    const-string v1, "ReglinkNativeService"

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public su(Ljava/lang/String;)I
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    invoke-interface {v0, p1}, Lcom/reglink/services/IReglinkNativeService;->su(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "ReglinkNativeService"

    .line 177
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public writeTo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/reglink/common/ReglinkNativeService;->reglinkNativeService:Lcom/reglink/services/IReglinkNativeService;

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0, p1, p2}, Lcom/reglink/services/IReglinkNativeService;->writeTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
