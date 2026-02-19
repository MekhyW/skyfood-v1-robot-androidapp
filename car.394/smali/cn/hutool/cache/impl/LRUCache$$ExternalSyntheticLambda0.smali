.class public final synthetic Lcn/hutool/cache/impl/LRUCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/cache/impl/LRUCache;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/cache/impl/LRUCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/cache/impl/LRUCache$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/cache/impl/LRUCache;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/cache/impl/LRUCache$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/cache/impl/LRUCache;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcn/hutool/cache/impl/LRUCache;->lambda$new$0$cn-hutool-cache-impl-LRUCache(Ljava/util/Map$Entry;)V

    return-void
.end method
