.class public final synthetic Lnet/lingala/zip4j/tasks/AsyncZipTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lnet/lingala/zip4j/tasks/AsyncZipTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$$ExternalSyntheticLambda0;->f$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

    iput-object p2, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$$ExternalSyntheticLambda0;->f$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->lambda$execute$0$net-lingala-zip4j-tasks-AsyncZipTask(Ljava/lang/Object;)V

    return-void
.end method
