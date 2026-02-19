.class public Lcn/hutool/extra/pinyin/engine/houbbpinyin/HoubbPinyinEngine;
.super Ljava/lang/Object;
.source "HoubbPinyinEngine.java"

# interfaces
.implements Lcn/hutool/extra/pinyin/PinyinEngine;


# instance fields
.field format:Lcom/github/houbb/pinyin/constant/enums/PinyinStyleEnum;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Lcn/hutool/extra/pinyin/engine/houbbpinyin/HoubbPinyinEngine;-><init>(Lcom/github/houbb/pinyin/constant/enums/PinyinStyleEnum;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/houbb/pinyin/constant/enums/PinyinStyleEnum;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcn/hutool/extra/pinyin/engine/houbbpinyin/HoubbPinyinEngine;->init(Lcom/github/houbb/pinyin/constant/enums/PinyinStyleEnum;)V

    return-void
.end method


# virtual methods
.method public getPinyin(C)Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/hutool/extra/pinyin/engine/houbbpinyin/HoubbPinyinEngine;->format:Lcom/github/houbb/pinyin/constant/enums/PinyinStyleEnum;

    invoke-static {p1, v0}, Lcom/github/houbb/pinyin/util/PinyinHelper;->toPinyin(Ljava/lang/String;Lcom/github/houbb/pinyin/constant/enums/PinyinStyleEnum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/hutool/extra/pinyin/engine/houbbpinyin/HoubbPinyinEngine;->format:Lcom/github/houbb/pinyin/constant/enums/PinyinStyleEnum;

    invoke-static {p1, v0, p2}, Lcom/github/houbb/pinyin/util/PinyinHelper;->toPinyin(Ljava/lang/String;Lcom/github/houbb/pinyin/constant/enums/PinyinStyleEnum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Lcom/github/houbb/pinyin/constant/enums/PinyinStyleEnum;)V
    .locals 0

    if-nez p1, :cond_0

    .line 56
    sget-object p1, Lcom/github/houbb/pinyin/constant/enums/PinyinStyleEnum;->NORMAL:Lcom/github/houbb/pinyin/constant/enums/PinyinStyleEnum;

    .line 58
    :cond_0
    iput-object p1, p0, Lcn/hutool/extra/pinyin/engine/houbbpinyin/HoubbPinyinEngine;->format:Lcom/github/houbb/pinyin/constant/enums/PinyinStyleEnum;

    return-void
.end method
