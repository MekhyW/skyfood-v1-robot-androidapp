.class public final synthetic Lcn/hutool/extra/ssh/SshjSftp$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/extra/ssh/SshjSftp;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/extra/ssh/SshjSftp;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/extra/ssh/SshjSftp$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/extra/ssh/SshjSftp;

    iput-object p2, p0, Lcn/hutool/extra/ssh/SshjSftp$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcn/hutool/extra/ssh/SshjSftp$$ExternalSyntheticLambda1;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/extra/ssh/SshjSftp;

    iget-object v1, p0, Lcn/hutool/extra/ssh/SshjSftp$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcn/hutool/extra/ssh/SshjSftp$$ExternalSyntheticLambda1;->f$2:Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcn/hutool/extra/ssh/SshjSftp;->lambda$recursiveDownloadFolder$0$cn-hutool-extra-ssh-SshjSftp(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
