.class synthetic Lcn/hutool/cron/pattern/parser/PartParser$1;
.super Ljava/lang/Object;
.source "PartParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/cron/pattern/parser/PartParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$hutool$cron$pattern$Part:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    invoke-static {}, Lcn/hutool/cron/pattern/Part;->values()[Lcn/hutool/cron/pattern/Part;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/hutool/cron/pattern/parser/PartParser$1;->$SwitchMap$cn$hutool$cron$pattern$Part:[I

    :try_start_0
    sget-object v1, Lcn/hutool/cron/pattern/Part;->DAY_OF_MONTH:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v1}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/hutool/cron/pattern/parser/PartParser$1;->$SwitchMap$cn$hutool$cron$pattern$Part:[I

    sget-object v1, Lcn/hutool/cron/pattern/Part;->YEAR:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v1}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcn/hutool/cron/pattern/parser/PartParser$1;->$SwitchMap$cn$hutool$cron$pattern$Part:[I

    sget-object v1, Lcn/hutool/cron/pattern/Part;->MONTH:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v1}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcn/hutool/cron/pattern/parser/PartParser$1;->$SwitchMap$cn$hutool$cron$pattern$Part:[I

    sget-object v1, Lcn/hutool/cron/pattern/Part;->DAY_OF_WEEK:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v1}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
