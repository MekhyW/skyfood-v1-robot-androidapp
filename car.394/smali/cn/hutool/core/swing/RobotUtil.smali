.class public Lcn/hutool/core/swing/RobotUtil;
.super Ljava/lang/Object;
.source "RobotUtil.java"


# static fields
.field private static final ROBOT:Ljava/awt/Robot;

.field private static delay:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    :try_start_0
    new-instance v0, Ljava/awt/Robot;

    invoke-direct {v0}, Ljava/awt/Robot;-><init>()V

    sput-object v0, Lcn/hutool/core/swing/RobotUtil;->ROBOT:Ljava/awt/Robot;
    :try_end_0
    .catch Ljava/awt/AWTException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 30
    new-instance v1, Lcn/hutool/core/exceptions/UtilException;

    invoke-direct {v1, v0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureScreen()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 182
    invoke-static {}, Lcn/hutool/core/swing/ScreenUtil;->getRectangle()Ljava/awt/Rectangle;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/swing/RobotUtil;->captureScreen(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static captureScreen(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 203
    sget-object v0, Lcn/hutool/core/swing/RobotUtil;->ROBOT:Ljava/awt/Robot;

    invoke-virtual {v0, p0}, Ljava/awt/Robot;->createScreenCapture(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static captureScreen(Ljava/awt/Rectangle;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 214
    invoke-static {p0}, Lcn/hutool/core/swing/RobotUtil;->captureScreen(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/io/File;)V

    return-object p1
.end method

.method public static captureScreen(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 192
    invoke-static {}, Lcn/hutool/core/swing/RobotUtil;->captureScreen()Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/io/File;)V

    return-object p0
.end method

.method public static click()V
    .locals 2

    .line 83
    sget-object v0, Lcn/hutool/core/swing/RobotUtil;->ROBOT:Ljava/awt/Robot;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/awt/Robot;->mousePress(I)V

    .line 84
    invoke-virtual {v0, v1}, Ljava/awt/Robot;->mouseRelease(I)V

    .line 85
    invoke-static {}, Lcn/hutool/core/swing/RobotUtil;->delay()V

    return-void
.end method

.method public static delay()V
    .locals 2

    .line 222
    sget v0, Lcn/hutool/core/swing/RobotUtil;->delay:I

    if-lez v0, :cond_0

    .line 223
    sget-object v1, Lcn/hutool/core/swing/RobotUtil;->ROBOT:Ljava/awt/Robot;

    invoke-virtual {v1, v0}, Ljava/awt/Robot;->delay(I)V

    :cond_0
    return-void
.end method

.method public static getDelay()I
    .locals 1

    .line 62
    sget v0, Lcn/hutool/core/swing/RobotUtil;->delay:I

    return v0
.end method

.method public static getRobot()Ljava/awt/Robot;
    .locals 1

    .line 41
    sget-object v0, Lcn/hutool/core/swing/RobotUtil;->ROBOT:Ljava/awt/Robot;

    return-object v0
.end method

.method public static varargs keyClick([I)V
    .locals 4

    .line 119
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 120
    sget-object v3, Lcn/hutool/core/swing/RobotUtil;->ROBOT:Ljava/awt/Robot;

    invoke-virtual {v3, v2}, Ljava/awt/Robot;->keyPress(I)V

    .line 121
    invoke-virtual {v3, v2}, Ljava/awt/Robot;->keyRelease(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {}, Lcn/hutool/core/swing/RobotUtil;->delay()V

    return-void
.end method

.method public static keyPressString(Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-static {p0}, Lcn/hutool/core/swing/clipboard/ClipboardUtil;->setStr(Ljava/lang/String;)V

    const/16 p0, 0x56

    .line 133
    invoke-static {p0}, Lcn/hutool/core/swing/RobotUtil;->keyPressWithCtrl(I)V

    .line 134
    invoke-static {}, Lcn/hutool/core/swing/RobotUtil;->delay()V

    return-void
.end method

.method public static keyPressWithAlt(I)V
    .locals 2

    .line 169
    sget-object v0, Lcn/hutool/core/swing/RobotUtil;->ROBOT:Ljava/awt/Robot;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/awt/Robot;->keyPress(I)V

    .line 170
    invoke-virtual {v0, p0}, Ljava/awt/Robot;->keyPress(I)V

    .line 171
    invoke-virtual {v0, p0}, Ljava/awt/Robot;->keyRelease(I)V

    .line 172
    invoke-virtual {v0, v1}, Ljava/awt/Robot;->keyRelease(I)V

    .line 173
    invoke-static {}, Lcn/hutool/core/swing/RobotUtil;->delay()V

    return-void
.end method

.method public static keyPressWithCtrl(I)V
    .locals 2

    .line 156
    sget-object v0, Lcn/hutool/core/swing/RobotUtil;->ROBOT:Ljava/awt/Robot;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/awt/Robot;->keyPress(I)V

    .line 157
    invoke-virtual {v0, p0}, Ljava/awt/Robot;->keyPress(I)V

    .line 158
    invoke-virtual {v0, p0}, Ljava/awt/Robot;->keyRelease(I)V

    .line 159
    invoke-virtual {v0, v1}, Ljava/awt/Robot;->keyRelease(I)V

    .line 160
    invoke-static {}, Lcn/hutool/core/swing/RobotUtil;->delay()V

    return-void
.end method

.method public static keyPressWithShift(I)V
    .locals 2

    .line 143
    sget-object v0, Lcn/hutool/core/swing/RobotUtil;->ROBOT:Ljava/awt/Robot;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/awt/Robot;->keyPress(I)V

    .line 144
    invoke-virtual {v0, p0}, Ljava/awt/Robot;->keyPress(I)V

    .line 145
    invoke-virtual {v0, p0}, Ljava/awt/Robot;->keyRelease(I)V

    .line 146
    invoke-virtual {v0, v1}, Ljava/awt/Robot;->keyRelease(I)V

    .line 147
    invoke-static {}, Lcn/hutool/core/swing/RobotUtil;->delay()V

    return-void
.end method

.method public static mouseMove(II)V
    .locals 1

    .line 73
    sget-object v0, Lcn/hutool/core/swing/RobotUtil;->ROBOT:Ljava/awt/Robot;

    invoke-virtual {v0, p0, p1}, Ljava/awt/Robot;->mouseMove(II)V

    return-void
.end method

.method public static mouseWheel(I)V
    .locals 1

    .line 107
    sget-object v0, Lcn/hutool/core/swing/RobotUtil;->ROBOT:Ljava/awt/Robot;

    invoke-virtual {v0, p0}, Ljava/awt/Robot;->mouseWheel(I)V

    .line 108
    invoke-static {}, Lcn/hutool/core/swing/RobotUtil;->delay()V

    return-void
.end method

.method public static rightClick()V
    .locals 2

    .line 95
    sget-object v0, Lcn/hutool/core/swing/RobotUtil;->ROBOT:Ljava/awt/Robot;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/awt/Robot;->mousePress(I)V

    .line 96
    invoke-virtual {v0, v1}, Ljava/awt/Robot;->mouseRelease(I)V

    .line 97
    invoke-static {}, Lcn/hutool/core/swing/RobotUtil;->delay()V

    return-void
.end method

.method public static setDelay(I)V
    .locals 0

    .line 52
    sput p0, Lcn/hutool/core/swing/RobotUtil;->delay:I

    return-void
.end method
