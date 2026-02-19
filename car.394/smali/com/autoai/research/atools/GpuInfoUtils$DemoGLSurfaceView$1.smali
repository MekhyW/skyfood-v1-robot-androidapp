.class Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView$1;
.super Ljava/lang/Object;
.source "GpuInfoUtils.java"

# interfaces
.implements Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;-><init>(Landroid/content/Context;Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$infoResult:Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;


# direct methods
.method constructor <init>(Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;Landroid/content/Context;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView$1;->this$0:Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;

    iput-object p2, p0, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView$1;->val$infoResult:Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;

    iput-object p3, p0, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGPUInfo(Lcom/autoai/research/atools/model/GPUInfo;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView$1;->val$infoResult:Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1}, Lcom/autoai/research/atools/GpuInfoUtils$GPUInfoListener;->onGPUInfo(Lcom/autoai/research/atools/model/GPUInfo;)V

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView$1;->val$context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 88
    iget-object v0, p0, Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView$1;->this$0:Lcom/autoai/research/atools/GpuInfoUtils$DemoGLSurfaceView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
