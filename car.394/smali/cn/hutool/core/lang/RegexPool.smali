.class public interface abstract Lcn/hutool/core/lang/RegexPool;
.super Ljava/lang/Object;
.source "RegexPool.java"


# static fields
.field public static final BIRTHDAY:Ljava/lang/String; = "^(\\d{2,4})([/\\-.\u5e74]?)(\\d{1,2})([/\\-.\u6708]?)(\\d{1,2})\u65e5?$"

.field public static final CAR_DRIVING_LICENCE:Ljava/lang/String; = "^[0-9]{12}$"

.field public static final CAR_VIN:Ljava/lang/String; = "^[A-HJ-NPR-Z0-9]{8}[X0-9]([A-HJ-NPR-Z0-9]{3}\\d{5}|[A-HJ-NPR-Z0-9]{5}\\d{3})$"

.field public static final CHINESE:Ljava/lang/String; = "[\u2e80-\u2eff\u2f00-\u2fdf\u31c0-\u31ef\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff\ud840\udc00-\ud869\udedf\ud869\udf00-\ud86d\udf3f\ud86d\udf40-\ud86e\udc1f\ud86e\udc20-\ud873\udeaf\ud87e\udc00-\ud87e\ude1f]"

.field public static final CHINESES:Ljava/lang/String; = "[\u2e80-\u2eff\u2f00-\u2fdf\u31c0-\u31ef\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff\ud840\udc00-\ud869\udedf\ud869\udf00-\ud86d\udf3f\ud86d\udf40-\ud86e\udc1f\ud86e\udc20-\ud873\udeaf\ud87e\udc00-\ud87e\ude1f]+"

.field public static final CHINESE_NAME:Ljava/lang/String; = "^[\u2e80-\u9fff\u00b7]{2,60}$"

.field public static final CITIZEN_ID:Ljava/lang/String; = "[1-9]\\d{5}[1-2]\\d{3}((0\\d)|(1[0-2]))(([012]\\d)|3[0-1])\\d{3}(\\d|X|x)"

.field public static final CREDIT_CODE:Ljava/lang/String; = "^[0-9A-HJ-NPQRTUWXY]{2}\\d{6}[0-9A-HJ-NPQRTUWXY]{10}$"

.field public static final EMAIL:Ljava/lang/String; = "(?:[a-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&\'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)])"

.field public static final EMAIL_WITH_CHINESE:Ljava/lang/String; = "(?:[a-z0-9\\u4e00-\\u9fa5!#$%&\'*+/=?^_`{|}~-]+(?:\\.[a-z0-9\\u4e00-\\u9fa5!#$%&\'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9\\u4e00-\\u9fa5](?:[a-z0-9\\u4e00-\\u9fa5-]*[a-z0-9\\u4e00-\\u9fa5])?\\.)+[a-z0-9\\u4e00-\\u9fa5](?:[a-z0-9\\u4e00-\\u9fa5-]*[a-z0-9\\u4e00-\\u9fa5])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9\\u4e00-\\u9fa5-]*[a-z0-9\\u4e00-\\u9fa5]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)])"

.field public static final GENERAL:Ljava/lang/String; = "^\\w+$"

.field public static final GENERAL_WITH_CHINESE:Ljava/lang/String; = "^[\u4e00-\u9fff\\w]+$"

.field public static final GROUP_VAR:Ljava/lang/String; = "\\$(\\d+)"

.field public static final HEX:Ljava/lang/String; = "^[a-fA-F0-9]+$"

.field public static final IPV4:Ljava/lang/String; = "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)$"

.field public static final IPV6:Ljava/lang/String; = "(([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]+|::(ffff(:0{1,4})?:)?((25[0-5]|(2[0-4]|1?[0-9])?[0-9])\\.){3}(25[0-5]|(2[0-4]|1?[0-9])?[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1?[0-9])?[0-9])\\.){3}(25[0-5]|(2[0-4]|1?[0-9])?[0-9]))"

