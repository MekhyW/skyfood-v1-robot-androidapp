.class public Lcn/hutool/extra/pinyin/engine/tinypinyin/TinyPinyinEngine;
.super Ljava/lang/Object;
.source "TinyPinyinEngine.java"

# interfaces
.implements Lcn/hutool/extra/pinyin/PinyinEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcn/hutool/extra/pinyin/engine/tinypinyin/TinyPinyinEngine;-><init>(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    return-void
.end method


# virtual methods
.method public getPinyin(C)Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {p1}, Lcom/github/promeg/pinyinhelper/Pinyin;->isChinese(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-static {p1, p2}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
