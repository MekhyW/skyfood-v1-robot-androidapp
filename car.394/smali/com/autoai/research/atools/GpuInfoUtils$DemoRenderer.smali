.class Lcom/autoai/research/atools/GpuInfoUtils$DemoRenderer;
.super Ljava/lang/Object;
.source "GpuInfoUtils.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoai/research/atools/GpuInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DemoRenderer"
.end annotation


# instance fields
.field private infoResult:Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;


# direct methods
.method public constructor <init>(Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/autoai/research/atools/GpuInfoUtils$DemoRenderer;->infoResult:Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .line 57
    iget-object p2, p0, Lcom/autoai/research/atools/GpuInfoUtils$DemoRenderer;->infoResult:Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;

    if-eqz p2, :cond_0

    .line 58
    new-instance p2, Lcom/autoai/research/atools/model/GPUInfo;

    invoke-direct {p2}, Lcom/autoai/research/atools/model/GPUInfo;-><init>()V

    const/16 v0, 0x1f01

    .line 59
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/autoai/research/atools/model/GPUInfo;->setGlRenderer(Ljava/lang/String;)V

    .line 60
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/autoai/research/atools/model/GPUInfo;->setGlVendor(Ljava/lang/String;)V

    const/16 v0, 0x1f02

    .line 61
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/autoai/research/atools/model/GPUInfo;->setGlVersion(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/autoai/research/atools/GpuInfoUtils$DemoRenderer;->infoResult:Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;

    invoke-interface {p1, p2}, Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;->onGPUInfo(Lcom/autoai/research/atools/model/GPUInfo;)V

    :cond_0
    return-void
.end method
