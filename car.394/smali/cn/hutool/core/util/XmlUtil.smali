.class public Lcn/hutool/core/util/XmlUtil;
.super Ljava/lang/Object;
.source "XmlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/util/XmlUtil$UniversalNamespaceCache;
    }
.end annotation


# static fields
.field public static final AMP:Ljava/lang/String; = "&amp;"

.field public static final APOS:Ljava/lang/String; = "&apos;"

.field public static final COMMENT_REGEX:Ljava/lang/String; = "(?s)<!--.+?-->"

.field public static final GT:Ljava/lang/String; = "&gt;"

.field public static final INDENT_DEFAULT:I = 0x2

.field public static final INVALID_REGEX:Ljava/lang/String; = "[\\x00-\\x08\\x0b-\\x0c\\x0e-\\x1f]"

.field public static final LT:Ljava/lang/String; = "&lt;"

.field public static final NBSP:Ljava/lang/String; = "&nbsp;"

.field public static final QUOTE:Ljava/lang/String; = "&quot;"

.field private static defaultDocumentBuilderFactory:Ljava/lang/String; = "com.sun.org.apache.xerces.internal.jaxp.DocumentBuilderFactoryImpl"

.field private static factory:Ljavax/xml/parsers/SAXParserFactory; = null

.field private static namespaceAware:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/Object;)V
    .locals 1

    .line 1342
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1344
    check-cast p2, Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/XmlUtil;->appendMap(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/Map;)V

    goto :goto_0

    .line 1345
    :cond_0
    instance-of v0, p2, Ljava/util/Iterator;

    if-eqz v0, :cond_1

    .line 1347
    check-cast p2, Ljava/util/Iterator;

    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/XmlUtil;->appendIterator(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/Iterator;)V

    goto :goto_0

    .line 1348
    :cond_1
    instance-of v0, p2, Ljava/lang/Iterable;

    if-eqz v0, :cond_2

    .line 1350
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/XmlUtil;->appendIterator(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/Iterator;)V

    goto :goto_0

    .line 1352
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/XmlUtil;->appendText(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/CharSequence;)Lorg/w3c/dom/Node;

    :goto_0
    return-void
.end method

.method public static append(Lorg/w3c/dom/Node;Ljava/lang/Object;)V
    .locals 1

    .line 1329
    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcn/hutool/core/util/XmlUtil;->append(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/Object;)V

    return-void
.end method

