.class public Lcn/hutool/extra/tokenizer/engine/jcseg/JcsegResult;
.super Lcn/hutool/extra/tokenizer/AbstractResult;
.source "JcsegResult.java"


# instance fields
.field private final result:Lorg/lionsoul/jcseg/ISegment;


# direct methods
.method public constructor <init>(Lorg/lionsoul/jcseg/ISegment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/hutool/extra/tokenizer/AbstractResult;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/hutool/extra/tokenizer/engine/jcseg/JcsegResult;->result:Lorg/lionsoul/jcseg/ISegment;

    return-void
.end method


# virtual methods
.method protected nextWord()Lcn/hutool/extra/tokenizer/Word;
    .locals 2

    .line 34
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/tokenizer/engine/jcseg/JcsegResult;->result:Lorg/lionsoul/jcseg/ISegment;

    invoke-interface {v0}, Lorg/lionsoul/jcseg/ISegment;->next()Lorg/lionsoul/jcseg/IWord;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    new-instance v1, Lcn/hutool/extra/tokenizer/engine/jcseg/JcsegWord;

    invoke-direct {v1, v0}, Lcn/hutool/extra/tokenizer/engine/jcseg/JcsegWord;-><init>(Lorg/lionsoul/jcseg/IWord;)V

    return-object v1

    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Lcn/hutool/extra/tokenizer/TokenizerException;

    invoke-direct {v1, v0}, Lcn/hutool/extra/tokenizer/TokenizerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
