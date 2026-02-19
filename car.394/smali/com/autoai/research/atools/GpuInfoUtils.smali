.class public Lcom/autoai/research/atools/GpuInfoUtils;
.super Ljava/lang/Object;
.source "GpuInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;,
        Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;,
        Lcom/autoai/research/atools/GpuInfoUtils$DemoRenderer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGPUInfo(Landroid/app/Activity;Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;

    invoke-direct {v0, p0, p1}, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;-><init>(Landroid/content/Context;Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;)V

    .line 36
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method
