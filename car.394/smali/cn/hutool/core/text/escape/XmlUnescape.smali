.class public Lcn/hutool/core/text/escape/XmlUnescape;
.super Lcn/hutool/core/text/replacer/ReplacerChain;
.source "XmlUnescape.java"


# static fields
.field protected static final BASIC_UNESCAPE:[[Ljava/lang/String;

.field protected static final OTHER_UNESCAPE:[[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    sget-object v0, Lcn/hutool/core/text/escape/XmlEscape;->BASIC_ESCAPE:[[Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/core/text/escape/InternalEscapeUtil;->invert([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/text/escape/XmlUnescape;->BASIC_UNESCAPE:[[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "&apos;"

    const-string v2, "\'"

    .line 17
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcn/hutool/core/text/escape/XmlUnescape;->OTHER_UNESCAPE:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcn/hutool/core/text/replacer/StrReplacer;

    .line 22
    invoke-direct {p0, v0}, Lcn/hutool/core/text/replacer/ReplacerChain;-><init>([Lcn/hutool/core/text/replacer/StrReplacer;)V

    .line 23
    new-instance v0, Lcn/hutool/core/text/replacer/LookupReplacer;

    sget-object v1, Lcn/hutool/core/text/escape/XmlUnescape;->BASIC_UNESCAPE:[[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/hutool/core/text/replacer/LookupReplacer;-><init>([[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/escape/XmlUnescape;->addChain(Lcn/hutool/core/text/replacer/StrReplacer;)Lcn/hutool/core/text/replacer/ReplacerChain;

    .line 24
    new-instance v0, Lcn/hutool/core/text/escape/NumericEntityUnescaper;

    invoke-direct {v0}, Lcn/hutool/core/text/escape/NumericEntityUnescaper;-><init>()V

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/escape/XmlUnescape;->addChain(Lcn/hutool/core/text/replacer/StrReplacer;)Lcn/hutool/core/text/replacer/ReplacerChain;

    .line 25
    new-instance v0, Lcn/hutool/core/text/replacer/LookupReplacer;

    sget-object v1, Lcn/hutool/core/text/escape/XmlUnescape;->OTHER_UNESCAPE:[[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/hutool/core/text/replacer/LookupReplacer;-><init>([[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/escape/XmlUnescape;->addChain(Lcn/hutool/core/text/replacer/StrReplacer;)Lcn/hutool/core/text/replacer/ReplacerChain;

    return-void
.end method
