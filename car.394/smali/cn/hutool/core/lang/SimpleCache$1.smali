.class Lcn/hutool/core/lang/SimpleCache$1;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/hutool/core/lang/SimpleCache;->lambda$iterator$1$cn-hutool-core-lang-SimpleCache(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/hutool/core/lang/SimpleCache;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcn/hutool/core/lang/SimpleCache;Ljava/util/Map$Entry;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcn/hutool/core/lang/SimpleCache$1;->this$0:Lcn/hutool/core/lang/SimpleCache;

    iput-object p2, p0, Lcn/hutool/core/lang/SimpleCache$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcn/hutool/core/lang/SimpleCache$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/lang/mutable/Mutable;

    invoke-interface {v0}, Lcn/hutool/core/lang/mutable/Mutable;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcn/hutool/core/lang/SimpleCache$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcn/hutool/core/lang/SimpleCache$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
