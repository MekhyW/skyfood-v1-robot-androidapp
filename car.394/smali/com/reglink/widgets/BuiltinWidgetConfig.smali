.class public Lcom/reglink/widgets/BuiltinWidgetConfig;
.super Ljava/lang/Object;
.source "BuiltinWidgetConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final Size_LARGE:I = 0x3

.field public static final Size_NORMAL:I = 0x2

.field public static final Size_SMALL:I = 0x1

.field public static final Type_Dock:I = 0x2

.field public static final Type_FixedSize:I = 0x4

.field public static final Type_Widget:I = 0x1


# instance fields
.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public creator:Lcom/reglink/widgets/IBuiltinWidgetCreator;

.field public fixedHeight:I

.field public fixedWidth:I

.field public label:Ljava/lang/CharSequence;

.field public preview:Z

.field public providerName:Ljava/lang/String;

.field public size:I

.field public spanX:I

.field public spanY:I

.field public thumb:Landroid/graphics/Bitmap;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->preview:Z

    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->size:I

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->type:I

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->fixedWidth:I

    .line 31
    iput v0, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->fixedHeight:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/reglink/widgets/BuiltinWidgetConfig;
    .locals 4

    .line 35
    new-instance v0, Lcom/reglink/widgets/BuiltinWidgetConfig;

    invoke-direct {v0}, Lcom/reglink/widgets/BuiltinWidgetConfig;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->thumb:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->thumb:Landroid/graphics/Bitmap;

    .line 38
    :cond_0
    iget v1, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->spanY:I

    iput v1, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->spanY:I

    .line 39
    iget v1, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->spanX:I

    iput v1, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->spanX:I

    .line 40
    iget-object v1, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->label:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->label:Ljava/lang/CharSequence;

    .line 41
    iget-object v1, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->creator:Lcom/reglink/widgets/IBuiltinWidgetCreator;

    iput-object v1, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->creator:Lcom/reglink/widgets/IBuiltinWidgetCreator;

    .line 42
    iget-object v1, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->clazz:Ljava/lang/Class;

    iput-object v1, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->clazz:Ljava/lang/Class;

    .line 43
    iget-object v1, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->providerName:Ljava/lang/String;

    iput-object v1, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->providerName:Ljava/lang/String;

    .line 44
    iget-boolean v1, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->preview:Z

    iput-boolean v1, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->preview:Z

    .line 45
    iget v1, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->size:I

    iput v1, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->size:I

    .line 46
    iget v1, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->type:I

    iput v1, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->type:I

    .line 47
    iget v1, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->fixedWidth:I

    iput v1, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->fixedWidth:I

    .line 48
    iget v1, p0, Lcom/reglink/widgets/BuiltinWidgetConfig;->fixedHeight:I

    iput v1, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->fixedHeight:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/reglink/widgets/BuiltinWidgetConfig;->clone()Lcom/reglink/widgets/BuiltinWidgetConfig;

    move-result-object v0

    return-object v0
.end method
