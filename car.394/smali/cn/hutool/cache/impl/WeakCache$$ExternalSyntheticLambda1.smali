.class public final synthetic Lcn/hutool/cache/impl/WeakCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/cache/CacheListener;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/cache/CacheListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/cache/impl/WeakCache$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/cache/CacheListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/cache/impl/WeakCache$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/cache/CacheListener;

    check-cast p1, Ljava/lang/ref/Reference;

    check-cast p2, Lcn/hutool/cache/impl/CacheObj;

    invoke-static {v0, p1, p2}, Lcn/hutool/cache/impl/WeakCache;->lambda$setListener$0(Lcn/hutool/cache/CacheListener;Ljava/lang/ref/Reference;Lcn/hutool/cache/impl/CacheObj;)V

    return-void
.end method