.field public static final MAC_ADDRESS:Ljava/lang/String; = "((?:[a-fA-F0-9]{1,2}[:-]){5}[a-fA-F0-9]{1,2})|0x(\\d{12}).+ETHER"

.field public static final MOBILE:Ljava/lang/String; = "(?:0|86|\\+86)?1[3-9]\\d{9}"

.field public static final MOBILE_HK:Ljava/lang/String; = "(?:0|852|\\+852)?\\d{8}"

.field public static final MOBILE_MO:Ljava/lang/String; = "(?:0|853|\\+853)?(?:|-)6\\d{7}"

.field public static final MOBILE_TW:Ljava/lang/String; = "(?:0|886|\\+886)?(?:|-)09\\d{8}"

.field public static final MONEY:Ljava/lang/String; = "^(\\d+(?:\\.\\d+)?)$"

.field public static final NUMBERS:Ljava/lang/String; = "\\d+"

.field public static final PLATE_NUMBER:Ljava/lang/String; = "^(([\u4eac\u6d25\u6caa\u6e1d\u5180\u8c6b\u4e91\u8fbd\u9ed1\u6e58\u7696\u9c81\u65b0\u82cf\u6d59\u8d63\u9102\u6842\u7518\u664b\u8499\u9655\u5409\u95fd\u8d35\u7ca4\u9752\u85cf\u5ddd\u5b81\u743c\u4f7f\u9886][A-Z](([0-9]{5}[ABCDEFGHJK])|([ABCDEFGHJK]([A-HJ-NP-Z0-9])[0-9]{4})))|([\u4eac\u6d25\u6caa\u6e1d\u5180\u8c6b\u4e91\u8fbd\u9ed1\u6e58\u7696\u9c81\u65b0\u82cf\u6d59\u8d63\u9102\u6842\u7518\u664b\u8499\u9655\u5409\u95fd\u8d35\u7ca4\u9752\u85cf\u5ddd\u5b81\u743c\u4f7f\u9886]\\d{3}\\d{1,3}[\u9886])|([\u4eac\u6d25\u6caa\u6e1d\u5180\u8c6b\u4e91\u8fbd\u9ed1\u6e58\u7696\u9c81\u65b0\u82cf\u6d59\u8d63\u9102\u6842\u7518\u664b\u8499\u9655\u5409\u95fd\u8d35\u7ca4\u9752\u85cf\u5ddd\u5b81\u743c\u4f7f\u9886][A-Z][A-HJ-NP-Z0-9]{4}[A-HJ-NP-Z0-9\u6302\u5b66\u8b66\u6e2f\u6fb3\u4f7f\u9886]))$"

.field public static final TEL:Ljava/lang/String; = "(010|02\\d|0[3-9]\\d{2})-?(\\d{6,8})"

.field public static final TEL_400_800:Ljava/lang/String; = "0\\d{2,3}[\\- ]?[1-9]\\d{6,7}|[48]00[\\- ]?[1-9]\\d{2}[\\- ]?\\d{4}"

.field public static final TIME:Ljava/lang/String; = "\\d{1,2}:\\d{1,2}(:\\d{1,2})?"

.field public static final URI:Ljava/lang/String; = "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?"

.field public static final URL:Ljava/lang/String; = "[a-zA-Z]+://[\\w-+&@#/%?=~_|!:,.;]*[\\w-+&@#/%=~_|]"

.field public static final URL_HTTP:Ljava/lang/String; = "(https?|ftp|file)://[\\w-+&@#/%?=~_|!:,.;]*[\\w-+&@#/%=~_|]"

.field public static final UUID:Ljava/lang/String; = "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"

.field public static final UUID_SIMPLE:Ljava/lang/String; = "^[0-9a-fA-F]{32}$"

.field public static final WORD:Ljava/lang/String; = "[a-zA-Z]+"

.field public static final ZIP_CODE:Ljava/lang/String; = "^(0[1-7]|1[0-356]|2[0-7]|3[0-6]|4[0-7]|5[0-7]|6[0-7]|7[0-5]|8[0-9]|9[0-8])\\d{4}|99907[78]$"
