.class public final synthetic Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda10;->f$0:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$$ExternalSyntheticLambda10;->f$0:Lcom/alibaba/fastjson/JSONArray;

    invoke-static {v0, p1}, Lcom/autoxing/delivery/MainActivity;->lambda$actionFromJsReadFileList$6(Lcom/alibaba/fastjson/JSONArray;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