.method public static appendChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    const/4 v0, 0x0

    .line 1290
    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/XmlUtil;->appendChild(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public static appendChild(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    .line 1303
    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez p2, :cond_0

    .line 1304
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 1305
    :goto_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1
.end method

.method private static appendIterator(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/Iterator;)V
    .locals 4

    .line 1385
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x1

    .line 1388
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1389
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1391
    invoke-static {p0, p1, v2}, Lcn/hutool/core/util/XmlUtil;->append(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/Object;)V

    move v1, v3

    goto :goto_0

    .line 1394
    :cond_0
    invoke-interface {p1, v3}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1395
    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1396
    invoke-static {p0, v3, v2}, Lcn/hutool/core/util/XmlUtil;->append(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static appendMap(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/Map;)V
    .locals 1

    .line 1366
    new-instance v0, Lcn/hutool/core/util/XmlUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcn/hutool/core/util/XmlUtil$$ExternalSyntheticLambda0;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private static appendText(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/CharSequence;)Lorg/w3c/dom/Node;
    .locals 0

    .line 1411
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->str(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static appendText(Lorg/w3c/dom/Node;Ljava/lang/CharSequence;)Lorg/w3c/dom/Node;
    .locals 1

    .line 1318
    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcn/hutool/core/util/XmlUtil;->appendText(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/CharSequence;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static beanToXml(Ljava/lang/Object;)Lorg/w3c/dom/Document;
    .locals 1

    const/4 v0, 0x0

    .line 1236
    invoke-static {p0, v0}, Lcn/hutool/core/util/XmlUtil;->beanToXml(Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static beanToXml(Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1

    const/4 v0, 0x0

    .line 1249
    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/XmlUtil;->beanToXml(Ljava/lang/Object;Ljava/lang/String;Z)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static beanToXml(Ljava/lang/Object;Ljava/lang/String;Z)Lorg/w3c/dom/Document;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1266
    invoke-static {p0, v0, p2}, Lcn/hutool/core/bean/BeanUtil;->beanToMap(Ljava/lang/Object;ZZ)Ljava/util/Map;

    move-result-object p2

    .line 1267
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 1266
    invoke-static {p2, p0, p1}, Lcn/hutool/core/util/XmlUtil;->mapToXml(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static cleanComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "(?s)<!--.+?-->"

    const-string v1, ""

    .line 737
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cleanInvalid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "[\\x00-\\x08\\x0b-\\x0c\\x0e-\\x1f]"

    const-string v1, ""

    .line 723
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 4

    .line 634
    :try_start_0
    invoke-static {}, Lcn/hutool/core/util/XmlUtil;->createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 636
    new-instance v1, Lcn/hutool/core/exceptions/UtilException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Create xml document error!"

    invoke-direct {v1, v0, v3, v2}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 2

    .line 652
    sget-object v0, Lcn/hutool/core/util/XmlUtil;->defaultDocumentBuilderFactory:Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    sget-object v0, Lcn/hutool/core/util/XmlUtil;->defaultDocumentBuilderFactory:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    goto :goto_0

    .line 655
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 658
    :goto_0
    sget-boolean v1, Lcn/hutool/core/util/XmlUtil;->namespaceAware:Z

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 659
    invoke-static {v0}, Lcn/hutool/core/util/XmlUtil;->disableXXE(Ljavax/xml/parsers/DocumentBuilderFactory;)Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    return-object v0
.end method

.method public static createXPath()Ljavax/xml/xpath/XPath;
    .locals 1

    .line 861
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    return-object v0
.end method

.method public static createXml()Lorg/w3c/dom/Document;
    .locals 1

    .line 622
    invoke-static {}, Lcn/hutool/core/util/XmlUtil;->createDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static createXml(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1

    const/4 v0, 0x0

    .line 670
    invoke-static {p0, v0}, Lcn/hutool/core/util/XmlUtil;->createXml(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static createXml(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1

    .line 683
    invoke-static {}, Lcn/hutool/core/util/XmlUtil;->createXml()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez p1, :cond_0

    .line 684
    invoke-interface {v0, p0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    :goto_0
    invoke-interface {v0, p0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public static declared-synchronized disableDefaultDocumentBuilderFactory()V
    .locals 2

    const-class v0, Lcn/hutool/core/util/XmlUtil;

    monitor-enter v0

    const/4 v1, 0x0

    .line 129
    :try_start_0
    sput-object v1, Lcn/hutool/core/util/XmlUtil;->defaultDocumentBuilderFactory:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static disableXXE(Ljavax/xml/parsers/DocumentBuilderFactory;)Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 2

    :try_start_0
    const-string v0, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v1, 0x1

    .line 1427
    invoke-virtual {p0, v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://xml.org/sax/features/external-general-entities"

    const/4 v1, 0x0

    .line 1433
    invoke-virtual {p0, v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://xml.org/sax/features/external-parameter-entities"

    .line 1438
    invoke-virtual {p0, v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    .line 1441
    invoke-virtual {p0, v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 1443
    invoke-virtual {p0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V

    .line 1444
    invoke-virtual {p0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static elementText(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 782
    invoke-static {p0, p1}, Lcn/hutool/core/util/XmlUtil;->getElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 783
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static elementText(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 795
    invoke-static {p0, p1}, Lcn/hutool/core/util/XmlUtil;->getElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 965
    invoke-static {p0}, Lcn/hutool/core/util/EscapeUtil;->escapeHtml4(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 473
    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->parseXml(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->format(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 462
    invoke-static {p0, v0}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Document;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getByXPath(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 3

    .line 915
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 916
    new-instance v0, Lcn/hutool/core/util/XmlUtil$UniversalNamespaceCache;

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/core/util/XmlUtil$UniversalNamespaceCache;-><init>(Lorg/w3c/dom/Node;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 918
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/util/XmlUtil;->getByXPath(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getByXPath(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/Object;
    .locals 1

    .line 935
    invoke-static {}, Lcn/hutool/core/util/XmlUtil;->createXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 937
    invoke-interface {v0, p3}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 940
    :cond_0
    :try_start_0
    instance-of p3, p1, Lorg/xml/sax/InputSource;

    if-eqz p3, :cond_1

    .line 941
    check-cast p1, Lorg/xml/sax/InputSource;

    invoke-interface {v0, p0, p1, p2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 943
    :cond_1
    invoke-interface {v0, p0, p1, p2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 946
    new-instance p1, Lcn/hutool/core/exceptions/UtilException;

    invoke-direct {p1, p0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5

    .line 760
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 761
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 766
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_2

    .line 767
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    if-ne v4, p0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    return-object v2
.end method

.method public static getElementByXPath(Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;
    .locals 0

    .line 874
    invoke-static {p0, p1}, Lcn/hutool/core/util/XmlUtil;->getNodeByXPath(Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public static getElements(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .line 748
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 749
    :goto_0
    invoke-static {p0, p1}, Lcn/hutool/core/util/XmlUtil;->transElements(Lorg/w3c/dom/Element;Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getNodeByXPath(Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Node;
    .locals 1

    .line 900
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/XmlUtil;->getByXPath(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static getNodeListByXPath(Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/NodeList;
    .locals 1

    .line 887
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/XmlUtil;->getByXPath(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;

    return-object p0
.end method

.method public static getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;
    .locals 1

    .line 710
    instance-of v0, p0, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getRootElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 699
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isElement(Lorg/w3c/dom/Node;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1278
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$appendMap$0(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1368
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcn/hutool/core/util/XmlUtil;->appendChild(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 1370
    invoke-static {p1, p0, p3}, Lcn/hutool/core/util/XmlUtil;->append(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static mapToXml(Ljava/util/Map;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Document;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1206
    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/XmlUtil;->mapToXml(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static mapToXml(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Document;"
        }
    .end annotation

    .line 1220
    invoke-static {}, Lcn/hutool/core/util/XmlUtil;->createXml()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1221
    invoke-static {v0, p1, p2}, Lcn/hutool/core/util/XmlUtil;->appendChild(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 1223
    invoke-static {v0, p1, p0}, Lcn/hutool/core/util/XmlUtil;->appendMap(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/Map;)V

    return-object v0
.end method

.method public static mapToXmlStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "xml"

    .line 1105
    invoke-static {p0, v0}, Lcn/hutool/core/util/XmlUtil;->mapToXml(Ljava/util/Map;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mapToXmlStr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1131
    invoke-static {p0, p1}, Lcn/hutool/core/util/XmlUtil;->mapToXml(Ljava/util/Map;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mapToXmlStr(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1145
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/XmlUtil;->mapToXml(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mapToXmlStr(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1193
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/XmlUtil;->mapToXml(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0, p3, p4, p5}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mapToXmlStr(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1160
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/XmlUtil;->mapToXml(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    const-string p1, "UTF-8"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mapToXmlStr(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1176
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/XmlUtil;->mapToXml(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p0, p1, p3, p4}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mapToXmlStr(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "xml"

    .line 1118
    invoke-static {p0, v0}, Lcn/hutool/core/util/XmlUtil;->mapToXml(Ljava/util/Map;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseXml(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1

    .line 345
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->cleanInvalid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 349
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->getReader(Ljava/lang/CharSequence;)Ljava/io/StringReader;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->readXML(Ljava/io/Reader;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    .line 346
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "XML content string is empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readBySax(Ljava/io/File;Lorg/xml/sax/ContentHandler;)V
    .locals 1

    .line 243
    :try_start_0
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->getInputStream(Ljava/io/File;)Ljava/io/BufferedInputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 244
    :try_start_1
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lcn/hutool/core/util/XmlUtil;->readBySax(Lorg/xml/sax/InputSource;Lorg/xml/sax/ContentHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 247
    throw p1
.end method

.method public static readBySax(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;)V
    .locals 1

    .line 276
    :try_start_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lcn/hutool/core/util/XmlUtil;->readBySax(Lorg/xml/sax/InputSource;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 279
    throw p1
.end method

.method public static readBySax(Ljava/io/Reader;Lorg/xml/sax/ContentHandler;)V
    .locals 1

    .line 260
    :try_start_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcn/hutool/core/util/XmlUtil;->readBySax(Lorg/xml/sax/InputSource;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 263
    throw p1
.end method

.method public static readBySax(Lorg/xml/sax/InputSource;Lorg/xml/sax/ContentHandler;)V
    .locals 8

    .line 292
    sget-object v0, Lcn/hutool/core/util/XmlUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    const-string v2, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const-string v3, "http://xml.org/sax/features/external-general-entities"

    const/4 v4, 0x1

    const-string v5, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 293
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/util/XmlUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    .line 294
    invoke-virtual {v0, v6}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 295
    sget-object v0, Lcn/hutool/core/util/XmlUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    sget-boolean v7, Lcn/hutool/core/util/XmlUtil;->namespaceAware:Z

    invoke-virtual {v0, v7}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 299
    :try_start_0
    sget-object v0, Lcn/hutool/core/util/XmlUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, v5, v4}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 300
    sget-object v0, Lcn/hutool/core/util/XmlUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, v3, v6}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 301
    sget-object v0, Lcn/hutool/core/util/XmlUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, v1, v6}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 302
    sget-object v0, Lcn/hutool/core/util/XmlUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, v2, v6}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :catch_0
    :cond_0
    :try_start_1
    sget-object v0, Lcn/hutool/core/util/XmlUtil;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 312
    instance-of v7, p1, Lorg/xml/sax/helpers/DefaultHandler;

    if-eqz v7, :cond_1

    .line 313
    check-cast p1, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-virtual {v0, p0, p1}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    return-void

    .line 318
    :cond_1
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 321
    invoke-interface {v0, v5, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 323
    invoke-interface {v0, v2, v6}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 325
    invoke-interface {v0, v3, v6}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 327
    invoke-interface {v0, v1, v6}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 329
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 330
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 334
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 332
    :goto_0
    new-instance p1, Lcn/hutool/core/exceptions/UtilException;

    invoke-direct {p1, p0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readXML(Ljava/io/File;)Lorg/w3c/dom/Document;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Xml file is null !"

    .line 151
    invoke-static {p0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :catch_0
    :try_start_1
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->getInputStream(Ljava/io/File;)Ljava/io/BufferedInputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    :try_start_2
    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->readXML(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 171
    throw v0

    .line 156
    :cond_0
    new-instance v1, Lcn/hutool/core/exceptions/UtilException;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "[{}] not a file!"

    invoke-direct {v1, p0, v2}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 153
    :cond_1
    new-instance v1, Lcn/hutool/core/exceptions/UtilException;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "File [{}] not a exist!"

    invoke-direct {v1, p0, v2}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static readXML(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 200
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcn/hutool/core/util/XmlUtil;->readXML(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static readXML(Ljava/io/Reader;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 212
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lcn/hutool/core/util/XmlUtil;->readXML(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static readXML(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1

    const/16 v0, 0x3c

    .line 184
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->startWith(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->parseXml(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    .line 187
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->readXML(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static readXML(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 3

    .line 224
    invoke-static {}, Lcn/hutool/core/util/XmlUtil;->createDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 226
    :try_start_0
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 228
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Parse XML from stream error!"

    invoke-direct {v0, p0, v2, v1}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static declared-synchronized setNamespaceAware(Z)V
    .locals 1

    const-class v0, Lcn/hutool/core/util/XmlUtil;

    monitor-enter v0

    .line 139
    :try_start_0
    sput-boolean p0, Lcn/hutool/core/util/XmlUtil;->namespaceAware:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static toFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 484
    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/XmlUtil;->toFile(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static toFile(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 495
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getXmlEncoding()Ljava/lang/String;

    move-result-object p2

    .line 498
    :cond_0
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "UTF-8"

    :cond_1
    const/4 v0, 0x0

    .line 504
    :try_start_0
    invoke-static {p2}, Lcn/hutool/core/util/CharsetUtil;->charset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcn/hutool/core/io/FileUtil;->getWriter(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/io/BufferedWriter;

    move-result-object v0

    const/4 p1, 0x2

    .line 505
    invoke-static {p0, v0, p2, p1}, Lcn/hutool/core/util/XmlUtil;->write(Lorg/w3c/dom/Node;Ljava/io/Writer;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 508
    throw p0
.end method

.method public static toStr(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 0

    .line 376
    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStr(Lorg/w3c/dom/Document;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 430
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Node;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStr(Lorg/w3c/dom/Document;Z)Ljava/lang/String;
    .locals 0

    .line 402
    invoke-static {p0, p1}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Node;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStr(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-static {p0, v0}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Node;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStr(Lorg/w3c/dom/Node;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 416
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStr(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    .line 445
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->getWriter()Ljava/io/StringWriter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 447
    :goto_0
    :try_start_0
    invoke-static {p0, v0, p1, p2, p3}, Lcn/hutool/core/util/XmlUtil;->write(Lorg/w3c/dom/Node;Ljava/io/Writer;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 449
    new-instance p1, Lcn/hutool/core/exceptions/UtilException;

    const-string p2, "Trans xml document to string error!"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-direct {p1, p0, p2, p3}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static toStr(Lorg/w3c/dom/Node;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 389
    invoke-static {p0, v0, p1}, Lcn/hutool/core/util/XmlUtil;->toStr(Lorg/w3c/dom/Node;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static transElements(Lorg/w3c/dom/Element;Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .line 818
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 819
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 823
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 824
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_1

    .line 825
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    if-eqz p0, :cond_0

    .line 826
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    if-ne v4, p0, :cond_1

    .line 827
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static transElements(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 806
    invoke-static {v0, p0}, Lcn/hutool/core/util/XmlUtil;->transElements(Lorg/w3c/dom/Element;Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 576
    invoke-static {p0, p1, p2, p3, v0}, Lcn/hutool/core/util/XmlUtil;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Ljava/lang/String;IZ)V
    .locals 3

    .line 591
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 593
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "yes"

    if-lez p3, :cond_0

    :try_start_1
    const-string v2, "indent"

    .line 595
    invoke-virtual {v0, v2, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "doctype-public"

    .line 597
    invoke-virtual {v0, v2, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "{http://xml.apache.org/xslt}indent-amount"

    .line 598
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_0
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "encoding"

    .line 601
    invoke-virtual {v0, p3, p2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    const-string p2, "omit-xml-declaration"

    .line 604
    invoke-virtual {v0, p2, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_2
    invoke-virtual {v0, p0, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 608
    new-instance p1, Lcn/hutool/core/exceptions/UtilException;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Trans xml document to string error!"

    invoke-direct {p1, p0, p3, p2}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 977
    invoke-static {p0}, Lcn/hutool/core/util/EscapeUtil;->unescapeHtml4(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static write(Lorg/w3c/dom/Node;Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 1

    .line 548
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p0, p2, p3}, Lcn/hutool/core/util/XmlUtil;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Ljava/lang/String;I)V

    return-void
.end method

.method public static write(Lorg/w3c/dom/Node;Ljava/io/OutputStream;Ljava/lang/String;IZ)V
    .locals 1

    .line 562
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p0, p2, p3, p4}, Lcn/hutool/core/util/XmlUtil;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static write(Lorg/w3c/dom/Node;Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 1

    .line 521
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-static {v0, p0, p2, p3}, Lcn/hutool/core/util/XmlUtil;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Ljava/lang/String;I)V

    return-void
.end method

.method public static write(Lorg/w3c/dom/Node;Ljava/io/Writer;Ljava/lang/String;IZ)V
    .locals 1

    .line 535
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-static {v0, p0, p2, p3, p4}, Lcn/hutool/core/util/XmlUtil;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static writeObjectAsXml(Ljava/io/File;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 845
    :try_start_0
    new-instance v1, Ljava/beans/XMLEncoder;

    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->getOutputStream(Ljava/io/File;)Ljava/io/BufferedOutputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/beans/XMLEncoder;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 846
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/beans/XMLEncoder;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    invoke-static {v1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/lang/AutoCloseable;)V

    .line 850
    throw p0
.end method

.method public static xmlToBean(Lorg/w3c/dom/Node;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1002
    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->xmlToMap(Lorg/w3c/dom/Node;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1003
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1004
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1005
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcn/hutool/core/collection/CollUtil;->getFirst(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1006
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/bean/BeanUtil;->toBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1011
    :cond_0
    invoke-static {p0, p1}, Lcn/hutool/core/bean/BeanUtil;->toBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static xmlToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 988
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/util/XmlUtil;->xmlToMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static xmlToMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1035
    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->parseXml(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 1036
    invoke-static {p0}, Lcn/hutool/core/util/XmlUtil;->getRootElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 1037
    invoke-interface {p0}, Lorg/w3c/dom/Element;->normalize()V

    .line 1039
    invoke-static {p0, p1}, Lcn/hutool/core/util/XmlUtil;->xmlToMap(Lorg/w3c/dom/Node;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static xmlToMap(Lorg/w3c/dom/Node;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1022
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/util/XmlUtil;->xmlToMap(Lorg/w3c/dom/Node;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static xmlToMap(Lorg/w3c/dom/Node;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1053
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1055
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 1056
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    .line 1060
    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1061
    invoke-static {v3}, Lcn/hutool/core/util/XmlUtil;->isElement(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 1065
    :cond_1
    check-cast v3, Lorg/w3c/dom/Element;

    .line 1066
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1068
    invoke-interface {v3}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1070
    invoke-static {v3}, Lcn/hutool/core/util/XmlUtil;->xmlToMap(Lorg/w3c/dom/Node;)Ljava/util/Map;

    move-result-object v5

    .line 1071
    invoke-static {v5}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 1074
    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1077
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_6

    if-eqz v4, :cond_5

    .line 1083
    instance-of v6, v4, Ljava/util/List;

    if-eqz v6, :cond_4

    .line 1084
    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1086
    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-static {v6}, Lcn/hutool/core/collection/CollUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1089
    :cond_5
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object p1
.end method
