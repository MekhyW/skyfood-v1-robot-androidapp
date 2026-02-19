.class public Lcn/hutool/json/xml/JSONXMLParser;
.super Ljava/lang/Object;
.source "JSONXMLParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lcn/hutool/json/XMLTokener;Lcn/hutool/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 52
    sget-object v1, Lcn/hutool/json/XML;->BANG:Ljava/lang/Character;

    const-string v2, "content"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_8

    .line 53
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->next()C

    move-result p2

    const/16 p3, 0x2d

    if-ne p2, p3, :cond_1

    .line 55
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->next()C

    move-result p1

    if-ne p1, p3, :cond_0

    const-string p1, "-->"

    .line 56
    invoke-virtual {p0, p1}, Lcn/hutool/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    return v4

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->back()V

    goto :goto_0

    :cond_1
    const/16 p3, 0x5b

    if-ne p2, p3, :cond_4

    .line 61
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "CDATA"

    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 63
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->next()C

    move-result p2

    if-ne p2, p3, :cond_3

    .line 64
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 66
    invoke-virtual {p1, v2, p0}, Lcn/hutool/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    :cond_2
    return v4

    :cond_3
    const-string p1, "Expected \'CDATA[\'"

    .line 71
    invoke-virtual {p0, p1}, Lcn/hutool/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p0

    throw p0

    .line 75
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 78
    sget-object p2, Lcn/hutool/json/XML;->LT:Ljava/lang/Character;

    if-ne p1, p2, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 80
    :cond_5
    sget-object p2, Lcn/hutool/json/XML;->GT:Ljava/lang/Character;

    if-ne p1, p2, :cond_6

    add-int/lit8 v3, v3, -0x1

    :cond_6
    :goto_1
    if-gtz v3, :cond_4

    return v4

    :cond_7
    const-string p1, "Missing \'>\' after \'<!\'."

    .line 77
    invoke-virtual {p0, p1}, Lcn/hutool/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p0

    throw p0

    .line 85
    :cond_8
    sget-object v1, Lcn/hutool/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_9

    const-string p1, "?>"

    .line 88
    invoke-virtual {p0, p1}, Lcn/hutool/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    return v4

    .line 90
    :cond_9
    sget-object v1, Lcn/hutool/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_d

    .line 94
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_c

    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 101
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcn/hutool/json/XML;->GT:Ljava/lang/Character;

    if-ne p1, p2, :cond_a

    return v3

    :cond_a
    const-string p1, "Misshaped close tag"

    .line 102
    invoke-virtual {p0, p1}, Lcn/hutool/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p0

    throw p0

    .line 99
    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Mismatched "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " and "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p0

    throw p0

    .line 96
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Mismatched close tag "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p0

    throw p0

    .line 106
    :cond_d
    instance-of p2, v0, Ljava/lang/Character;

    const-string v1, "Misshaped tag"

    if-nez p2, :cond_1e

    .line 112
    check-cast v0, Ljava/lang/String;

    .line 114
    new-instance p2, Lcn/hutool/json/JSONObject;

    invoke-direct {p2}, Lcn/hutool/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    :goto_2
    move-object v6, v5

    :goto_3
    if-nez v6, :cond_e

    .line 117
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    .line 121
    :cond_e
    instance-of v7, v6, Ljava/lang/String;

    const-string v8, ""

    if-eqz v7, :cond_12

    .line 122
    check-cast v6, Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 124
    sget-object v9, Lcn/hutool/json/XML;->EQ:Ljava/lang/Character;

    if-ne v7, v9, :cond_11

    .line 125
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 126
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_10

    if-eqz p3, :cond_f

    goto :goto_4

    .line 129
    :cond_f
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcn/hutool/json/InternalJSONUtil;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    :goto_4
    invoke-virtual {p2, v6, v7}, Lcn/hutool/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_2

    :cond_10
    const-string p1, "Missing value"

    .line 127
    invoke-virtual {p0, p1}, Lcn/hutool/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p0

    throw p0

    .line 132
    :cond_11
    invoke-virtual {p2, v6, v8}, Lcn/hutool/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    move-object v6, v7

    goto :goto_3

    .line 135
    :cond_12
    sget-object v5, Lcn/hutool/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v6, v5, :cond_15

    .line 137
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p3

    sget-object v2, Lcn/hutool/json/XML;->GT:Ljava/lang/Character;

    if-ne p3, v2, :cond_14

    .line 140
    invoke-virtual {p2}, Lcn/hutool/json/JSONObject;->size()I

    move-result p0

    if-lez p0, :cond_13

    .line 141
    invoke-virtual {p1, v0, p2}, Lcn/hutool/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_5

    .line 143
    :cond_13
    invoke-virtual {p1, v0, v8}, Lcn/hutool/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    :goto_5
    return v4

    .line 138
    :cond_14
    invoke-virtual {p0, v1}, Lcn/hutool/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p0

    throw p0

    .line 147
    :cond_15
    sget-object v5, Lcn/hutool/json/XML;->GT:Ljava/lang/Character;

    if-ne v6, v5, :cond_1d

    .line 150
    :cond_16
    :goto_6
    invoke-virtual {p0}, Lcn/hutool/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    if-nez v0, :cond_17

    return v4

    .line 153
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unclosed tag "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p0

    throw p0

    .line 156
    :cond_18
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1a

    .line 157
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 158
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_16

    if-eqz p3, :cond_19

    goto :goto_7

    .line 159
    :cond_19
    invoke-static {v5}, Lcn/hutool/json/InternalJSONUtil;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_7
    invoke-virtual {p2, v2, v1}, Lcn/hutool/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_6

    .line 162
    :cond_1a
    sget-object v5, Lcn/hutool/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v5, :cond_16

    .line 164
    invoke-static {p0, p2, v0, p3}, Lcn/hutool/json/xml/JSONXMLParser;->parse(Lcn/hutool/json/XMLTokener;Lcn/hutool/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 165
    invoke-virtual {p2}, Lcn/hutool/json/JSONObject;->size()I

    move-result p0

    if-nez p0, :cond_1b

    .line 166
    invoke-virtual {p1, v0, v8}, Lcn/hutool/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_8

    .line 167
    :cond_1b
    invoke-virtual {p2}, Lcn/hutool/json/JSONObject;->size()I

    move-result p0

    if-ne p0, v3, :cond_1c

    invoke-virtual {p2, v2}, Lcn/hutool/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 168
    invoke-virtual {p2, v2}, Lcn/hutool/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcn/hutool/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_8

    .line 170
    :cond_1c
    invoke-virtual {p1, v0, p2}, Lcn/hutool/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    :goto_8
    return v4

    .line 177
    :cond_1d
    invoke-virtual {p0, v1}, Lcn/hutool/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p0

    throw p0

    .line 107
    :cond_1e
    invoke-virtual {p0, v1}, Lcn/hutool/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method public static parseJSONObject(Lcn/hutool/json/JSONObject;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 27
    new-instance v0, Lcn/hutool/json/XMLTokener;

    invoke-virtual {p0}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/hutool/json/XMLTokener;-><init>(Ljava/lang/CharSequence;Lcn/hutool/json/JSONConfig;)V

    .line 28
    :goto_0
    invoke-virtual {v0}, Lcn/hutool/json/XMLTokener;->more()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "<"

    invoke-virtual {v0, p1}, Lcn/hutool/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 29
    invoke-static {v0, p0, p1, p2}, Lcn/hutool/json/xml/JSONXMLParser;->parse(Lcn/hutool/json/XMLTokener;Lcn/hutool/json/JSONObject;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method
