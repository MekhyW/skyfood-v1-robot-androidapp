.class public Lcn/hutool/json/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# instance fields
.field private final tokener:Lcn/hutool/json/JSONTokener;


# direct methods
.method public constructor <init>(Lcn/hutool/json/JSONTokener;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcn/hutool/json/JSONParser;->tokener:Lcn/hutool/json/JSONTokener;

    return-void
.end method

.method public static of(Lcn/hutool/json/JSONTokener;)Lcn/hutool/json/JSONParser;
    .locals 1

    .line 22
    new-instance v0, Lcn/hutool/json/JSONParser;

    invoke-direct {v0, p0}, Lcn/hutool/json/JSONParser;-><init>(Lcn/hutool/json/JSONTokener;)V

    return-object v0
.end method


# virtual methods
.method public parseTo(Lcn/hutool/json/JSONArray;Lcn/hutool/core/lang/Filter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/json/JSONArray;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/Mutable<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcn/hutool/json/JSONParser;->tokener:Lcn/hutool/json/JSONTokener;

    .line 110
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextClean()C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_5

    .line 113
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextClean()C

    move-result v1

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_4

    .line 114
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->back()V

    .line 116
    :goto_0
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextClean()C

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_0

    .line 117
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->back()V

    .line 118
    sget-object v1, Lcn/hutool/json/JSONNull;->NULL:Lcn/hutool/json/JSONNull;

    invoke-virtual {p1, v1, p2}, Lcn/hutool/json/JSONArray;->addRaw(Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Z

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->back()V

    .line 121
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcn/hutool/json/JSONArray;->addRaw(Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Z

    .line 123
    :goto_1
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextClean()C

    move-result v1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    const-string p1, "Expected a \',\' or \']\'"

    .line 133
    invoke-virtual {v0, p1}, Lcn/hutool/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p1

    throw p1

    .line 125
    :cond_2
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextClean()C

    move-result v1

    if-ne v1, v2, :cond_3

    return-void

    .line 128
    :cond_3
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->back()V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    const-string p1, "A JSONArray text must start with \'[\'"

    .line 111
    invoke-virtual {v0, p1}, Lcn/hutool/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p1

    throw p1
.end method

.method public parseTo(Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/json/JSONObject;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcn/hutool/json/JSONParser;->tokener:Lcn/hutool/json/JSONTokener;

    .line 47
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextClean()C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_8

    .line 55
    :goto_0
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->getPrevious()C

    move-result v1

    .line 56
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextClean()C

    move-result v3

    if-eqz v3, :cond_7

    const/16 v4, 0x5b

    const/16 v5, 0x7d

    if-eq v3, v4, :cond_1

    if-eq v3, v2, :cond_1

    if-eq v3, v5, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    if-eq v1, v2, :cond_6

    .line 68
    :goto_1
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->back()V

    .line 69
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextClean()C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_5

    .line 79
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcn/hutool/json/JSONConfig;->isCheckDuplicate()Z

    move-result v4

    invoke-virtual {p1, v1, v3, p2, v4}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;Z)Lcn/hutool/json/JSONObject;

    .line 83
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextClean()C

    move-result v1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_3

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_3

    if-ne v1, v5, :cond_2

    return-void

    :cond_2
    const-string p1, "Expected a \',\' or \'}\'"

    .line 96
    invoke-virtual {v0, p1}, Lcn/hutool/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p1

    throw p1

    .line 86
    :cond_3
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->nextClean()C

    move-result v1

    if-ne v1, v5, :cond_4

    return-void

    .line 91
    :cond_4
    invoke-virtual {v0}, Lcn/hutool/json/JSONTokener;->back()V

    goto :goto_0

    :cond_5
    const-string p1, "Expected a \':\' after a key"

    .line 76
    invoke-virtual {v0, p1}, Lcn/hutool/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p1

    throw p1

    :cond_6
    const-string p1, "A JSONObject can not directly nest another JSONObject or JSONArray."

    .line 65
    invoke-virtual {v0, p1}, Lcn/hutool/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p1

    throw p1

    :cond_7
    const-string p1, "A JSONObject text must end with \'}\'"

    .line 59
    invoke-virtual {v0, p1}, Lcn/hutool/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p1

    throw p1

    :cond_8
    const-string p1, "A JSONObject text must begin with \'{\'"

    .line 48
    invoke-virtual {v0, p1}, Lcn/hutool/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcn/hutool/json/JSONException;

    move-result-object p1

    throw p1
.end method
