.class public final synthetic Lcn/hutool/extra/ssh/Sftp$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-static {p1}, Lcn/hutool/extra/ssh/Sftp;->$r8$lambda$nqsoAbpV8RTziPQev47npq2j2o8(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
