.class public Lcn/hutool/setting/yaml/YamlUtil;
.super Ljava/lang/Object;
.source "YamlUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2

    .line 111
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    const/4 v1, 0x2

    .line 112
    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/DumperOptions;->setIndent(I)V

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/DumperOptions;->setPrettyFlow(Z)V

    .line 114
    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/DumperOptions;->setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 116
    invoke-static {p0, p1, v0}, Lcn/hutool/setting/yaml/YamlUtil;->dump(Ljava/lang/Object;Ljava/io/Writer;Lorg/yaml/snakeyaml/DumperOptions;)V

    return-void
.end method

.method public static dump(Ljava/lang/Object;Ljava/io/Writer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .locals 1

    if-nez p2, :cond_0

    .line 128
    new-instance p2, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {p2}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    .line 130
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {v0, p2}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 131
    invoke-virtual {v0, p0, p1}, Lorg/yaml/snakeyaml/Yaml;->dump(Ljava/lang/Object;Ljava/io/Writer;)V

    return-void
.end method

.method public static load(Ljava/io/Reader;)Lcn/hutool/core/lang/Dict;
    .locals 1

    .line 63
    const-class v0, Lcn/hutool/core/lang/Dict;

    invoke-static {p0, v0}, Lcn/hutool/setting/yaml/YamlUtil;->load(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/lang/Dict;

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->getBomReader(Ljava/io/InputStream;)Lcn/hutool/core/io/BomReader;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/setting/yaml/YamlUtil;->load(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 75
    invoke-static {p0, p1, v0}, Lcn/hutool/setting/yaml/YamlUtil;->load(Ljava/io/Reader;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/Reader;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Reader must be not null !"

    .line 88
    invoke-static {p0, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 91
    const-class p1, Ljava/lang/Object;

    .line 94
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/Yaml;-><init>()V

    .line 96
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lorg/yaml/snakeyaml/Yaml;->loadAs(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 99
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 101
    :cond_2
    throw p1
.end method

.method public static loadByPath(Ljava/lang/String;)Lcn/hutool/core/lang/Dict;
    .locals 1

    .line 29
    const-class v0, Lcn/hutool/core/lang/Dict;

    invoke-static {p0, v0}, Lcn/hutool/setting/yaml/YamlUtil;->loadByPath(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/lang/Dict;

    return-object p0
.end method

.method public static loadByPath(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lcn/hutool/core/io/resource/ResourceUtil;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/setting/yaml/YamlUtil;->load(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
