.class public interface abstract Lcom/reglink/services/IMqttCallback;
.super Ljava/lang/Object;
.source "IMqttCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/IMqttCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract mqttCallback(Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
