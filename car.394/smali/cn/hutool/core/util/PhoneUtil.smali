.class public Lcn/hutool/core/util/PhoneUtil;
.super Ljava/lang/Object;
.source "PhoneUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideAfter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x7

    const/16 v1, 0xb

    .line 129
    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/StrUtil;->hide(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hideBefore(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 107
    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/StrUtil;->hide(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hideBetween(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x7

    .line 118
    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/StrUtil;->hide(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isMobile(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 28
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->MOBILE:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isMobileHk(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 39
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->MOBILE_HK:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isMobileMo(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 61
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->MOBILE_MO:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isMobileTw(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 50
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->MOBILE_TW:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isPhone(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 95
    invoke-static {p0}, Lcn/hutool/core/util/PhoneUtil;->isMobile(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/hutool/core/util/PhoneUtil;->isTel400800(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/hutool/core/util/PhoneUtil;->isMobileHk(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/hutool/core/util/PhoneUtil;->isMobileTw(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/hutool/core/util/PhoneUtil;->isMobileMo(Ljava/lang/CharSequence;)Z

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

.method public static isTel(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 72
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->TEL:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isTel400800(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 84
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->TEL_400_800:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Validator;->isMatchRegex(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static subAfter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x7

    const/16 v1, 0xb

    .line 162
    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/StrUtil;->sub(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static subBefore(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 140
    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/StrUtil;->sub(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static subBetween(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x7

    .line 151
    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/StrUtil;->sub(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static subTelAfter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 186
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->TEL:Ljava/util/regex/Pattern;

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lcn/hutool/core/util/ReUtil;->get(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static subTelBefore(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 174
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->TEL:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcn/hutool/core/util/ReUtil;->getGroup1(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
