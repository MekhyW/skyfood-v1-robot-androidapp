.class synthetic Lcn/hutool/http/webservice/SoapClient$1;
.super Ljava/lang/Object;
.source "SoapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/http/webservice/SoapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$hutool$http$webservice$SoapProtocol:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 605
    invoke-static {}, Lcn/hutool/http/webservice/SoapProtocol;->values()[Lcn/hutool/http/webservice/SoapProtocol;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/hutool/http/webservice/SoapClient$1;->$SwitchMap$cn$hutool$http$webservice$SoapProtocol:[I

    :try_start_0
    sget-object v1, Lcn/hutool/http/webservice/SoapProtocol;->SOAP_1_1:Lcn/hutool/http/webservice/SoapProtocol;

    invoke-virtual {v1}, Lcn/hutool/http/webservice/SoapProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/hutool/http/webservice/SoapClient$1;->$SwitchMap$cn$hutool$http$webservice$SoapProtocol:[I

    sget-object v1, Lcn/hutool/http/webservice/SoapProtocol;->SOAP_1_2:Lcn/hutool/http/webservice/SoapProtocol;

    invoke-virtual {v1}, Lcn/hutool/http/webservice/SoapProtocol;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
