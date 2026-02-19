.class public Lcn/hutool/extra/spring/SpringUtil;
.super Ljava/lang/Object;
.source "SpringUtil.java"

# interfaces
.implements Lorg/springframework/beans/factory/config/BeanFactoryPostProcessor;
.implements Lorg/springframework/context/ApplicationContextAware;


# annotations
.annotation runtime Lorg/springframework/stereotype/Component;
.end annotation


# static fields
.field private static applicationContext:Lorg/springframework/context/ApplicationContext;

.field private static beanFactory:Lorg/springframework/beans/factory/config/ConfigurableListableBeanFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveProfile()Ljava/lang/String;
    .locals 2

    .line 221
    invoke-static {}, Lcn/hutool/extra/spring/SpringUtil;->getActiveProfiles()[Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getActiveProfiles()[Ljava/lang/String;
    .locals 1

    .line 208
    sget-object v0, Lcn/hutool/extra/spring/SpringUtil;->applicationContext:Lorg/springframework/context/ApplicationContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    invoke-interface {v0}, Lorg/springframework/context/ApplicationContext;->getEnvironment()Lorg/springframework/core/env/Environment;

    move-result-object v0

    invoke-interface {v0}, Lorg/springframework/core/env/Environment;->getActiveProfiles()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationContext()Lorg/springframework/context/ApplicationContext;
    .locals 1

    .line 64
    sget-object v0, Lcn/hutool/extra/spring/SpringUtil;->applicationContext:Lorg/springframework/context/ApplicationContext;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 1

    const-string v0, "spring.application.name"

    .line 198
    invoke-static {v0}, Lcn/hutool/extra/spring/SpringUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBean(Lcn/hutool/core/lang/TypeReference;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/TypeReference<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcn/hutool/core/lang/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 148
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 149
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcn/hutool/extra/spring/SpringUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/hutool/extra/spring/SpringUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcn/hutool/extra/spring/SpringUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/hutool/extra/spring/SpringUtil$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    .line 150
    invoke-static {}, Lcn/hutool/extra/spring/SpringUtil;->getBeanFactory()Lorg/springframework/beans/factory/ListableBeanFactory;

    move-result-object v1

    invoke-static {v0, p0}, Lorg/springframework/core/ResolvableType;->forClassWithGenerics(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/springframework/beans/factory/ListableBeanFactory;->getBeanNamesForType(Lorg/springframework/core/ResolvableType;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 151
    aget-object p0, p0, v1

    invoke-static {p0, v0}, Lcn/hutool/extra/spring/SpringUtil;->getBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lcn/hutool/extra/spring/SpringUtil;->getBeanFactory()Lorg/springframework/beans/factory/ListableBeanFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/springframework/beans/factory/ListableBeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getBean(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 111
    invoke-static {}, Lcn/hutool/extra/spring/SpringUtil;->getBeanFactory()Lorg/springframework/beans/factory/ListableBeanFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/springframework/beans/factory/ListableBeanFactory;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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

    .line 134
    invoke-static {}, Lcn/hutool/extra/spring/SpringUtil;->getBeanFactory()Lorg/springframework/beans/factory/ListableBeanFactory;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/springframework/beans/factory/ListableBeanFactory;->getBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getBeanFactory()Lorg/springframework/beans/factory/ListableBeanFactory;
    .locals 2

    .line 74
    sget-object v0, Lcn/hutool/extra/spring/SpringUtil;->beanFactory:Lorg/springframework/beans/factory/config/ConfigurableListableBeanFactory;

    if-nez v0, :cond_0

    sget-object v0, Lcn/hutool/extra/spring/SpringUtil;->applicationContext:Lorg/springframework/context/ApplicationContext;

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 76
    :cond_1
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    const-string v1, "No ConfigurableListableBeanFactory or ApplicationContext injected, maybe not in the Spring environment?"

    invoke-direct {v0, v1}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBeanNamesForType(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 174
    invoke-static {}, Lcn/hutool/extra/spring/SpringUtil;->getBeanFactory()Lorg/springframework/beans/factory/ListableBeanFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/springframework/beans/factory/ListableBeanFactory;->getBeanNamesForType(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBeansOfType(Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 163
    invoke-static {}, Lcn/hutool/extra/spring/SpringUtil;->getBeanFactory()Lorg/springframework/beans/factory/ListableBeanFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/springframework/beans/factory/ListableBeanFactory;->getBeansOfType(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigurableBeanFactory()Lorg/springframework/beans/factory/config/ConfigurableListableBeanFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 90
    sget-object v0, Lcn/hutool/extra/spring/SpringUtil;->beanFactory:Lorg/springframework/beans/factory/config/ConfigurableListableBeanFactory;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    sget-object v0, Lcn/hutool/extra/spring/SpringUtil;->applicationContext:Lorg/springframework/context/ApplicationContext;

    instance-of v1, v0, Lorg/springframework/context/ConfigurableApplicationContext;

    if-eqz v1, :cond_1

    .line 93
    check-cast v0, Lorg/springframework/context/ConfigurableApplicationContext;

    invoke-interface {v0}, Lorg/springframework/context/ConfigurableApplicationContext;->getBeanFactory()Lorg/springframework/beans/factory/config/ConfigurableListableBeanFactory;

    move-result-object v0

    :goto_0
    return-object v0

    .line 95
    :cond_1
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    const-string v1, "No ConfigurableListableBeanFactory from context!"

    invoke-direct {v0, v1}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 185
    sget-object v0, Lcn/hutool/extra/spring/SpringUtil;->applicationContext:Lorg/springframework/context/ApplicationContext;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 188
    :cond_0
    invoke-interface {v0}, Lorg/springframework/context/ApplicationContext;->getEnvironment()Lorg/springframework/core/env/Environment;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/springframework/core/env/Environment;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getBean$0(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 0

    .line 149
    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic lambda$getBean$1(I)[Ljava/lang/Class;
    .locals 0

    .line 149
    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public static publishEvent(Ljava/lang/Object;)V
    .locals 1

    .line 283
    sget-object v0, Lcn/hutool/extra/spring/SpringUtil;->applicationContext:Lorg/springframework/context/ApplicationContext;

    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0, p0}, Lorg/springframework/context/ApplicationContext;->publishEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static publishEvent(Lorg/springframework/context/ApplicationEvent;)V
    .locals 1

    .line 270
    sget-object v0, Lcn/hutool/extra/spring/SpringUtil;->applicationContext:Lorg/springframework/context/ApplicationContext;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0, p0}, Lorg/springframework/context/ApplicationContext;->publishEvent(Lorg/springframework/context/ApplicationEvent;)V

    :cond_0
    return-void
.end method

.method public static registerBean(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 239
    invoke-static {}, Lcn/hutool/extra/spring/SpringUtil;->getConfigurableBeanFactory()Lorg/springframework/beans/factory/config/ConfigurableListableBeanFactory;

    move-result-object v0

    .line 240
    invoke-interface {v0, p1}, Lorg/springframework/beans/factory/config/ConfigurableListableBeanFactory;->autowireBean(Ljava/lang/Object;)V

    .line 241
    invoke-interface {v0, p0, p1}, Lorg/springframework/beans/factory/config/ConfigurableListableBeanFactory;->registerSingleton(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static unregisterBean(Ljava/lang/String;)V
    .locals 2

    .line 254
    invoke-static {}, Lcn/hutool/extra/spring/SpringUtil;->getConfigurableBeanFactory()Lorg/springframework/beans/factory/config/ConfigurableListableBeanFactory;

    move-result-object v0

    .line 255
    instance-of v1, v0, Lorg/springframework/beans/factory/support/DefaultSingletonBeanRegistry;

    if-eqz v1, :cond_0

    .line 256
    check-cast v0, Lorg/springframework/beans/factory/support/DefaultSingletonBeanRegistry;

    .line 257
    invoke-virtual {v0, p0}, Lorg/springframework/beans/factory/support/DefaultSingletonBeanRegistry;->destroySingleton(Ljava/lang/String;)V

    return-void

    .line 259
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/UtilException;

    const-string v0, "Can not unregister bean, the factory is not a DefaultSingletonBeanRegistry!"

    invoke-direct {p0, v0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public postProcessBeanFactory(Lorg/springframework/beans/factory/config/ConfigurableListableBeanFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/beans/BeansException;
        }
    .end annotation

    .line 49
    sput-object p1, Lcn/hutool/extra/spring/SpringUtil;->beanFactory:Lorg/springframework/beans/factory/config/ConfigurableListableBeanFactory;

    return-void
.end method

.method public setApplicationContext(Lorg/springframework/context/ApplicationContext;)V
    .locals 0

    .line 55
    sput-object p1, Lcn/hutool/extra/spring/SpringUtil;->applicationContext:Lorg/springframework/context/ApplicationContext;

    return-void
.end method
