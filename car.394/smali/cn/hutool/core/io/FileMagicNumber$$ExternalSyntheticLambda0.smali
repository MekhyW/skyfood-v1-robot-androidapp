.class public final synthetic Lcn/hutool/core/io/FileMagicNumber$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/io/FileMagicNumber$$ExternalSyntheticLambda0;->f$0:[B

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/io/FileMagicNumber$$ExternalSyntheticLambda0;->f$0:[B

    check-cast p1, Lcn/hutool/core/io/FileMagicNumber;

    invoke-static {v0, p1}, Lcn/hutool/core/io/FileMagicNumber;->lambda$getMagicNumber$0([BLcn/hutool/core/io/FileMagicNumber;)Z

    move-result p1

    return p1
.end method
