.class public abstract Lcn/hutool/core/lang/ansi/AnsiEncoder;
.super Ljava/lang/Object;
.source "AnsiEncoder.java"


# static fields
.field private static final ENCODE_END:Ljava/lang/String; = "m"

.field private static final ENCODE_JOIN:Ljava/lang/String; = ";"

.field private static final ENCODE_START:Ljava/lang/String; = "\u001b["

.field private static final RESET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0;"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/hutool/core/lang/ansi/AnsiColor;->DEFAULT:Lcn/hutool/core/lang/ansi/AnsiColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/lang/ansi/AnsiEncoder;->RESET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildEnabled(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 10

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const-string v5, "m"

    const-string v6, ";"

    const-string v7, "\u001b["

    if-ge v2, v0, :cond_4

    aget-object v8, p1, v2

    if-nez v8, :cond_0

    goto :goto_2

    .line 41
    :cond_0
    instance-of v9, v8, Lcn/hutool/core/lang/ansi/AnsiElement;

    if-eqz v9, :cond_2

    const/4 v3, 0x1

    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 51
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v1

    .line 55
    :cond_3
    :goto_1
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_6

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v7

    .line 60
    :goto_3
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    sget-object p1, Lcn/hutool/core/lang/ansi/AnsiEncoder;->RESET:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method public static varargs encode([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-static {v0, p0}, Lcn/hutool/core/lang/ansi/AnsiEncoder;->buildEnabled(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
