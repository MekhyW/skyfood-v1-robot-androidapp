.class public Lcn/hutool/log/dialect/console/ConsoleColorLog;
.super Lcn/hutool/log/dialect/console/ConsoleLog;
.source "ConsoleColorLog.java"


# static fields
.field private static final COLOR_CLASSNAME:Lcn/hutool/core/lang/ansi/AnsiColor;

.field private static final COLOR_NONE:Lcn/hutool/core/lang/ansi/AnsiColor;

.field private static final COLOR_TIME:Lcn/hutool/core/lang/ansi/AnsiColor;

.field private static colorFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcn/hutool/log/level/Level;",
            "Lcn/hutool/core/lang/ansi/AnsiColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcn/hutool/core/lang/ansi/AnsiColor;->CYAN:Lcn/hutool/core/lang/ansi/AnsiColor;

    sput-object v0, Lcn/hutool/log/dialect/console/ConsoleColorLog;->COLOR_CLASSNAME:Lcn/hutool/core/lang/ansi/AnsiColor;

    .line 28
    sget-object v0, Lcn/hutool/core/lang/ansi/AnsiColor;->WHITE:Lcn/hutool/core/lang/ansi/AnsiColor;

    sput-object v0, Lcn/hutool/log/dialect/console/ConsoleColorLog;->COLOR_TIME:Lcn/hutool/core/lang/ansi/AnsiColor;

    .line 33
    sget-object v0, Lcn/hutool/core/lang/ansi/AnsiColor;->DEFAULT:Lcn/hutool/core/lang/ansi/AnsiColor;

    sput-object v0, Lcn/hutool/log/dialect/console/ConsoleColorLog;->COLOR_NONE:Lcn/hutool/core/lang/ansi/AnsiColor;

    .line 35
    new-instance v0, Lcn/hutool/log/dialect/console/ConsoleColorLog$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/log/dialect/console/ConsoleColorLog$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/hutool/log/dialect/console/ConsoleColorLog;->colorFactory:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lcn/hutool/log/dialect/console/ConsoleLog;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcn/hutool/log/dialect/console/ConsoleLog;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$static$0(Lcn/hutool/log/level/Level;)Lcn/hutool/core/lang/ansi/AnsiColor;
    .locals 1

    .line 36
    sget-object v0, Lcn/hutool/log/dialect/console/ConsoleColorLog$1;->$SwitchMap$cn$hutool$log$level$Level:[I

    invoke-virtual {p0}, Lcn/hutool/log/level/Level;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 47
    sget-object p0, Lcn/hutool/log/dialect/console/ConsoleColorLog;->COLOR_NONE:Lcn/hutool/core/lang/ansi/AnsiColor;

    return-object p0

    .line 45
    :cond_0
    sget-object p0, Lcn/hutool/core/lang/ansi/AnsiColor;->MAGENTA:Lcn/hutool/core/lang/ansi/AnsiColor;

    return-object p0

    .line 43
    :cond_1
    sget-object p0, Lcn/hutool/core/lang/ansi/AnsiColor;->RED:Lcn/hutool/core/lang/ansi/AnsiColor;

    return-object p0

    .line 41
    :cond_2
    sget-object p0, Lcn/hutool/core/lang/ansi/AnsiColor;->YELLOW:Lcn/hutool/core/lang/ansi/AnsiColor;

    return-object p0

    .line 39
    :cond_3
    sget-object p0, Lcn/hutool/core/lang/ansi/AnsiColor;->GREEN:Lcn/hutool/core/lang/ansi/AnsiColor;

    return-object p0
.end method

.method public static setColorFactory(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcn/hutool/log/level/Level;",
            "Lcn/hutool/core/lang/ansi/AnsiColor;",
            ">;)V"
        }
    .end annotation

    .line 57
    sput-object p0, Lcn/hutool/log/dialect/console/ConsoleColorLog;->colorFactory:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public varargs declared-synchronized log(Ljava/lang/String;Lcn/hutool/log/level/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    monitor-enter p0

    .line 80
    :try_start_0
    invoke-virtual {p0, p2}, Lcn/hutool/log/dialect/console/ConsoleColorLog;->isEnabled(Lcn/hutool/log/level/Level;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 81
    monitor-exit p0

    return-void

    :cond_0
    const/16 p1, 0x8

    :try_start_1
    new-array p1, p1, [Ljava/lang/Object;

    .line 84
    sget-object p3, Lcn/hutool/log/dialect/console/ConsoleColorLog;->COLOR_TIME:Lcn/hutool/core/lang/ansi/AnsiColor;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "[%s]"

    const/4 v1, 0x1

    aput-object p3, p1, v1

    sget-object p3, Lcn/hutool/log/dialect/console/ConsoleColorLog;->colorFactory:Ljava/util/function/Function;

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 v2, 0x2

    aput-object p3, p1, v2

    const-string p3, "[%-5s]%s"

    const/4 v3, 0x3

    aput-object p3, p1, v3

    sget-object p3, Lcn/hutool/log/dialect/console/ConsoleColorLog;->COLOR_CLASSNAME:Lcn/hutool/core/lang/ansi/AnsiColor;

    const/4 v4, 0x4

    aput-object p3, p1, v4

    const-string p3, "%-30s: "

    const/4 v5, 0x5

    aput-object p3, p1, v5

    sget-object p3, Lcn/hutool/log/dialect/console/ConsoleColorLog;->COLOR_NONE:Lcn/hutool/core/lang/ansi/AnsiColor;

    const/4 v6, 0x6

    aput-object p3, p1, v6

    const-string p3, "%s%n"

    const/4 v6, 0x7

    aput-object p3, p1, v6

    invoke-static {p1}, Lcn/hutool/core/lang/ansi/AnsiEncoder;->encode([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 85
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcn/hutool/core/date/DateUtil;->now()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p2}, Lcn/hutool/log/level/Level;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    const-string p2, " - "

    aput-object p2, v5, v2

    invoke-virtual {p0}, Lcn/hutool/log/dialect/console/ConsoleColorLog;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/hutool/core/util/ClassUtil;->getShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v3

    invoke-static {p4, p5}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v4

    invoke-virtual {p3, p1, v5}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
