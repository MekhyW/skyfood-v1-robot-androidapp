.class public Lcn/hutool/core/text/escape/Html4Unescape;
.super Lcn/hutool/core/text/escape/XmlUnescape;
.source "Html4Unescape.java"


# static fields
.field protected static final HTML40_EXTENDED_UNESCAPE:[[Ljava/lang/String;

.field protected static final ISO8859_1_UNESCAPE:[[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget-object v0, Lcn/hutool/core/text/escape/Html4Escape;->ISO8859_1_ESCAPE:[[Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/core/text/escape/InternalEscapeUtil;->invert([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/text/escape/Html4Unescape;->ISO8859_1_UNESCAPE:[[Ljava/lang/String;

    .line 15
    sget-object v0, Lcn/hutool/core/text/escape/Html4Escape;->HTML40_EXTENDED_ESCAPE:[[Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/core/text/escape/InternalEscapeUtil;->invert([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/text/escape/Html4Unescape;->HTML40_EXTENDED_UNESCAPE:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcn/hutool/core/text/escape/XmlUnescape;-><init>()V

    .line 19
    new-instance v0, Lcn/hutool/core/text/replacer/LookupReplacer;

    sget-object v1, Lcn/hutool/core/text/escape/Html4Unescape;->ISO8859_1_UNESCAPE:[[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/hutool/core/text/replacer/LookupReplacer;-><init>([[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/escape/Html4Unescape;->addChain(Lcn/hutool/core/text/replacer/StrReplacer;)Lcn/hutool/core/text/replacer/ReplacerChain;

    .line 20
    new-instance v0, Lcn/hutool/core/text/replacer/LookupReplacer;

    sget-object v1, Lcn/hutool/core/text/escape/Html4Unescape;->HTML40_EXTENDED_UNESCAPE:[[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/hutool/core/text/replacer/LookupReplacer;-><init>([[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/escape/Html4Unescape;->addChain(Lcn/hutool/core/text/replacer/StrReplacer;)Lcn/hutool/core/text/replacer/ReplacerChain;

    return-void
.end method
