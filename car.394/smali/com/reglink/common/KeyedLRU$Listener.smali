.class public interface abstract Lcom/reglink/common/KeyedLRU$Listener;
.super Ljava/lang/Object;
.source "KeyedLRU.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/KeyedLRU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KK:",
        "Ljava/lang/Object;",
        "VV:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onNotFound(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKK;)TVV;"
        }
    .end annotation
.end method

.method public abstract onRemove(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKK;TVV;)V"
        }
    .end annotation
.end method
