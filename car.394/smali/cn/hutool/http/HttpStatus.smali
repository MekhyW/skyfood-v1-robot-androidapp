.class public Lcn/hutool/http/HttpStatus;
.super Ljava/lang/Object;
.source "HttpStatus.java"


# static fields
.field public static final HTTP_ACCEPTED:I = 0xca

.field public static final HTTP_ALREADY_REPORTED:I = 0xd0

.field public static final HTTP_BAD_GATEWAY:I = 0x1f6

.field public static final HTTP_BAD_METHOD:I = 0x195

.field public static final HTTP_BAD_REQUEST:I = 0x190

.field public static final HTTP_BANDWIDTH_LIMIT_EXCEEDED:I = 0x1fd

.field public static final HTTP_CHECKPOINT:I = 0x67

.field public static final HTTP_CLIENT_TIMEOUT:I = 0x198

.field public static final HTTP_CONFLICT:I = 0x199

.field public static final HTTP_CONTINUE:I = 0x64

.field public static final HTTP_CREATED:I = 0xc9

.field public static final HTTP_ENTITY_TOO_LARGE:I = 0x19d

.field public static final HTTP_EXPECTATION_FAILED:I = 0x1a1

.field public static final HTTP_FAILED_DEPENDENCY:I = 0x1a8

.field public static final HTTP_FORBIDDEN:I = 0x193

.field public static final HTTP_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final HTTP_GONE:I = 0x19a

.field public static final HTTP_IM_USED:I = 0xe2

.field public static final HTTP_INSUFFICIENT_STORAGE:I = 0x1fb

.field public static final HTTP_INTERNAL_ERROR:I = 0x1f4

.field public static final HTTP_I_AM_A_TEAPOT:I = 0x1a2

.field public static final HTTP_LENGTH_REQUIRED:I = 0x19b

.field public static final HTTP_LOCKED:I = 0x1a7

.field public static final HTTP_LOOP_DETECTED:I = 0x1fc

.field public static final HTTP_MOVED_PERM:I = 0x12d

.field public static final HTTP_MOVED_TEMP:I = 0x12e

.field public static final HTTP_MULTI_STATUS:I = 0xcf

.field public static final HTTP_MULT_CHOICE:I = 0x12c

.field public static final HTTP_NETWORK_AUTHENTICATION_REQUIRED:I = 0x1ff

.field public static final HTTP_NOT_ACCEPTABLE:I = 0x196

.field public static final HTTP_NOT_AUTHORITATIVE:I = 0xcb

.field public static final HTTP_NOT_EXTENDED:I = 0x1fe

.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_NOT_IMPLEMENTED:I = 0x1f5

.field public static final HTTP_NOT_MODIFIED:I = 0x130

.field public static final HTTP_NO_CONTENT:I = 0xcc

.field public static final HTTP_OK:I = 0xc8

.field public static final HTTP_PARTIAL:I = 0xce

.field public static final HTTP_PAYMENT_REQUIRED:I = 0x192

.field public static final HTTP_PERMANENT_REDIRECT:I = 0x134

.field public static final HTTP_PRECONDITION_REQUIRED:I = 0x1ac

.field public static final HTTP_PRECON_FAILED:I = 0x19c

.field public static final HTTP_PROCESSING:I = 0x66

.field public static final HTTP_PROXY_AUTH:I = 0x197

.field public static final HTTP_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field public static final HTTP_REQUEST_HEADER_FIELDS_TOO_LARGE:I = 0x1af

.field public static final HTTP_REQ_TOO_LONG:I = 0x19e

.field public static final HTTP_RESET:I = 0xcd

.field public static final HTTP_SEE_OTHER:I = 0x12f

.field public static final HTTP_SWITCHING_PROTOCOLS:I = 0x65

.field public static final HTTP_TEMP_REDIRECT:I = 0x133

.field public static final HTTP_TOO_EARLY:I = 0x1a9

.field public static final HTTP_TOO_MANY_REQUESTS:I = 0x1ad

.field public static final HTTP_UNAUTHORIZED:I = 0x191

.field public static final HTTP_UNAVAILABLE:I = 0x1f7

.field public static final HTTP_UNAVAILABLE_FOR_LEGAL_REASONS:I = 0x1c3

.field public static final HTTP_UNPROCESSABLE_ENTITY:I = 0x1a6

.field public static final HTTP_UNSUPPORTED_TYPE:I = 0x19f

.field public static final HTTP_UPGRADE_REQUIRED:I = 0x1aa

.field public static final HTTP_USE_PROXY:I = 0x131

.field public static final HTTP_VARIANT_ALSO_NEGOTIATES:I = 0x1fa

.field public static final HTTP_VERSION:I = 0x1f9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRedirected(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x133

    if-eq p0, v0, :cond_1

    const/16 v0, 0x134

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
