.class public interface abstract Lcom/autoxing/delivery/websocket/MyWSListener;
.super Ljava/lang/Object;
.source "MyWSListener.java"


# static fields
.field public static final STATUS_CONNECTED:I = 0x1

.field public static final STATUS_DISCONNECTED:I = 0x2

.field public static final STATUS_IN_TRANSFER:I = 0x6

.field public static final STATUS_MONITOR_STATE:I = 0x3

.field public static final STATUS_RESOURCE_CHOOSE_SUCCESS:I = 0x9

.field public static final STATUS_RESOURCE_INVALID:I = 0x8

.field public static final STATUS_START_TRANSFER:I = 0x4

.field public static final STATUS_STOP_TRANSFER:I = 0x5

.field public static final STATUS_TRANSFER_ERROR:I = 0x7


# virtual methods
.method public abstract onStatusChanged(ILjava/lang/String;)V
.end method
