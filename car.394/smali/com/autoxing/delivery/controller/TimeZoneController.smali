.class public Lcom/autoxing/delivery/controller/TimeZoneController;
.super Ljava/lang/Object;
.source "TimeZoneController.java"


# static fields
.field public static final LANGUAGE_TYPE_ENGLISH:I = 0x2

.field public static final LANGUAGE_TYPE_JAPAN:I = 0x4

.field public static final LANGUAGE_TYPE_KOREAN:I = 0x5

.field public static final LANGUAGE_TYPE_TRADITIONAL_CHINESE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TimeZoneLogger"

.field private static final XMLTAG_TIMEZONE:Ljava/lang/String; = "timezone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V
    .locals 2

    .line 193
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 194
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 195
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private formatDigits(IILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 200
    div-int/lit8 v0, p1, 0xa

    .line 201
    rem-int/lit8 v1, p1, 0xa

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0xa

    if-ge p1, v3, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 204
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    :cond_1
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 16

    move-object/from16 v0, p0

    .line 112
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TimeZoneFormat;->getGMTPattern()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{0}"

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    const-string v2, "GMT "

    const-string v3, ""

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x3

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v4

    .line 126
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 127
    new-instance v4, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v4, v2}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v4}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v4

    .line 127
    invoke-direct {v0, v1, v2, v4}, Lcom/autoxing/delivery/controller/TimeZoneController;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 131
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-object/from16 v2, p3

    invoke-virtual {v2, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    const/4 v4, 0x1

    if-gez v2, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    if-eqz v6, :cond_3

    neg-int v2, v2

    .line 136
    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    goto :goto_2

    .line 138
    :cond_3
    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    :goto_2
    move-object/from16 v7, p1

    .line 140
    invoke-virtual {v7, v6}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object v7

    int-to-long v8, v2

    const-wide/32 v10, 0x36ee80

    .line 143
    div-long v10, v8, v10

    long-to-int v2, v10

    const-wide/32 v10, 0xea60

    .line 144
    div-long/2addr v8, v10

    long-to-int v8, v8

    .line 145
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    rem-int/lit8 v8, v8, 0x3c

    move v9, v5

    .line 147
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 148
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_9

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_9

    const/16 v11, 0x2212

    if-ne v10, v11, :cond_4

    goto :goto_7

    :cond_4
    const/16 v11, 0x48

    if-eq v10, v11, :cond_6

    const/16 v12, 0x6d

    if-ne v10, v12, :cond_5

    goto :goto_4

    .line 172
    :cond_5
    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_8

    :cond_6
    :goto_4
    add-int/lit8 v12, v9, 0x1

    .line 154
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_7

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v10, :cond_7

    const/4 v9, 0x2

    goto :goto_5

    :cond_7
    move v12, v9

    move v9, v4

    :goto_5
    if-ne v10, v11, :cond_8

    const-string v10, "hour"

    move v11, v2

    goto :goto_6

    :cond_8
    const-string v10, "minute"

    move v11, v8

    .line 169
    :goto_6
    invoke-direct {v0, v11, v9, v7}, Lcom/autoxing/delivery/controller/TimeZoneController;->formatDigits(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Landroid/text/style/TtsSpan$MeasureBuilder;

    invoke-direct {v13}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    int-to-long v14, v11

    .line 170
    invoke-virtual {v13, v14, v15}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v10

    .line 169
    invoke-direct {v0, v1, v9, v10}, Lcom/autoxing/delivery/controller/TimeZoneController;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    move v9, v12

    goto :goto_8

    .line 150
    :cond_9
    :goto_7
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 151
    new-instance v11, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v11, v10}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v11

    invoke-direct {v0, v1, v10, v11}, Lcom/autoxing/delivery/controller/TimeZoneController;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    :goto_8
    add-int/2addr v9, v4

    goto :goto_3

    .line 176
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 177
    new-instance v2, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v2, v3}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v2

    .line 177
    invoke-direct {v0, v1, v3, v2}, Lcom/autoxing/delivery/controller/TimeZoneController;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 181
    :cond_b
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 184
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v1

    .line 185
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v4, :cond_c

    move v5, v4

    :cond_c
    if-eqz v5, :cond_d

    .line 187
    sget-object v3, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_9

    :cond_d
    sget-object v3, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 186
    :goto_9
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private getLocale(I)Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 52
    sget-object p1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    return-object p1

    .line 50
    :cond_0
    sget-object p1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    return-object p1

    .line 48
    :cond_1
    sget-object p1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    return-object p1

    .line 46
    :cond_2
    sget-object p1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object p1

    .line 44
    :cond_3
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object p1
.end method

.method private getTimeZoneDisplayName(Landroid/icu/text/TimeZoneNames;ZLjava/util/TimeZone;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 213
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 220
    invoke-direct {p0, p1, p3, p4}, Lcom/autoxing/delivery/controller/TimeZoneController;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 227
    :cond_0
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 229
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    .line 231
    :cond_1
    invoke-virtual {p1, p2}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    goto :goto_1

    .line 234
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lcom/autoxing/delivery/controller/TimeZoneController;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 247
    invoke-virtual {p2, p3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    .line 248
    :cond_0
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .line 249
    :goto_0
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "TimeZoneLogger"

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0f0002

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 86
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    .line 87
    :goto_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 88
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    if-eqz p1, :cond_1

    .line 102
    :try_start_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v1

    .line 91
    :cond_2
    :try_start_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_2

    .line 93
    :cond_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "timezone"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 94
    invoke-interface {p1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_4
    :goto_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 98
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_3

    .line 100
    :cond_5
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_8

    .line 102
    :try_start_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v2

    if-eqz p1, :cond_7

    .line 81
    :try_start_5
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v2
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    const-string p1, "Unable to read timezones.xml file"

    .line 105
    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    const-string p1, "Ill-formatted timezones.xml file"

    .line 103
    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-object v1
.end method


# virtual methods
.method public getTimeZoneList(Landroid/content/Context;I)Ljava/lang/String;
    .locals 11

    .line 57
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 58
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/controller/TimeZoneController;->readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 60
    invoke-direct {p0, p2}, Lcom/autoxing/delivery/controller/TimeZoneController;->getLocale(I)Ljava/util/Locale;

    move-result-object p2

    .line 61
    invoke-static {p2}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 63
    invoke-static {p2}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v3

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 68
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x1

    .line 69
    invoke-direct {p0, v3, v6, v5, v4}, Lcom/autoxing/delivery/controller/TimeZoneController;->getTimeZoneDisplayName(Landroid/icu/text/TimeZoneNames;ZLjava/util/TimeZone;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 70
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-direct {p0, v1, p2, v5, v8}, Lcom/autoxing/delivery/controller/TimeZoneController;->getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 71
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    aput-object v7, v9, v6

    const-string v5, "(%s) %s"

    .line 72
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v8, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "value"

    .line 73
    invoke-virtual {v8, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
