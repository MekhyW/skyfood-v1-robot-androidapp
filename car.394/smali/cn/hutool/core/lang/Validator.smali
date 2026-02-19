.class public Lcn/hutool/core/lang/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# static fields
.field public static final BIRTHDAY:Ljava/util/regex/Pattern;

.field public static final CAR_DRIVING_LICENCE:Ljava/util/regex/Pattern;

.field public static final CAR_VIN:Ljava/util/regex/Pattern;

.field public static final CITIZEN_ID:Ljava/util/regex/Pattern;

.field public static final EMAIL:Ljava/util/regex/Pattern;

.field public static final EMAIL_WITH_CHINESE:Ljava/util/regex/Pattern;

.field public static final GENERAL:Ljava/util/regex/Pattern;

.field public static final GENERAL_WITH_CHINESE:Ljava/util/regex/Pattern;

.field public static final GROUP_VAR:Ljava/util/regex/Pattern;

.field public static final IPV4:Ljava/util/regex/Pattern;

.field public static final IPV6:Ljava/util/regex/Pattern;

.field public static final MOBILE:Ljava/util/regex/Pattern;

.field public static final MONEY:Ljava/util/regex/Pattern;

.field public static final NUMBERS:Ljava/util/regex/Pattern;

.field public static final PLATE_NUMBER:Ljava/util/regex/Pattern;

.field public static final URL:Ljava/util/regex/Pattern;

.field public static final URL_HTTP:Ljava/util/regex/Pattern;

.field public static final UUID:Ljava/util/regex/Pattern;

.field public static final UUID_SIMPLE:Ljava/util/regex/Pattern;

