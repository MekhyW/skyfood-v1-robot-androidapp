.class public Lorg/java_websocket/util/Charsetfunctions;
.super Ljava/lang/Object;
.source "Charsetfunctions.java"


# static fields
.field private static final codingErrorAction:Ljava/nio/charset/CodingErrorAction;

.field private static final utf8d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 46
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    sput-object v0, Lorg/java_websocket/util/Charsetfunctions;->codingErrorAction:Ljava/nio/charset/CodingErrorAction;

    const/16 v0, 0x190

    new-array v0, v0, [I

    const/16 v1, 0x80

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x81

    aput v2, v0, v1

    const/16 v1, 0x82

    aput v2, v0, v1

    const/16 v1, 0x83

    aput v2, v0, v1

    const/16 v1, 0x84

    aput v2, v0, v1

    const/16 v1, 0x85

    aput v2, v0, v1

    const/16 v1, 0x86

    aput v2, v0, v1

    const/16 v1, 0x87

    aput v2, v0, v1

    const/16 v1, 0x88

    aput v2, v0, v1

    const/16 v1, 0x89

    aput v2, v0, v1

    const/16 v1, 0x8a

    aput v2, v0, v1

    const/16 v1, 0x8b

    aput v2, v0, v1

    const/16 v1, 0x8c

    aput v2, v0, v1

    const/16 v1, 0x8d

    aput v2, v0, v1

    const/16 v1, 0x8e

    aput v2, v0, v1

    const/16 v1, 0x8f

    aput v2, v0, v1

    const/16 v1, 0x90

    const/16 v3, 0x9

    aput v3, v0, v1

    const/16 v1, 0x91

    aput v3, v0, v1

    const/16 v1, 0x92

    aput v3, v0, v1

    const/16 v1, 0x93

    aput v3, v0, v1

    const/16 v1, 0x94

    aput v3, v0, v1

    const/16 v1, 0x95

    aput v3, v0, v1

    const/16 v1, 0x96

    aput v3, v0, v1

    const/16 v1, 0x97

    aput v3, v0, v1

    const/16 v1, 0x98

    aput v3, v0, v1

    const/16 v1, 0x99

    aput v3, v0, v1

    const/16 v1, 0x9a

    aput v3, v0, v1

    const/16 v1, 0x9b

    aput v3, v0, v1

    const/16 v1, 0x9c

    aput v3, v0, v1

    const/16 v1, 0x9d

    aput v3, v0, v1

    const/16 v1, 0x9e

    aput v3, v0, v1

    const/16 v1, 0x9f

    aput v3, v0, v1

    const/16 v1, 0xa0

    const/4 v3, 0x7

    aput v3, v0, v1

    const/16 v1, 0xa1

    aput v3, v0, v1

    const/16 v1, 0xa2

    aput v3, v0, v1

    const/16 v1, 0xa3

    aput v3, v0, v1

    const/16 v1, 0xa4

    aput v3, v0, v1

    const/16 v1, 0xa5

    aput v3, v0, v1

    const/16 v1, 0xa6

    aput v3, v0, v1

    const/16 v1, 0xa7

    aput v3, v0, v1

    const/16 v1, 0xa8

    aput v3, v0, v1

    const/16 v1, 0xa9

    aput v3, v0, v1

    const/16 v1, 0xaa

    aput v3, v0, v1

    const/16 v1, 0xab

    aput v3, v0, v1

    const/16 v1, 0xac

    aput v3, v0, v1

    const/16 v1, 0xad

    aput v3, v0, v1

    const/16 v1, 0xae

    aput v3, v0, v1

    const/16 v1, 0xaf

    aput v3, v0, v1

    const/16 v1, 0xb0

    aput v3, v0, v1

    const/16 v1, 0xb1

    aput v3, v0, v1

    const/16 v1, 0xb2

    aput v3, v0, v1

    const/16 v1, 0xb3

    aput v3, v0, v1

    const/16 v1, 0xb4

    aput v3, v0, v1

    const/16 v1, 0xb5

    aput v3, v0, v1

    const/16 v1, 0xb6

    aput v3, v0, v1

    const/16 v1, 0xb7

    aput v3, v0, v1

    const/16 v1, 0xb8

    aput v3, v0, v1

    const/16 v1, 0xb9

    aput v3, v0, v1

    const/16 v1, 0xba

    aput v3, v0, v1

    const/16 v1, 0xbb

    aput v3, v0, v1

    const/16 v1, 0xbc

    aput v3, v0, v1

    const/16 v1, 0xbd

    aput v3, v0, v1

    const/16 v1, 0xbe

    aput v3, v0, v1

    const/16 v1, 0xbf

    aput v3, v0, v1

    const/16 v1, 0xc0

    const/16 v4, 0x8

    aput v4, v0, v1

    const/16 v1, 0xc1

    aput v4, v0, v1

    const/16 v1, 0xc2

    const/4 v5, 0x2

    aput v5, v0, v1

    const/16 v1, 0xc3

    aput v5, v0, v1

    const/16 v1, 0xc4

    aput v5, v0, v1

    const/16 v1, 0xc5

    aput v5, v0, v1

    const/16 v1, 0xc6

    aput v5, v0, v1

    const/16 v1, 0xc7

    aput v5, v0, v1

    const/16 v1, 0xc8

    aput v5, v0, v1

    const/16 v1, 0xc9

    aput v5, v0, v1

    const/16 v1, 0xca

    aput v5, v0, v1

    const/16 v1, 0xcb

    aput v5, v0, v1

    const/16 v1, 0xcc

    aput v5, v0, v1

    const/16 v1, 0xcd

    aput v5, v0, v1

    const/16 v1, 0xce

    aput v5, v0, v1

    const/16 v1, 0xcf

    aput v5, v0, v1

    const/16 v1, 0xd0

    aput v5, v0, v1

    const/16 v1, 0xd1

    aput v5, v0, v1

    const/16 v1, 0xd2

    aput v5, v0, v1

    const/16 v1, 0xd3

    aput v5, v0, v1

    const/16 v1, 0xd4

    aput v5, v0, v1

    const/16 v1, 0xd5

    aput v5, v0, v1

    const/16 v1, 0xd6

    aput v5, v0, v1

    const/16 v1, 0xd7

    aput v5, v0, v1

    const/16 v1, 0xd8

    aput v5, v0, v1

    const/16 v1, 0xd9

    aput v5, v0, v1

    const/16 v1, 0xda

    aput v5, v0, v1

    const/16 v1, 0xdb

    aput v5, v0, v1

    const/16 v1, 0xdc

    aput v5, v0, v1

    const/16 v1, 0xdd

    aput v5, v0, v1

    const/16 v1, 0xde

    aput v5, v0, v1

    const/16 v1, 0xdf

    aput v5, v0, v1

    const/16 v1, 0xe0

    const/16 v6, 0xa

    aput v6, v0, v1

    const/16 v1, 0xe1

    const/4 v6, 0x3

    aput v6, v0, v1

    const/16 v1, 0xe2

    aput v6, v0, v1

    const/16 v1, 0xe3

    aput v6, v0, v1

    const/16 v1, 0xe4

    aput v6, v0, v1

    const/16 v1, 0xe5

    aput v6, v0, v1

    const/16 v1, 0xe6

    aput v6, v0, v1

    const/16 v1, 0xe7

    aput v6, v0, v1

    const/16 v1, 0xe8

    aput v6, v0, v1

    const/16 v1, 0xe9

    aput v6, v0, v1

    const/16 v1, 0xea

    aput v6, v0, v1

    const/16 v1, 0xeb

    aput v6, v0, v1

    const/16 v1, 0xec

    aput v6, v0, v1

    const/16 v1, 0xed

    const/4 v7, 0x4

    aput v7, v0, v1

    const/16 v1, 0xee

    aput v6, v0, v1

    const/16 v1, 0xef

    aput v6, v0, v1

    const/16 v1, 0xf0

    const/16 v8, 0xb

    aput v8, v0, v1

    const/16 v1, 0xf1

    const/4 v8, 0x6

    aput v8, v0, v1

    const/16 v1, 0xf2

    aput v8, v0, v1

    const/16 v1, 0xf3

    aput v8, v0, v1

    const/16 v1, 0xf4

    const/4 v9, 0x5

    aput v9, v0, v1

    const/16 v1, 0xf5

    aput v4, v0, v1

    const/16 v1, 0xf6

    aput v4, v0, v1

    const/16 v1, 0xf7

    aput v4, v0, v1

    const/16 v1, 0xf8

    aput v4, v0, v1

    const/16 v1, 0xf9

    aput v4, v0, v1

    const/16 v1, 0xfa

    aput v4, v0, v1

    const/16 v1, 0xfb

    aput v4, v0, v1

    const/16 v1, 0xfc

    aput v4, v0, v1

    const/16 v1, 0xfd

    aput v4, v0, v1

    const/16 v1, 0xfe

    aput v4, v0, v1

    const/16 v1, 0xff

    aput v4, v0, v1

    const/16 v1, 0x101

    aput v2, v0, v1

    const/16 v1, 0x102

    aput v5, v0, v1

    const/16 v1, 0x103

    aput v6, v0, v1

    const/16 v1, 0x104

    aput v9, v0, v1

    const/16 v1, 0x105

    aput v4, v0, v1

    const/16 v1, 0x106

    aput v3, v0, v1

    const/16 v1, 0x107

    aput v2, v0, v1

    const/16 v1, 0x108

    aput v2, v0, v1

    const/16 v1, 0x109

    aput v2, v0, v1

    const/16 v1, 0x10a

    aput v7, v0, v1

    const/16 v1, 0x10b

    aput v8, v0, v1

    const/16 v1, 0x10c

    aput v2, v0, v1

    const/16 v1, 0x10d

    aput v2, v0, v1

    const/16 v1, 0x10e

    aput v2, v0, v1

    const/16 v1, 0x10f

    aput v2, v0, v1

    const/16 v1, 0x110

    aput v2, v0, v1

    const/16 v1, 0x111

    aput v2, v0, v1

    const/16 v1, 0x112

    aput v2, v0, v1

    const/16 v1, 0x113

    aput v2, v0, v1

    const/16 v1, 0x114

    aput v2, v0, v1

    const/16 v1, 0x115

    aput v2, v0, v1

    const/16 v1, 0x116

    aput v2, v0, v1

    const/16 v1, 0x117

    aput v2, v0, v1

    const/16 v1, 0x118

    aput v2, v0, v1

    const/16 v1, 0x119

    aput v2, v0, v1

    const/16 v1, 0x11a

    aput v2, v0, v1

    const/16 v1, 0x11b

    aput v2, v0, v1

    const/16 v1, 0x11c

    aput v2, v0, v1

    const/16 v1, 0x11d

    aput v2, v0, v1

    const/16 v1, 0x11e

    aput v2, v0, v1

    const/16 v1, 0x11f

    aput v2, v0, v1

    const/16 v1, 0x120

    aput v2, v0, v1

    const/16 v1, 0x122

    aput v2, v0, v1

    const/16 v1, 0x123

    aput v2, v0, v1

    const/16 v1, 0x124

    aput v2, v0, v1

    const/16 v1, 0x125

    aput v2, v0, v1

    const/16 v1, 0x126

    aput v2, v0, v1

    const/16 v1, 0x128

    aput v2, v0, v1

    const/16 v1, 0x12a

    aput v2, v0, v1

    const/16 v1, 0x12b

    aput v2, v0, v1

    const/16 v1, 0x12c

    aput v2, v0, v1

    const/16 v1, 0x12d

    aput v2, v0, v1

    const/16 v1, 0x12e

    aput v2, v0, v1

    const/16 v1, 0x12f

    aput v2, v0, v1

    const/16 v1, 0x130

    aput v2, v0, v1

    const/16 v1, 0x131

    aput v5, v0, v1

    const/16 v1, 0x132

    aput v2, v0, v1

    const/16 v1, 0x133

    aput v2, v0, v1

    const/16 v1, 0x134

    aput v2, v0, v1

    const/16 v1, 0x135

    aput v2, v0, v1

    const/16 v1, 0x136

    aput v2, v0, v1

    const/16 v1, 0x137

    aput v5, v0, v1

    const/16 v1, 0x138

    aput v2, v0, v1

    const/16 v1, 0x139

    aput v5, v0, v1

    const/16 v1, 0x13a

    aput v2, v0, v1

    const/16 v1, 0x13b

    aput v2, v0, v1

    const/16 v1, 0x13c

    aput v2, v0, v1

    const/16 v1, 0x13d

    aput v2, v0, v1

    const/16 v1, 0x13e

    aput v2, v0, v1

    const/16 v1, 0x13f

    aput v2, v0, v1

    const/16 v1, 0x140

    aput v2, v0, v1

    const/16 v1, 0x141

    aput v2, v0, v1

    const/16 v1, 0x142

    aput v2, v0, v1

    const/16 v1, 0x143

    aput v2, v0, v1

    const/16 v1, 0x144

    aput v2, v0, v1

    const/16 v1, 0x145

    aput v2, v0, v1

    const/16 v1, 0x146

    aput v2, v0, v1

    const/16 v1, 0x147

    aput v5, v0, v1

    const/16 v1, 0x148

    aput v2, v0, v1

    const/16 v1, 0x149

    aput v2, v0, v1

    const/16 v1, 0x14a

    aput v2, v0, v1

    const/16 v1, 0x14b

    aput v2, v0, v1

    const/16 v1, 0x14c

    aput v2, v0, v1

    const/16 v1, 0x14d

    aput v2, v0, v1

    const/16 v1, 0x14e

    aput v2, v0, v1

    const/16 v1, 0x14f

    aput v2, v0, v1

    const/16 v1, 0x150

    aput v2, v0, v1

    const/16 v1, 0x151

    aput v5, v0, v1

    const/16 v1, 0x152

    aput v2, v0, v1

    const/16 v1, 0x153

    aput v2, v0, v1

    const/16 v1, 0x154

    aput v2, v0, v1

    const/16 v1, 0x155

    aput v2, v0, v1

    const/16 v1, 0x156

    aput v2, v0, v1

    const/16 v1, 0x157

    aput v2, v0, v1

    const/16 v1, 0x158

    aput v2, v0, v1

    const/16 v1, 0x159

    aput v5, v0, v1

    const/16 v1, 0x15a

    aput v2, v0, v1

    const/16 v1, 0x15b

    aput v2, v0, v1

    const/16 v1, 0x15c

    aput v2, v0, v1

    const/16 v1, 0x15d

    aput v2, v0, v1

    const/16 v1, 0x15e

    aput v2, v0, v1

    const/16 v1, 0x15f

    aput v2, v0, v1

    const/16 v1, 0x160

    aput v2, v0, v1

    const/16 v1, 0x161

    aput v2, v0, v1

    const/16 v1, 0x162

    aput v2, v0, v1

    const/16 v1, 0x163

    aput v2, v0, v1

    const/16 v1, 0x164

    aput v2, v0, v1

    const/16 v1, 0x165

    aput v2, v0, v1

    const/16 v1, 0x166

    aput v2, v0, v1

    const/16 v1, 0x167

    aput v6, v0, v1

    const/16 v1, 0x168

    aput v2, v0, v1

    const/16 v1, 0x169

    aput v6, v0, v1

    const/16 v1, 0x16a

    aput v2, v0, v1

    const/16 v1, 0x16b

    aput v2, v0, v1

    const/16 v1, 0x16c

    aput v2, v0, v1

    const/16 v1, 0x16d

    aput v2, v0, v1

    const/16 v1, 0x16e

    aput v2, v0, v1

    const/16 v1, 0x16f

    aput v2, v0, v1

    const/16 v1, 0x170

    aput v2, v0, v1

    const/16 v1, 0x171

    aput v6, v0, v1

    const/16 v1, 0x172

    aput v2, v0, v1

    const/16 v1, 0x173

    aput v2, v0, v1

    const/16 v1, 0x174

    aput v2, v0, v1

    const/16 v1, 0x175

    aput v2, v0, v1

    const/16 v1, 0x176

    aput v2, v0, v1

    const/16 v1, 0x177

    aput v6, v0, v1

    const/16 v1, 0x178

    aput v2, v0, v1

    const/16 v1, 0x179

    aput v6, v0, v1

    const/16 v1, 0x17a

    aput v2, v0, v1

    const/16 v1, 0x17b

    aput v2, v0, v1

    const/16 v1, 0x17c

    aput v2, v0, v1

    const/16 v1, 0x17d

    aput v2, v0, v1

    const/16 v1, 0x17e

    aput v2, v0, v1

    const/16 v1, 0x17f

    aput v2, v0, v1

    const/16 v1, 0x180

    aput v2, v0, v1

    const/16 v1, 0x181

    aput v6, v0, v1

    const/16 v1, 0x182

    aput v2, v0, v1

    const/16 v1, 0x183

    aput v2, v0, v1

    const/16 v1, 0x184

    aput v2, v0, v1

    const/16 v1, 0x185

    aput v2, v0, v1

    const/16 v1, 0x186

    aput v2, v0, v1

    const/16 v1, 0x187

    aput v2, v0, v1

    const/16 v1, 0x188

    aput v2, v0, v1

    const/16 v1, 0x189

    aput v2, v0, v1

    const/16 v1, 0x18a

    aput v2, v0, v1

    const/16 v1, 0x18b

    aput v2, v0, v1

    const/16 v1, 0x18c

    aput v2, v0, v1

    const/16 v1, 0x18d

    aput v2, v0, v1

    const/16 v1, 0x18e

    aput v2, v0, v1

    const/16 v1, 0x18f

    aput v2, v0, v1

    .line 105
    sput-object v0, Lorg/java_websocket/util/Charsetfunctions;->utf8d:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asciiBytes(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "ASCII"

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 66
    new-instance v0, Lorg/java_websocket/exceptions/InvalidEncodingException;

    invoke-direct {v0, p0}, Lorg/java_websocket/exceptions/InvalidEncodingException;-><init>(Ljava/io/UnsupportedEncodingException;)V

    throw v0
.end method

.method public static isValidUTF8(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-static {p0, v0}, Lorg/java_websocket/util/Charsetfunctions;->isValidUTF8(Ljava/nio/ByteBuffer;I)Z

    move-result p0

    return p0
.end method

.method public static isValidUTF8(Ljava/nio/ByteBuffer;I)Z
    .locals 6

    .line 132
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-lt p1, v0, :cond_1

    return v3

    .line 138
    :cond_1
    sget-object v4, Lorg/java_websocket/util/Charsetfunctions;->utf8d:[I

    shl-int/lit8 v2, v2, 0x4

    add-int/lit16 v2, v2, 0x100

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v4, v5

    add-int/2addr v2, v5

    aget v2, v4, v2

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static stringAscii([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 71
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/java_websocket/util/Charsetfunctions;->stringAscii([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringAscii([BII)Ljava/lang/String;
    .locals 2

    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 78
    new-instance p1, Lorg/java_websocket/exceptions/InvalidEncodingException;

    invoke-direct {p1, p0}, Lorg/java_websocket/exceptions/InvalidEncodingException;-><init>(Ljava/io/UnsupportedEncodingException;)V

    throw p1
.end method

.method public static stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    const-string v0, "UTF8"

    .line 87
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 88
    sget-object v1, Lorg/java_websocket/util/Charsetfunctions;->codingErrorAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 92
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 93
    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 96
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1, p0}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public static stringUtf8([B)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 83
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/java_websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utf8Bytes(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF8"

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 55
    new-instance v0, Lorg/java_websocket/exceptions/InvalidEncodingException;

    invoke-direct {v0, p0}, Lorg/java_websocket/exceptions/InvalidEncodingException;-><init>(Ljava/io/UnsupportedEncodingException;)V

    throw v0
.end method
