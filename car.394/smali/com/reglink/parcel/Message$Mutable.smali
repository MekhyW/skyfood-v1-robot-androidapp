.class public final Lcom/reglink/parcel/Message$Mutable;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mutable"
.end annotation


# instance fields
.field message:Lcom/reglink/parcel/Message;


# direct methods
.method public constructor <init>(Lcom/reglink/parcel/Message;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/reglink/parcel/Message$Mutable;->message:Lcom/reglink/parcel/Message;

    return-void
.end method


# virtual methods
.method public setSendPid(I)Lcom/reglink/parcel/Message$Mutable;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/reglink/parcel/Message$Mutable;->message:Lcom/reglink/parcel/Message;

    invoke-static {v0, p1}, Lcom/reglink/parcel/Message;->access$202(Lcom/reglink/parcel/Message;I)I

    return-object p0
.end method

.method public setWhen(J)Lcom/reglink/parcel/Message$Mutable;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/reglink/parcel/Message$Mutable;->message:Lcom/reglink/parcel/Message;

    invoke-static {v0, p1, p2}, Lcom/reglink/parcel/Message;->access$102(Lcom/reglink/parcel/Message;J)J

    return-object p0
.end method