.field public static final ZIP_CODE:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$DlsTPc-LxguUX6l_KEBwVx844co(C)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eq9pn8ti6kAIM1qsw8bZjZdSAvY(C)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mhHiaImgDYGayImp__nFGTPL-s0(C)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->GENERAL:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->GENERAL:Ljava/util/regex/Pattern;

    .line 37
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->NUMBERS:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->NUMBERS:Ljava/util/regex/Pattern;

    .line 41
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->GROUP_VAR:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->GROUP_VAR:Ljava/util/regex/Pattern;

    .line 45
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->IPV4:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->IPV4:Ljava/util/regex/Pattern;

    .line 49
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->IPV6:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->IPV6:Ljava/util/regex/Pattern;

    .line 53
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->MONEY:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->MONEY:Ljava/util/regex/Pattern;

    .line 57
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->EMAIL:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->EMAIL:Ljava/util/regex/Pattern;

    .line 62
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->EMAIL_WITH_CHINESE:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->EMAIL_WITH_CHINESE:Ljava/util/regex/Pattern;

    .line 67
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->MOBILE:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->MOBILE:Ljava/util/regex/Pattern;

    .line 72
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->CITIZEN_ID:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->CITIZEN_ID:Ljava/util/regex/Pattern;

    .line 77
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->ZIP_CODE:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->ZIP_CODE:Ljava/util/regex/Pattern;

    .line 81
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->BIRTHDAY:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->BIRTHDAY:Ljava/util/regex/Pattern;

    .line 85
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->URL:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->URL:Ljava/util/regex/Pattern;

    .line 89
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->URL_HTTP:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->URL_HTTP:Ljava/util/regex/Pattern;

    .line 93
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->GENERAL_WITH_CHINESE:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->GENERAL_WITH_CHINESE:Ljava/util/regex/Pattern;

    .line 97
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->UUID:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->UUID:Ljava/util/regex/Pattern;

    .line 101
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->UUID_SIMPLE:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->UUID_SIMPLE:Ljava/util/regex/Pattern;

    .line 105
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->PLATE_NUMBER:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->PLATE_NUMBER:Ljava/util/regex/Pattern;

    .line 109
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->CAR_VIN:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->CAR_VIN:Ljava/util/regex/Pattern;

    .line 113
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->CAR_DRIVING_LICENCE:Ljava/util/regex/Pattern;

    sput-object v0, Lcn/hutool/core/lang/Validator;->CAR_DRIVING_LICENCE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 291
    invoke-static {p0, p1}, Lcn/hutool/core/util/ObjectUtil;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hasChinese(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "[\u2e80-\u2eff\u2f00-\u2fdf\u31c0-\u31ef\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff\ud840\udc00-\ud869\udedf\ud869\udf00-\ud86d\udf3f\ud86d\udf40-\ud86e\udc1f\ud86e\udc20-\ud873\udeaf\ud87e\udc00-\ud87e\ude1f]+"

    .line 1012
    invoke-static {v0, p0}, Lcn/hutool/core/util/ReUtil;->contains(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static hasNumber(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 584
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->NUMBERS:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/util/ReUtil;->contains(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isBetween(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 2

    .line 1123
    invoke-static {p0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    invoke-static {p1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    invoke-static {p2}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1127
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBirthday(III)Z
    .locals 3

    .line 786
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->thisYear()I

    move-result v0

    const/16 v1, 0x76c

    const/4 v2, 0x0

    if-lt p0, v1, :cond_8

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    const/16 v1, 0xc

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-lt p2, v0, :cond_8

    const/16 v1, 0x1f

    if-le p2, v1, :cond_2

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb

    if-ne p1, v1, :cond_4

    :cond_3
    return v2

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    const/16 p1, 0x1d

    if-lt p2, p1, :cond_5

    if-ne p2, p1, :cond_6

    .line 806
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v2, v0

    :cond_6
    return v2

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v2
.end method

.method public static isBirthday(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 826
    sget-object v0, Lcn/hutool/core/lang/Validator;->BIRTHDAY:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 827
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 828
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    .line 829
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    .line 830
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 831
    invoke-static {v0, v1, p0}, Lcn/hutool/core/lang/Validator;->isBirthday(III)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCarDrivingLicence(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1204
    sget-object v0, Lcn/hutool/core/lang/Validator;->CAR_DRIVING_LICENCE:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isCarVin(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1173
    sget-object v0, Lcn/hutool/core/lang/Validator;->CAR_VIN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isChinese(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1001
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->CHINESES:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isChineseName(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1239
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->CHINESE_NAME:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isCitizenId(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 757
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/IdcardUtil;->isValidCard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isCreditCode(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1161
    invoke-static {p0}, Lcn/hutool/core/util/CreditCodeUtil;->isCreditCode(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isEmail(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 690
    sget-object v0, Lcn/hutool/core/lang/Validator;->EMAIL:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isEmail(Ljava/lang/CharSequence;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 702
    sget-object p1, Lcn/hutool/core/lang/Validator;->EMAIL_WITH_CHINESE:Ljava/util/regex/Pattern;

    invoke-static {p1, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 704
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isEmail(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 234
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isFalse(Z)Z
    .locals 0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isGeneral(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 401
    sget-object v0, Lcn/hutool/core/lang/Validator;->GENERAL:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isGeneral(Ljava/lang/CharSequence;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 465
    invoke-static {p0, p1, v0}, Lcn/hutool/core/lang/Validator;->isGeneral(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public static isGeneral(Ljava/lang/CharSequence;II)Z
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^\\w{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-gtz p2, :cond_1

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",}$"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_1
    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isGeneralWithChinese(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1038
    sget-object v0, Lcn/hutool/core/lang/Validator;->GENERAL_WITH_CHINESE:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isHex(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1093
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->HEX:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isIpv4(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 859
    sget-object v0, Lcn/hutool/core/lang/Validator;->IPV4:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isIpv6(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 885
    sget-object v0, Lcn/hutool/core/lang/Validator;->IPV6:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isLetter(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 490
    new-instance v0, Lcn/hutool/core/lang/Validator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/lang/Validator$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->isAllCharMatch(Ljava/lang/CharSequence;Lcn/hutool/core/lang/Matcher;)Z

    move-result p0

    return p0
.end method

.method public static isLowerCase(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 546
    new-instance v0, Lcn/hutool/core/lang/Validator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/lang/Validator$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->isAllCharMatch(Ljava/lang/CharSequence;Lcn/hutool/core/lang/Matcher;)Z

    move-result p0

    return p0
.end method

.method public static isMac(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 912
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->MAC_ADDRESS:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isMatchRegex(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 391
    invoke-static {p0, p1}, Lcn/hutool/core/util/ReUtil;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 380
    invoke-static {p0, p1}, Lcn/hutool/core/util/ReUtil;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isMobile(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 731
    sget-object v0, Lcn/hutool/core/lang/Validator;->MOBILE:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isMoney(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 637
    sget-object v0, Lcn/hutool/core/lang/Validator;->MONEY:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isNotEmpty(Ljava/lang/Object;)Z
    .locals 0

    .line 245
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isEmpty(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotNull(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNumber(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 573
    invoke-static {p0}, Lcn/hutool/core/util/NumberUtil;->isNumber(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isPlateNumber(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 940
    sget-object v0, Lcn/hutool/core/lang/Validator;->PLATE_NUMBER:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isTrue(Z)Z
    .locals 0

    return p0
.end method

.method public static isUUID(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1065
    sget-object v0, Lcn/hutool/core/lang/Validator;->UUID:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/hutool/core/lang/Validator;->UUID_SIMPLE:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isUpperCase(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 518
    new-instance v0, Lcn/hutool/core/lang/Validator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/hutool/core/lang/Validator$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->isAllCharMatch(Ljava/lang/CharSequence;Lcn/hutool/core/lang/Matcher;)Z

    move-result p0

    return p0
.end method

.method public static isUrl(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 967
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 971
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->str(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method public static isWord(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 610
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->WORD:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isZipCode(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 664
    sget-object v0, Lcn/hutool/core/lang/Validator;->ZIP_CODE:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static validateBetween(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 1141
    invoke-static {p0, p1, p2}, Lcn/hutool/core/lang/Validator;->isBetween(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1142
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p3}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateBirthday(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 846
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isBirthday(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 847
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateCarDrivingLicence(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 1255
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isCarDrivingLicence(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1256
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateCarVin(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 1188
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isCarVin(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1189
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateChinese(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 1025
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isChinese(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1026
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateCitizenIdNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 770
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isCitizenId(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 771
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateEmail(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 718
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isEmail(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 719
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 259
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 260
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 304
    invoke-static {p0, p1}, Lcn/hutool/core/lang/Validator;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 305
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p2}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs validateFalse(ZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 165
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isTrue(Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 166
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1, p2}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static validateGeneral(Ljava/lang/CharSequence;IILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;II",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 451
    invoke-static {p0, p1, p2}, Lcn/hutool/core/lang/Validator;->isGeneral(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 452
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p3}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateGeneral(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 479
    invoke-static {p0, p1, v0, p2}, Lcn/hutool/core/lang/Validator;->validateGeneral(Ljava/lang/CharSequence;IILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static validateGeneral(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 414
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isGeneral(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 415
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateGeneralWithChinese(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 1051
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isGeneralWithChinese(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1052
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateHex(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 1107
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isHex(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1108
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateIpv4(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 872
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isIpv4(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 873
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateIpv6(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 898
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isIpv6(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 899
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateLetter(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 504
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isLetter(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 505
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateLowerCase(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 560
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isLowerCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 561
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateMac(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 926
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isMac(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 927
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateMatchRegex(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 366
    invoke-static {p0, p1}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    .line 367
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p2}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateMobile(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 744
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isMobile(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 745
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateMoney(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 650
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isMoney(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 651
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateNotEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 276
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 277
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateNotEmptyAndEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 335
    invoke-static {p0, p2}, Lcn/hutool/core/lang/Validator;->validateNotEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    invoke-static {p0, p1, p2}, Lcn/hutool/core/lang/Validator;->validateEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static validateNotEmptyAndNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 350
    invoke-static {p0, p2}, Lcn/hutool/core/lang/Validator;->validateNotEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 351
    invoke-static {p0, p1, p2}, Lcn/hutool/core/lang/Validator;->validateNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static validateNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 319
    invoke-static {p0, p1}, Lcn/hutool/core/lang/Validator;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 320
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p2}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs validateNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 220
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 221
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1, p2}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static varargs validateNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 203
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isNotNull(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 204
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1, p2}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static validateNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 596
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 597
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validatePlateNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 954
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isPlateNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 955
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs validateTrue(ZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 148
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isFalse(Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 149
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1, p2}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static validateUUID(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 1079
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isUUID(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1080
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateUpperCase(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 532
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isUpperCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 533
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateUrl(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 988
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isUrl(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 989
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 624
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 625
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateZipCode(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 677
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isZipCode(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 678
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
