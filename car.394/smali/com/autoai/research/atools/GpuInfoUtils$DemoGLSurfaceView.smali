.class Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GpuInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoai/research/atools/GpuInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DemoGLSurfaceView"
.end annotation


# instance fields
.field mRenderer:Lcom/autoai/research/atools/GpuInfoUtils$DemoRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;)V
    .locals 8

    .line 78
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0}, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 80
    invoke-virtual/range {v1 .. v7}, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 81
    new-instance v0, Lcom/autoai/research/atools/GpuInfoUtils$DemoRenderer;

    new-instance v1, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView$1;-><init>(Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/autoai/research/atools/GpuInfoUtils$DemoRenderer;-><init>(Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;)V

    iput-object v0, p0, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;->mRenderer:Lcom/autoai/research/atools/GpuInfoUtils$DemoRenderer;

    .line 91
    invoke-virtual {p0, v0}, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method
