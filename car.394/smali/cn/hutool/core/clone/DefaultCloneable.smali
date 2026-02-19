.class public interface abstract Lcn/hutool/core/clone/DefaultCloneable;
.super Ljava/lang/Object;
.source "DefaultCloneable.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# virtual methods
.method public clone0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    const-string v0, "clone"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Lcn/hutool/core/clone/CloneRuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/clone/CloneRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
