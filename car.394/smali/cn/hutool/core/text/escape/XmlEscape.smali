.class public Lcn/hutool/core/text/escape/XmlEscape;
.super Lcn/hutool/core/text/replacer/ReplacerChain;
.source "XmlEscape.java"


# static fields
.field protected static final BASIC_ESCAPE:[[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "\""

    const-string v2, "&quot;"

    .line 24
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "&"

    const-string v2, "&amp;"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<"

    const-string v2, "&lt;"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, ">"

    const-string v2, "&gt;"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcn/hutool/core/text/escape/XmlEscape;->BASIC_ESCAPE:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcn/hutool/core/text/replacer/StrReplacer;

    .line 35
    invoke-direct {p0, v0}, Lcn/hutool/core/text/replacer/ReplacerChain;-><init>([Lcn/hutool/core/text/replacer/StrReplacer;)V

    .line 36
    new-instance v0, Lcn/hutool/core/text/replacer/LookupReplacer;

    sget-object v1, Lcn/hutool/core/text/escape/XmlEscape;->BASIC_ESCAPE:[[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/hutool/core/text/replacer/LookupReplacer;-><init>([[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/escape/XmlEscape;->addChain(Lcn/hutool/core/text/replacer/StrReplacer;)Lcn/hutool/core/text/replacer/ReplacerChain;

    return-void
.end method
