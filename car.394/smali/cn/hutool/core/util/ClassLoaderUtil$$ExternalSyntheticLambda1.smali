.class public final synthetic Lcn/hutool/core/util/ClassLoaderUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcn/hutool/core/util/ClassLoaderUtil;->lambda$getContextClassLoader$0()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
