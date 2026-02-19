.class public Lorg/java_websocket/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/util/Base64$OutputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DO_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 233
    fill-array-data v1, :array_0

    sput-object v1, Lorg/java_websocket/util/Base64;->_STANDARD_ALPHABET:[B

    const/16 v1, 0x100

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x9

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    aput-byte v3, v1, v2

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    const/4 v5, 0x3

    aput-byte v3, v1, v5

    const/4 v6, 0x4

    aput-byte v3, v1, v6

    const/4 v7, 0x5

    aput-byte v3, v1, v7

    const/4 v8, 0x6

    aput-byte v3, v1, v8

    const/4 v9, 0x7

    aput-byte v3, v1, v9

    const/16 v10, 0x8

    aput-byte v3, v1, v10

    const/16 v11, 0x9

    const/4 v12, -0x5

    aput-byte v12, v1, v11

    const/16 v13, 0xa

    aput-byte v12, v1, v13

    const/16 v14, 0xb

    aput-byte v3, v1, v14

    const/16 v15, 0xc

    aput-byte v3, v1, v15

    const/16 v16, 0xd

    aput-byte v12, v1, v16

    const/16 v17, 0xe

    aput-byte v3, v1, v17

    const/16 v18, 0xf

    aput-byte v3, v1, v18

    const/16 v19, 0x10

    aput-byte v3, v1, v19

    const/16 v20, 0x11

    aput-byte v3, v1, v20

    const/16 v21, 0x12

    aput-byte v3, v1, v21

    const/16 v22, 0x13

    aput-byte v3, v1, v22

    const/16 v23, 0x14

    aput-byte v3, v1, v23

    const/16 v23, 0x15

    aput-byte v3, v1, v23

    const/16 v23, 0x16

    aput-byte v3, v1, v23

    const/16 v23, 0x17

    aput-byte v3, v1, v23

    const/16 v23, 0x18

    aput-byte v3, v1, v23

    const/16 v23, 0x19

    aput-byte v3, v1, v23

    const/16 v23, 0x1a

    aput-byte v3, v1, v23

    const/16 v23, 0x1b

    aput-byte v3, v1, v23

    const/16 v23, 0x1c

    aput-byte v3, v1, v23

    const/16 v23, 0x1d

    aput-byte v3, v1, v23

    const/16 v23, 0x1e

    aput-byte v3, v1, v23

    const/16 v23, 0x1f

    aput-byte v3, v1, v23

    const/16 v23, 0x20

    aput-byte v12, v1, v23

    const/16 v23, 0x21

    aput-byte v3, v1, v23

    const/16 v23, 0x22

    aput-byte v3, v1, v23

    const/16 v23, 0x23

    aput-byte v3, v1, v23

    const/16 v23, 0x24

    aput-byte v3, v1, v23

    const/16 v23, 0x25

    aput-byte v3, v1, v23

    const/16 v23, 0x26

    aput-byte v3, v1, v23

    const/16 v23, 0x27

    aput-byte v3, v1, v23

    const/16 v23, 0x28

    aput-byte v3, v1, v23

    const/16 v23, 0x29

    aput-byte v3, v1, v23

    const/16 v23, 0x2a

    aput-byte v3, v1, v23

    const/16 v23, 0x2b

    const/16 v24, 0x3e

    aput-byte v24, v1, v23

    const/16 v23, 0x2c

    aput-byte v3, v1, v23

    const/16 v23, 0x2d

    aput-byte v3, v1, v23

    const/16 v23, 0x2e

    aput-byte v3, v1, v23

    const/16 v23, 0x2f

    const/16 v24, 0x3f

    aput-byte v24, v1, v23

    const/16 v23, 0x30

    const/16 v24, 0x34

    aput-byte v24, v1, v23

    const/16 v23, 0x31

    const/16 v24, 0x35

    aput-byte v24, v1, v23

    const/16 v23, 0x32

    const/16 v24, 0x36

    aput-byte v24, v1, v23

    const/16 v23, 0x33

    const/16 v24, 0x37

    aput-byte v24, v1, v23

    const/16 v23, 0x34

    const/16 v24, 0x38

    aput-byte v24, v1, v23

    const/16 v23, 0x35

    const/16 v24, 0x39

    aput-byte v24, v1, v23

    const/16 v23, 0x36

    const/16 v24, 0x3a

    aput-byte v24, v1, v23

    const/16 v23, 0x37

    const/16 v24, 0x3b

    aput-byte v24, v1, v23

    const/16 v23, 0x38

    const/16 v24, 0x3c

    aput-byte v24, v1, v23

    const/16 v23, 0x39

    const/16 v24, 0x3d

    aput-byte v24, v1, v23

    const/16 v23, 0x3a

    aput-byte v3, v1, v23

    const/16 v23, 0x3b

    aput-byte v3, v1, v23

    const/16 v23, 0x3c

    aput-byte v3, v1, v23

    const/16 v23, 0x3d

    const/16 v24, -0x1

    aput-byte v24, v1, v23

    const/16 v23, 0x3e

    aput-byte v3, v1, v23

    const/16 v23, 0x3f

    aput-byte v3, v1, v23

    aput-byte v3, v1, v0

    const/16 v23, 0x42

    aput-byte v2, v1, v23

    const/16 v23, 0x43

    aput-byte v4, v1, v23

    const/16 v23, 0x44

    aput-byte v5, v1, v23

    const/16 v23, 0x45

    aput-byte v6, v1, v23

    const/16 v23, 0x46

    aput-byte v7, v1, v23

    const/16 v23, 0x47

    aput-byte v8, v1, v23

    const/16 v23, 0x48

    aput-byte v9, v1, v23

    const/16 v23, 0x49

    aput-byte v10, v1, v23

    const/16 v23, 0x4a

    aput-byte v11, v1, v23

    const/16 v23, 0x4b

    aput-byte v13, v1, v23

    const/16 v23, 0x4c

    aput-byte v14, v1, v23

    const/16 v23, 0x4d

    aput-byte v15, v1, v23

    const/16 v23, 0x4e

    aput-byte v16, v1, v23

    const/16 v23, 0x4f

    aput-byte v17, v1, v23

    const/16 v23, 0x50

    aput-byte v18, v1, v23

    const/16 v23, 0x51

    aput-byte v19, v1, v23

    const/16 v23, 0x52

    aput-byte v20, v1, v23

    const/16 v23, 0x53

    aput-byte v21, v1, v23

    const/16 v23, 0x54

    aput-byte v22, v1, v23

    const/16 v23, 0x55

    const/16 v24, 0x14

    aput-byte v24, v1, v23

    const/16 v23, 0x56

    const/16 v24, 0x15

    aput-byte v24, v1, v23

    const/16 v23, 0x57

    const/16 v24, 0x16

    aput-byte v24, v1, v23

    const/16 v23, 0x58

    const/16 v24, 0x17

    aput-byte v24, v1, v23

    const/16 v23, 0x59

    const/16 v24, 0x18

    aput-byte v24, v1, v23

    const/16 v23, 0x5a

    const/16 v24, 0x19

    aput-byte v24, v1, v23

    const/16 v23, 0x5b

    aput-byte v3, v1, v23

    const/16 v23, 0x5c

    aput-byte v3, v1, v23

    const/16 v23, 0x5d

    aput-byte v3, v1, v23

    const/16 v23, 0x5e

    aput-byte v3, v1, v23

    const/16 v23, 0x5f

    aput-byte v3, v1, v23

    const/16 v23, 0x60

    aput-byte v3, v1, v23

    const/16 v23, 0x61

    const/16 v24, 0x1a

    aput-byte v24, v1, v23

    const/16 v23, 0x62

    const/16 v24, 0x1b

    aput-byte v24, v1, v23

    const/16 v23, 0x63

    const/16 v24, 0x1c

    aput-byte v24, v1, v23

    const/16 v23, 0x64

    const/16 v24, 0x1d

    aput-byte v24, v1, v23

    const/16 v23, 0x65

    const/16 v24, 0x1e

    aput-byte v24, v1, v23

    const/16 v23, 0x66

    const/16 v24, 0x1f

    aput-byte v24, v1, v23

    const/16 v23, 0x67

    const/16 v24, 0x20

    aput-byte v24, v1, v23

    const/16 v23, 0x68

    const/16 v24, 0x21

    aput-byte v24, v1, v23

    const/16 v23, 0x69

    const/16 v24, 0x22

    aput-byte v24, v1, v23

    const/16 v23, 0x6a

    const/16 v24, 0x23

    aput-byte v24, v1, v23

    const/16 v23, 0x6b

    const/16 v24, 0x24

    aput-byte v24, v1, v23

    const/16 v23, 0x6c

    const/16 v24, 0x25

    aput-byte v24, v1, v23

    const/16 v23, 0x6d

    const/16 v24, 0x26

    aput-byte v24, v1, v23

    const/16 v23, 0x6e

    const/16 v24, 0x27

    aput-byte v24, v1, v23

    const/16 v23, 0x6f

    const/16 v24, 0x28

    aput-byte v24, v1, v23

    const/16 v23, 0x70

    const/16 v24, 0x29

    aput-byte v24, v1, v23

    const/16 v23, 0x71

    const/16 v24, 0x2a

    aput-byte v24, v1, v23

    const/16 v23, 0x72

    const/16 v24, 0x2b

    aput-byte v24, v1, v23

    const/16 v23, 0x73

    const/16 v24, 0x2c

    aput-byte v24, v1, v23

    const/16 v23, 0x74

    const/16 v24, 0x2d

    aput-byte v24, v1, v23

    const/16 v23, 0x75

    const/16 v24, 0x2e

    aput-byte v24, v1, v23

    const/16 v23, 0x76

    const/16 v24, 0x2f

    aput-byte v24, v1, v23

    const/16 v23, 0x77

    const/16 v24, 0x30

    aput-byte v24, v1, v23

    const/16 v23, 0x78

    const/16 v24, 0x31

    aput-byte v24, v1, v23

    const/16 v23, 0x79

    const/16 v24, 0x32

    aput-byte v24, v1, v23

    const/16 v23, 0x7a

    const/16 v24, 0x33

    aput-byte v24, v1, v23

    const/16 v23, 0x7b

    aput-byte v3, v1, v23

    const/16 v23, 0x7c

    aput-byte v3, v1, v23

    const/16 v23, 0x7d

    aput-byte v3, v1, v23

    const/16 v23, 0x7e

    aput-byte v3, v1, v23

    const/16 v23, 0x7f

    aput-byte v3, v1, v23

    const/16 v23, 0x80

    aput-byte v3, v1, v23

    const/16 v23, 0x81

    aput-byte v3, v1, v23

    const/16 v23, 0x82

    aput-byte v3, v1, v23

    const/16 v23, 0x83

    aput-byte v3, v1, v23

    const/16 v23, 0x84

    aput-byte v3, v1, v23

    const/16 v23, 0x85

    aput-byte v3, v1, v23

    const/16 v23, 0x86

    aput-byte v3, v1, v23

    const/16 v23, 0x87

    aput-byte v3, v1, v23

    const/16 v23, 0x88

    aput-byte v3, v1, v23

    const/16 v23, 0x89

    aput-byte v3, v1, v23

    const/16 v23, 0x8a

    aput-byte v3, v1, v23

    const/16 v23, 0x8b

    aput-byte v3, v1, v23

    const/16 v23, 0x8c

    aput-byte v3, v1, v23

    const/16 v23, 0x8d

    aput-byte v3, v1, v23

    const/16 v23, 0x8e

    aput-byte v3, v1, v23

    const/16 v23, 0x8f

    aput-byte v3, v1, v23

    const/16 v23, 0x90

    aput-byte v3, v1, v23

    const/16 v23, 0x91

    aput-byte v3, v1, v23

    const/16 v23, 0x92

    aput-byte v3, v1, v23

    const/16 v23, 0x93

    aput-byte v3, v1, v23

    const/16 v23, 0x94

    aput-byte v3, v1, v23

    const/16 v23, 0x95

    aput-byte v3, v1, v23

    const/16 v23, 0x96

    aput-byte v3, v1, v23

    const/16 v23, 0x97

    aput-byte v3, v1, v23

    const/16 v23, 0x98

    aput-byte v3, v1, v23

    const/16 v23, 0x99

    aput-byte v3, v1, v23

    const/16 v23, 0x9a

    aput-byte v3, v1, v23

    const/16 v23, 0x9b

    aput-byte v3, v1, v23

    const/16 v23, 0x9c

    aput-byte v3, v1, v23

    const/16 v23, 0x9d

    aput-byte v3, v1, v23

    const/16 v23, 0x9e

    aput-byte v3, v1, v23

    const/16 v23, 0x9f

    aput-byte v3, v1, v23

    const/16 v23, 0xa0

    aput-byte v3, v1, v23

    const/16 v23, 0xa1

    aput-byte v3, v1, v23

    const/16 v23, 0xa2

    aput-byte v3, v1, v23

    const/16 v23, 0xa3

    aput-byte v3, v1, v23

    const/16 v23, 0xa4

    aput-byte v3, v1, v23

    const/16 v23, 0xa5

    aput-byte v3, v1, v23

    const/16 v23, 0xa6

    aput-byte v3, v1, v23

    const/16 v23, 0xa7

    aput-byte v3, v1, v23

    const/16 v23, 0xa8

    aput-byte v3, v1, v23

    const/16 v23, 0xa9

    aput-byte v3, v1, v23

    const/16 v23, 0xaa

    aput-byte v3, v1, v23

    const/16 v23, 0xab

    aput-byte v3, v1, v23

    const/16 v23, 0xac

    aput-byte v3, v1, v23

    const/16 v23, 0xad

    aput-byte v3, v1, v23

    const/16 v23, 0xae

    aput-byte v3, v1, v23

    const/16 v23, 0xaf

    aput-byte v3, v1, v23

    const/16 v23, 0xb0

    aput-byte v3, v1, v23

    const/16 v23, 0xb1

    aput-byte v3, v1, v23

    const/16 v23, 0xb2

    aput-byte v3, v1, v23

    const/16 v23, 0xb3

    aput-byte v3, v1, v23

    const/16 v23, 0xb4

    aput-byte v3, v1, v23

    const/16 v23, 0xb5

    aput-byte v3, v1, v23

    const/16 v23, 0xb6

    aput-byte v3, v1, v23

    const/16 v23, 0xb7

    aput-byte v3, v1, v23

    const/16 v23, 0xb8

    aput-byte v3, v1, v23

    const/16 v23, 0xb9

    aput-byte v3, v1, v23

    const/16 v23, 0xba

    aput-byte v3, v1, v23

    const/16 v23, 0xbb

    aput-byte v3, v1, v23

    const/16 v23, 0xbc

    aput-byte v3, v1, v23

    const/16 v23, 0xbd

    aput-byte v3, v1, v23

    const/16 v23, 0xbe

    aput-byte v3, v1, v23

    const/16 v23, 0xbf

    aput-byte v3, v1, v23

    const/16 v23, 0xc0

    aput-byte v3, v1, v23

    const/16 v23, 0xc1

    aput-byte v3, v1, v23

    const/16 v23, 0xc2

    aput-byte v3, v1, v23

    const/16 v23, 0xc3

    aput-byte v3, v1, v23

    const/16 v23, 0xc4

    aput-byte v3, v1, v23

    const/16 v23, 0xc5

    aput-byte v3, v1, v23

    const/16 v23, 0xc6

    aput-byte v3, v1, v23

    const/16 v23, 0xc7

    aput-byte v3, v1, v23

    const/16 v23, 0xc8

    aput-byte v3, v1, v23

    const/16 v23, 0xc9

    aput-byte v3, v1, v23

    const/16 v23, 0xca

    aput-byte v3, v1, v23

    const/16 v23, 0xcb

    aput-byte v3, v1, v23

    const/16 v23, 0xcc

    aput-byte v3, v1, v23

    const/16 v23, 0xcd

    aput-byte v3, v1, v23

    const/16 v23, 0xce

    aput-byte v3, v1, v23

    const/16 v23, 0xcf

    aput-byte v3, v1, v23

    const/16 v23, 0xd0

    aput-byte v3, v1, v23

    const/16 v23, 0xd1

    aput-byte v3, v1, v23

    const/16 v23, 0xd2

    aput-byte v3, v1, v23

    const/16 v23, 0xd3

    aput-byte v3, v1, v23

    const/16 v23, 0xd4

    aput-byte v3, v1, v23

    const/16 v23, 0xd5

    aput-byte v3, v1, v23

    const/16 v23, 0xd6

    aput-byte v3, v1, v23

    const/16 v23, 0xd7

    aput-byte v3, v1, v23

    const/16 v23, 0xd8

    aput-byte v3, v1, v23

    const/16 v23, 0xd9

    aput-byte v3, v1, v23

    const/16 v23, 0xda

    aput-byte v3, v1, v23

    const/16 v23, 0xdb

    aput-byte v3, v1, v23

    const/16 v23, 0xdc

    aput-byte v3, v1, v23

    const/16 v23, 0xdd

    aput-byte v3, v1, v23

    const/16 v23, 0xde

    aput-byte v3, v1, v23

    const/16 v23, 0xdf

    aput-byte v3, v1, v23

    const/16 v23, 0xe0

    aput-byte v3, v1, v23

    const/16 v23, 0xe1

    aput-byte v3, v1, v23

    const/16 v23, 0xe2

    aput-byte v3, v1, v23

    const/16 v23, 0xe3

    aput-byte v3, v1, v23

    const/16 v23, 0xe4

    aput-byte v3, v1, v23

    const/16 v23, 0xe5

    aput-byte v3, v1, v23

    const/16 v23, 0xe6

    aput-byte v3, v1, v23

    const/16 v23, 0xe7

    aput-byte v3, v1, v23

    const/16 v23, 0xe8

    aput-byte v3, v1, v23

    const/16 v23, 0xe9

    aput-byte v3, v1, v23

    const/16 v23, 0xea

    aput-byte v3, v1, v23

    const/16 v23, 0xeb

    aput-byte v3, v1, v23

    const/16 v23, 0xec

    aput-byte v3, v1, v23

    const/16 v23, 0xed

    aput-byte v3, v1, v23

    const/16 v23, 0xee

    aput-byte v3, v1, v23

    const/16 v23, 0xef

    aput-byte v3, v1, v23

    const/16 v23, 0xf0

    aput-byte v3, v1, v23

    const/16 v23, 0xf1

    aput-byte v3, v1, v23

    const/16 v23, 0xf2

    aput-byte v3, v1, v23

    const/16 v23, 0xf3

    aput-byte v3, v1, v23

    const/16 v23, 0xf4

    aput-byte v3, v1, v23

    const/16 v23, 0xf5

    aput-byte v3, v1, v23

    const/16 v23, 0xf6

    aput-byte v3, v1, v23

    const/16 v23, 0xf7

    aput-byte v3, v1, v23

    const/16 v23, 0xf8

    aput-byte v3, v1, v23

    const/16 v23, 0xf9

    aput-byte v3, v1, v23

    const/16 v23, 0xfa

    aput-byte v3, v1, v23

    const/16 v23, 0xfb

    aput-byte v3, v1, v23

    const/16 v23, 0xfc

    aput-byte v3, v1, v23

    const/16 v23, 0xfd

    aput-byte v3, v1, v23

    const/16 v23, 0xfe

    aput-byte v3, v1, v23

    const/16 v23, 0xff

    aput-byte v3, v1, v23

    .line 251
    sput-object v1, Lorg/java_websocket/util/Base64;->_STANDARD_DECODABET:[B

    new-array v1, v0, [B

    .line 293
    fill-array-data v1, :array_1

    sput-object v1, Lorg/java_websocket/util/Base64;->_URL_SAFE_ALPHABET:[B

    const/16 v1, 0x100

    new-array v1, v1, [B

    const/16 v23, 0x0

    aput-byte v3, v1, v23

    aput-byte v3, v1, v2

    aput-byte v3, v1, v4

    aput-byte v3, v1, v5

    aput-byte v3, v1, v6

    aput-byte v3, v1, v7

    aput-byte v3, v1, v8

    aput-byte v3, v1, v9

    aput-byte v3, v1, v10

    aput-byte v12, v1, v11

    aput-byte v12, v1, v13

    aput-byte v3, v1, v14

    aput-byte v3, v1, v15

    aput-byte v12, v1, v16

    aput-byte v3, v1, v17

    aput-byte v3, v1, v18

    aput-byte v3, v1, v19

    aput-byte v3, v1, v20

    aput-byte v3, v1, v21

    aput-byte v3, v1, v22

    const/16 v23, 0x14

    aput-byte v3, v1, v23

    const/16 v23, 0x15

    aput-byte v3, v1, v23

    const/16 v23, 0x16

    aput-byte v3, v1, v23

    const/16 v23, 0x17

    aput-byte v3, v1, v23

    const/16 v23, 0x18

    aput-byte v3, v1, v23

    const/16 v23, 0x19

    aput-byte v3, v1, v23

    const/16 v23, 0x1a

    aput-byte v3, v1, v23

    const/16 v23, 0x1b

    aput-byte v3, v1, v23

    const/16 v23, 0x1c

    aput-byte v3, v1, v23

    const/16 v23, 0x1d

    aput-byte v3, v1, v23

    const/16 v23, 0x1e

    aput-byte v3, v1, v23

    const/16 v23, 0x1f

    aput-byte v3, v1, v23

    const/16 v23, 0x20

    aput-byte v12, v1, v23

    const/16 v23, 0x21

    aput-byte v3, v1, v23

    const/16 v23, 0x22

    aput-byte v3, v1, v23

    const/16 v23, 0x23

    aput-byte v3, v1, v23

    const/16 v23, 0x24

    aput-byte v3, v1, v23

    const/16 v23, 0x25

    aput-byte v3, v1, v23

    const/16 v23, 0x26

    aput-byte v3, v1, v23

    const/16 v23, 0x27

    aput-byte v3, v1, v23

    const/16 v23, 0x28

    aput-byte v3, v1, v23

    const/16 v23, 0x29

    aput-byte v3, v1, v23

    const/16 v23, 0x2a

    aput-byte v3, v1, v23

    const/16 v23, 0x2b

    aput-byte v3, v1, v23

    const/16 v23, 0x2c

    aput-byte v3, v1, v23

    const/16 v23, 0x2d

    const/16 v24, 0x3e

    aput-byte v24, v1, v23

    const/16 v23, 0x2e

    aput-byte v3, v1, v23

    const/16 v23, 0x2f

    aput-byte v3, v1, v23

    const/16 v23, 0x30

    const/16 v24, 0x34

    aput-byte v24, v1, v23

    const/16 v23, 0x31

    const/16 v24, 0x35

    aput-byte v24, v1, v23

    const/16 v23, 0x32

    const/16 v24, 0x36

    aput-byte v24, v1, v23

    const/16 v23, 0x33

    const/16 v24, 0x37

    aput-byte v24, v1, v23

    const/16 v23, 0x34

    const/16 v24, 0x38

    aput-byte v24, v1, v23

    const/16 v23, 0x35

    const/16 v24, 0x39

    aput-byte v24, v1, v23

    const/16 v23, 0x36

    const/16 v24, 0x3a

    aput-byte v24, v1, v23

    const/16 v23, 0x37

    const/16 v24, 0x3b

    aput-byte v24, v1, v23

    const/16 v23, 0x38

    const/16 v24, 0x3c

    aput-byte v24, v1, v23

    const/16 v23, 0x39

    const/16 v24, 0x3d

    aput-byte v24, v1, v23

    const/16 v23, 0x3a

    aput-byte v3, v1, v23

    const/16 v23, 0x3b

    aput-byte v3, v1, v23

    const/16 v23, 0x3c

    aput-byte v3, v1, v23

    const/16 v23, 0x3d

    const/16 v24, -0x1

    aput-byte v24, v1, v23

    const/16 v23, 0x3e

    aput-byte v3, v1, v23

    const/16 v23, 0x3f

    aput-byte v3, v1, v23

    aput-byte v3, v1, v0

    const/16 v23, 0x42

    aput-byte v2, v1, v23

    const/16 v23, 0x43

    aput-byte v4, v1, v23

    const/16 v23, 0x44

    aput-byte v5, v1, v23

    const/16 v23, 0x45

    aput-byte v6, v1, v23

    const/16 v23, 0x46

    aput-byte v7, v1, v23

    const/16 v23, 0x47

    aput-byte v8, v1, v23

    const/16 v23, 0x48

    aput-byte v9, v1, v23

    const/16 v23, 0x49

    aput-byte v10, v1, v23

    const/16 v23, 0x4a

    aput-byte v11, v1, v23

    const/16 v23, 0x4b

    aput-byte v13, v1, v23

    const/16 v23, 0x4c

    aput-byte v14, v1, v23

    const/16 v23, 0x4d

    aput-byte v15, v1, v23

    const/16 v23, 0x4e

    aput-byte v16, v1, v23

    const/16 v23, 0x4f

    aput-byte v17, v1, v23

    const/16 v23, 0x50

    aput-byte v18, v1, v23

    const/16 v23, 0x51

    aput-byte v19, v1, v23

    const/16 v23, 0x52

    aput-byte v20, v1, v23

    const/16 v23, 0x53

    aput-byte v21, v1, v23

    const/16 v23, 0x54

    aput-byte v22, v1, v23

    const/16 v23, 0x55

    const/16 v24, 0x14

    aput-byte v24, v1, v23

    const/16 v23, 0x56

    const/16 v24, 0x15

    aput-byte v24, v1, v23

    const/16 v23, 0x57

    const/16 v24, 0x16

    aput-byte v24, v1, v23

    const/16 v23, 0x58

    const/16 v24, 0x17

    aput-byte v24, v1, v23

    const/16 v23, 0x59

    const/16 v24, 0x18

    aput-byte v24, v1, v23

    const/16 v23, 0x5a

    const/16 v24, 0x19

    aput-byte v24, v1, v23

    const/16 v23, 0x5b

    aput-byte v3, v1, v23

    const/16 v23, 0x5c

    aput-byte v3, v1, v23

    const/16 v23, 0x5d

    aput-byte v3, v1, v23

    const/16 v23, 0x5e

    aput-byte v3, v1, v23

    const/16 v23, 0x5f

    const/16 v24, 0x3f

    aput-byte v24, v1, v23

    const/16 v23, 0x60

    aput-byte v3, v1, v23

    const/16 v23, 0x61

    const/16 v24, 0x1a

    aput-byte v24, v1, v23

    const/16 v23, 0x62

    const/16 v24, 0x1b

    aput-byte v24, v1, v23

    const/16 v23, 0x63

    const/16 v24, 0x1c

    aput-byte v24, v1, v23

    const/16 v23, 0x64

    const/16 v24, 0x1d

    aput-byte v24, v1, v23

    const/16 v23, 0x65

    const/16 v24, 0x1e

    aput-byte v24, v1, v23

    const/16 v23, 0x66

    const/16 v24, 0x1f

    aput-byte v24, v1, v23

    const/16 v23, 0x67

    const/16 v24, 0x20

    aput-byte v24, v1, v23

    const/16 v23, 0x68

    const/16 v24, 0x21

    aput-byte v24, v1, v23

    const/16 v23, 0x69

    const/16 v24, 0x22

    aput-byte v24, v1, v23

    const/16 v23, 0x6a

    const/16 v24, 0x23

    aput-byte v24, v1, v23

    const/16 v23, 0x6b

    const/16 v24, 0x24

    aput-byte v24, v1, v23

    const/16 v23, 0x6c

    const/16 v24, 0x25

    aput-byte v24, v1, v23

    const/16 v23, 0x6d

    const/16 v24, 0x26

    aput-byte v24, v1, v23

    const/16 v23, 0x6e

    const/16 v24, 0x27

    aput-byte v24, v1, v23

    const/16 v23, 0x6f

    const/16 v24, 0x28

    aput-byte v24, v1, v23

    const/16 v23, 0x70

    const/16 v24, 0x29

    aput-byte v24, v1, v23

    const/16 v23, 0x71

    const/16 v24, 0x2a

    aput-byte v24, v1, v23

    const/16 v23, 0x72

    const/16 v24, 0x2b

    aput-byte v24, v1, v23

    const/16 v23, 0x73

    const/16 v24, 0x2c

    aput-byte v24, v1, v23

    const/16 v23, 0x74

    const/16 v24, 0x2d

    aput-byte v24, v1, v23

    const/16 v23, 0x75

    const/16 v24, 0x2e

    aput-byte v24, v1, v23

    const/16 v23, 0x76

    const/16 v24, 0x2f

    aput-byte v24, v1, v23

    const/16 v23, 0x77

    const/16 v24, 0x30

    aput-byte v24, v1, v23

    const/16 v23, 0x78

    const/16 v24, 0x31

    aput-byte v24, v1, v23

    const/16 v23, 0x79

    const/16 v24, 0x32

    aput-byte v24, v1, v23

    const/16 v23, 0x7a

    const/16 v24, 0x33

    aput-byte v24, v1, v23

    const/16 v23, 0x7b

    aput-byte v3, v1, v23

    const/16 v23, 0x7c

    aput-byte v3, v1, v23

    const/16 v23, 0x7d

    aput-byte v3, v1, v23

    const/16 v23, 0x7e

    aput-byte v3, v1, v23

    const/16 v23, 0x7f

    aput-byte v3, v1, v23

    const/16 v23, 0x80

    aput-byte v3, v1, v23

    const/16 v23, 0x81

    aput-byte v3, v1, v23

    const/16 v23, 0x82

    aput-byte v3, v1, v23

    const/16 v23, 0x83

    aput-byte v3, v1, v23

    const/16 v23, 0x84

    aput-byte v3, v1, v23

    const/16 v23, 0x85

    aput-byte v3, v1, v23

    const/16 v23, 0x86

    aput-byte v3, v1, v23

    const/16 v23, 0x87

    aput-byte v3, v1, v23

    const/16 v23, 0x88

    aput-byte v3, v1, v23

    const/16 v23, 0x89

    aput-byte v3, v1, v23

    const/16 v23, 0x8a

    aput-byte v3, v1, v23

    const/16 v23, 0x8b

    aput-byte v3, v1, v23

    const/16 v23, 0x8c

    aput-byte v3, v1, v23

    const/16 v23, 0x8d

    aput-byte v3, v1, v23

    const/16 v23, 0x8e

    aput-byte v3, v1, v23

    const/16 v23, 0x8f

    aput-byte v3, v1, v23

    const/16 v23, 0x90

    aput-byte v3, v1, v23

    const/16 v23, 0x91

    aput-byte v3, v1, v23

    const/16 v23, 0x92

    aput-byte v3, v1, v23

    const/16 v23, 0x93

    aput-byte v3, v1, v23

    const/16 v23, 0x94

    aput-byte v3, v1, v23

    const/16 v23, 0x95

    aput-byte v3, v1, v23

    const/16 v23, 0x96

    aput-byte v3, v1, v23

    const/16 v23, 0x97

    aput-byte v3, v1, v23

    const/16 v23, 0x98

    aput-byte v3, v1, v23

    const/16 v23, 0x99

    aput-byte v3, v1, v23

    const/16 v23, 0x9a

    aput-byte v3, v1, v23

    const/16 v23, 0x9b

    aput-byte v3, v1, v23

    const/16 v23, 0x9c

    aput-byte v3, v1, v23

    const/16 v23, 0x9d

    aput-byte v3, v1, v23

    const/16 v23, 0x9e

    aput-byte v3, v1, v23

    const/16 v23, 0x9f

    aput-byte v3, v1, v23

    const/16 v23, 0xa0

    aput-byte v3, v1, v23

    const/16 v23, 0xa1

    aput-byte v3, v1, v23

    const/16 v23, 0xa2

    aput-byte v3, v1, v23

    const/16 v23, 0xa3

    aput-byte v3, v1, v23

    const/16 v23, 0xa4

    aput-byte v3, v1, v23

    const/16 v23, 0xa5

    aput-byte v3, v1, v23

    const/16 v23, 0xa6

    aput-byte v3, v1, v23

    const/16 v23, 0xa7

    aput-byte v3, v1, v23

    const/16 v23, 0xa8

    aput-byte v3, v1, v23

    const/16 v23, 0xa9

    aput-byte v3, v1, v23

    const/16 v23, 0xaa

    aput-byte v3, v1, v23

    const/16 v23, 0xab

    aput-byte v3, v1, v23

    const/16 v23, 0xac

    aput-byte v3, v1, v23

    const/16 v23, 0xad

    aput-byte v3, v1, v23

    const/16 v23, 0xae

    aput-byte v3, v1, v23

    const/16 v23, 0xaf

    aput-byte v3, v1, v23

    const/16 v23, 0xb0

    aput-byte v3, v1, v23

    const/16 v23, 0xb1

    aput-byte v3, v1, v23

    const/16 v23, 0xb2

    aput-byte v3, v1, v23

    const/16 v23, 0xb3

    aput-byte v3, v1, v23

    const/16 v23, 0xb4

    aput-byte v3, v1, v23

    const/16 v23, 0xb5

    aput-byte v3, v1, v23

    const/16 v23, 0xb6

    aput-byte v3, v1, v23

    const/16 v23, 0xb7

    aput-byte v3, v1, v23

    const/16 v23, 0xb8

    aput-byte v3, v1, v23

    const/16 v23, 0xb9

    aput-byte v3, v1, v23

    const/16 v23, 0xba

    aput-byte v3, v1, v23

    const/16 v23, 0xbb

    aput-byte v3, v1, v23

    const/16 v23, 0xbc

    aput-byte v3, v1, v23

    const/16 v23, 0xbd

    aput-byte v3, v1, v23

    const/16 v23, 0xbe

    aput-byte v3, v1, v23

    const/16 v23, 0xbf

    aput-byte v3, v1, v23

    const/16 v23, 0xc0

    aput-byte v3, v1, v23

    const/16 v23, 0xc1

    aput-byte v3, v1, v23

    const/16 v23, 0xc2

    aput-byte v3, v1, v23

    const/16 v23, 0xc3

    aput-byte v3, v1, v23

    const/16 v23, 0xc4

    aput-byte v3, v1, v23

    const/16 v23, 0xc5

    aput-byte v3, v1, v23

    const/16 v23, 0xc6

    aput-byte v3, v1, v23

    const/16 v23, 0xc7

    aput-byte v3, v1, v23

    const/16 v23, 0xc8

    aput-byte v3, v1, v23

    const/16 v23, 0xc9

    aput-byte v3, v1, v23

    const/16 v23, 0xca

    aput-byte v3, v1, v23

    const/16 v23, 0xcb

    aput-byte v3, v1, v23

    const/16 v23, 0xcc

    aput-byte v3, v1, v23

    const/16 v23, 0xcd

    aput-byte v3, v1, v23

    const/16 v23, 0xce

    aput-byte v3, v1, v23

    const/16 v23, 0xcf

    aput-byte v3, v1, v23

    const/16 v23, 0xd0

    aput-byte v3, v1, v23

    const/16 v23, 0xd1

    aput-byte v3, v1, v23

    const/16 v23, 0xd2

    aput-byte v3, v1, v23

    const/16 v23, 0xd3

    aput-byte v3, v1, v23

    const/16 v23, 0xd4

    aput-byte v3, v1, v23

    const/16 v23, 0xd5

    aput-byte v3, v1, v23

    const/16 v23, 0xd6

    aput-byte v3, v1, v23

    const/16 v23, 0xd7

    aput-byte v3, v1, v23

    const/16 v23, 0xd8

    aput-byte v3, v1, v23

    const/16 v23, 0xd9

    aput-byte v3, v1, v23

    const/16 v23, 0xda

    aput-byte v3, v1, v23

    const/16 v23, 0xdb

    aput-byte v3, v1, v23

    const/16 v23, 0xdc

    aput-byte v3, v1, v23

    const/16 v23, 0xdd

    aput-byte v3, v1, v23

    const/16 v23, 0xde

    aput-byte v3, v1, v23

    const/16 v23, 0xdf

    aput-byte v3, v1, v23

    const/16 v23, 0xe0

    aput-byte v3, v1, v23

    const/16 v23, 0xe1

    aput-byte v3, v1, v23

    const/16 v23, 0xe2

    aput-byte v3, v1, v23

    const/16 v23, 0xe3

    aput-byte v3, v1, v23

    const/16 v23, 0xe4

    aput-byte v3, v1, v23

    const/16 v23, 0xe5

    aput-byte v3, v1, v23

    const/16 v23, 0xe6

    aput-byte v3, v1, v23

    const/16 v23, 0xe7

    aput-byte v3, v1, v23

    const/16 v23, 0xe8

    aput-byte v3, v1, v23

    const/16 v23, 0xe9

    aput-byte v3, v1, v23

    const/16 v23, 0xea

    aput-byte v3, v1, v23

    const/16 v23, 0xeb

    aput-byte v3, v1, v23

    const/16 v23, 0xec

    aput-byte v3, v1, v23

    const/16 v23, 0xed

    aput-byte v3, v1, v23

    const/16 v23, 0xee

    aput-byte v3, v1, v23

    const/16 v23, 0xef

    aput-byte v3, v1, v23

    const/16 v23, 0xf0

    aput-byte v3, v1, v23

    const/16 v23, 0xf1

    aput-byte v3, v1, v23

    const/16 v23, 0xf2

    aput-byte v3, v1, v23

    const/16 v23, 0xf3

    aput-byte v3, v1, v23

    const/16 v23, 0xf4

    aput-byte v3, v1, v23

    const/16 v23, 0xf5

    aput-byte v3, v1, v23

    const/16 v23, 0xf6

    aput-byte v3, v1, v23

    const/16 v23, 0xf7

    aput-byte v3, v1, v23

    const/16 v23, 0xf8

    aput-byte v3, v1, v23

    const/16 v23, 0xf9

    aput-byte v3, v1, v23

    const/16 v23, 0xfa

    aput-byte v3, v1, v23

    const/16 v23, 0xfb

    aput-byte v3, v1, v23

    const/16 v23, 0xfc

    aput-byte v3, v1, v23

    const/16 v23, 0xfd

    aput-byte v3, v1, v23

    const/16 v23, 0xfe

    aput-byte v3, v1, v23

    const/16 v23, 0xff

    aput-byte v3, v1, v23

    .line 309
    sput-object v1, Lorg/java_websocket/util/Base64;->_URL_SAFE_DECODABET:[B

    new-array v1, v0, [B

    .line 356
    fill-array-data v1, :array_2

    sput-object v1, Lorg/java_websocket/util/Base64;->_ORDERED_ALPHABET:[B

    const/16 v1, 0x101

    new-array v1, v1, [B

    const/16 v23, 0x0

    aput-byte v3, v1, v23

    aput-byte v3, v1, v2

    aput-byte v3, v1, v4

    aput-byte v3, v1, v5

    aput-byte v3, v1, v6

    aput-byte v3, v1, v7

    aput-byte v3, v1, v8

    aput-byte v3, v1, v9

    aput-byte v3, v1, v10

    aput-byte v12, v1, v11

    aput-byte v12, v1, v13

    aput-byte v3, v1, v14

    aput-byte v3, v1, v15

    aput-byte v12, v1, v16

    aput-byte v3, v1, v17

    aput-byte v3, v1, v18

    aput-byte v3, v1, v19

    aput-byte v3, v1, v20

    aput-byte v3, v1, v21

    aput-byte v3, v1, v22

    const/16 v23, 0x14

    aput-byte v3, v1, v23

    const/16 v23, 0x15

    aput-byte v3, v1, v23

    const/16 v23, 0x16

    aput-byte v3, v1, v23

    const/16 v23, 0x17

    aput-byte v3, v1, v23

    const/16 v23, 0x18

    aput-byte v3, v1, v23

    const/16 v23, 0x19

    aput-byte v3, v1, v23

    const/16 v23, 0x1a

    aput-byte v3, v1, v23

    const/16 v23, 0x1b

    aput-byte v3, v1, v23

    const/16 v23, 0x1c

    aput-byte v3, v1, v23

    const/16 v23, 0x1d

    aput-byte v3, v1, v23

    const/16 v23, 0x1e

    aput-byte v3, v1, v23

    const/16 v23, 0x1f

    aput-byte v3, v1, v23

    const/16 v23, 0x20

    aput-byte v12, v1, v23

    const/16 v12, 0x21

    aput-byte v3, v1, v12

    const/16 v12, 0x22

    aput-byte v3, v1, v12

    const/16 v12, 0x23

    aput-byte v3, v1, v12

    const/16 v12, 0x24

    aput-byte v3, v1, v12

    const/16 v12, 0x25

    aput-byte v3, v1, v12

    const/16 v12, 0x26

    aput-byte v3, v1, v12

    const/16 v12, 0x27

    aput-byte v3, v1, v12

    const/16 v12, 0x28

    aput-byte v3, v1, v12

    const/16 v12, 0x29

    aput-byte v3, v1, v12

    const/16 v12, 0x2a

    aput-byte v3, v1, v12

    const/16 v12, 0x2b

    aput-byte v3, v1, v12

    const/16 v12, 0x2c

    aput-byte v3, v1, v12

    const/16 v12, 0x2e

    aput-byte v3, v1, v12

    const/16 v12, 0x2f

    aput-byte v3, v1, v12

    const/16 v12, 0x30

    aput-byte v2, v1, v12

    const/16 v2, 0x31

    aput-byte v4, v1, v2

    const/16 v2, 0x32

    aput-byte v5, v1, v2

    const/16 v2, 0x33

    aput-byte v6, v1, v2

    const/16 v2, 0x34

    aput-byte v7, v1, v2

    const/16 v2, 0x35

    aput-byte v8, v1, v2

    const/16 v2, 0x36

    aput-byte v9, v1, v2

    const/16 v2, 0x37

    aput-byte v10, v1, v2

    const/16 v2, 0x38

    aput-byte v11, v1, v2

    const/16 v2, 0x39

    aput-byte v13, v1, v2

    const/16 v2, 0x3a

    aput-byte v3, v1, v2

    const/16 v2, 0x3b

    aput-byte v3, v1, v2

    const/16 v2, 0x3c

    aput-byte v3, v1, v2

    const/16 v2, 0x3d

    const/4 v4, -0x1

    aput-byte v4, v1, v2

    const/16 v2, 0x3e

    aput-byte v3, v1, v2

    const/16 v2, 0x3f

    aput-byte v3, v1, v2

    aput-byte v3, v1, v0

    const/16 v0, 0x41

    aput-byte v14, v1, v0

    const/16 v0, 0x42

    aput-byte v15, v1, v0

    const/16 v0, 0x43

    aput-byte v16, v1, v0

    const/16 v0, 0x44

    aput-byte v17, v1, v0

    const/16 v0, 0x45

    aput-byte v18, v1, v0

    const/16 v0, 0x46

    aput-byte v19, v1, v0

    const/16 v0, 0x47

    aput-byte v20, v1, v0

    const/16 v0, 0x48

    aput-byte v21, v1, v0

    const/16 v0, 0x49

    aput-byte v22, v1, v0

    const/16 v0, 0x4a

    const/16 v2, 0x14

    aput-byte v2, v1, v0

    const/16 v0, 0x4b

    const/16 v2, 0x15

    aput-byte v2, v1, v0

    const/16 v0, 0x4c

    const/16 v2, 0x16

    aput-byte v2, v1, v0

    const/16 v0, 0x4d

    const/16 v2, 0x17

    aput-byte v2, v1, v0

    const/16 v0, 0x4e

    const/16 v2, 0x18

    aput-byte v2, v1, v0

    const/16 v0, 0x4f

    const/16 v2, 0x19

    aput-byte v2, v1, v0

    const/16 v0, 0x50

    const/16 v2, 0x1a

    aput-byte v2, v1, v0

    const/16 v0, 0x51

    const/16 v2, 0x1b

    aput-byte v2, v1, v0

    const/16 v0, 0x52

    const/16 v2, 0x1c

    aput-byte v2, v1, v0

    const/16 v0, 0x53

    const/16 v2, 0x1d

    aput-byte v2, v1, v0

    const/16 v0, 0x54

    const/16 v2, 0x1e

    aput-byte v2, v1, v0

    const/16 v0, 0x55

    const/16 v2, 0x1f

    aput-byte v2, v1, v0

    const/16 v0, 0x56

    const/16 v2, 0x20

    aput-byte v2, v1, v0

    const/16 v0, 0x57

    const/16 v2, 0x21

    aput-byte v2, v1, v0

    const/16 v0, 0x58

    const/16 v2, 0x22

    aput-byte v2, v1, v0

    const/16 v0, 0x59

    const/16 v2, 0x23

    aput-byte v2, v1, v0

    const/16 v0, 0x5a

    const/16 v2, 0x24

    aput-byte v2, v1, v0

    const/16 v0, 0x5b

    aput-byte v3, v1, v0

    const/16 v0, 0x5c

    aput-byte v3, v1, v0

    const/16 v0, 0x5d

    aput-byte v3, v1, v0

    const/16 v0, 0x5e

    aput-byte v3, v1, v0

    const/16 v0, 0x5f

    const/16 v2, 0x25

    aput-byte v2, v1, v0

    const/16 v0, 0x60

    aput-byte v3, v1, v0

    const/16 v0, 0x61

    const/16 v2, 0x26

    aput-byte v2, v1, v0

    const/16 v0, 0x62

    const/16 v2, 0x27

    aput-byte v2, v1, v0

    const/16 v0, 0x63

    const/16 v2, 0x28

    aput-byte v2, v1, v0

    const/16 v0, 0x64

    const/16 v2, 0x29

    aput-byte v2, v1, v0

    const/16 v0, 0x65

    const/16 v2, 0x2a

    aput-byte v2, v1, v0

    const/16 v0, 0x66

    const/16 v2, 0x2b

    aput-byte v2, v1, v0

    const/16 v0, 0x67

    const/16 v2, 0x2c

    aput-byte v2, v1, v0

    const/16 v0, 0x68

    const/16 v2, 0x2d

    aput-byte v2, v1, v0

    const/16 v0, 0x69

    const/16 v2, 0x2e

    aput-byte v2, v1, v0

    const/16 v0, 0x6a

    const/16 v2, 0x2f

    aput-byte v2, v1, v0

    const/16 v0, 0x6b

    const/16 v2, 0x30

    aput-byte v2, v1, v0

    const/16 v0, 0x6c

    const/16 v2, 0x31

    aput-byte v2, v1, v0

    const/16 v0, 0x6d

    const/16 v2, 0x32

    aput-byte v2, v1, v0

    const/16 v0, 0x6e

    const/16 v2, 0x33

    aput-byte v2, v1, v0

    const/16 v0, 0x6f

    const/16 v2, 0x34

    aput-byte v2, v1, v0

    const/16 v0, 0x70

    const/16 v2, 0x35

    aput-byte v2, v1, v0

    const/16 v0, 0x71

    const/16 v2, 0x36

    aput-byte v2, v1, v0

    const/16 v0, 0x72

    const/16 v2, 0x37

    aput-byte v2, v1, v0

    const/16 v0, 0x73

    const/16 v2, 0x38

    aput-byte v2, v1, v0

    const/16 v0, 0x74

    const/16 v2, 0x39

    aput-byte v2, v1, v0

    const/16 v0, 0x75

    const/16 v2, 0x3a

    aput-byte v2, v1, v0

    const/16 v0, 0x76

    const/16 v2, 0x3b

    aput-byte v2, v1, v0

    const/16 v0, 0x77

    const/16 v2, 0x3c

    aput-byte v2, v1, v0

    const/16 v0, 0x78

    const/16 v2, 0x3d

    aput-byte v2, v1, v0

    const/16 v0, 0x79

    const/16 v2, 0x3e

    aput-byte v2, v1, v0

    const/16 v0, 0x7a

    const/16 v2, 0x3f

    aput-byte v2, v1, v0

    const/16 v0, 0x7b

    aput-byte v3, v1, v0

    const/16 v0, 0x7c

    aput-byte v3, v1, v0

    const/16 v0, 0x7d

    aput-byte v3, v1, v0

    const/16 v0, 0x7e

    aput-byte v3, v1, v0

    const/16 v0, 0x7f

    aput-byte v3, v1, v0

    const/16 v0, 0x80

    aput-byte v3, v1, v0

    const/16 v0, 0x81

    aput-byte v3, v1, v0

    const/16 v0, 0x82

    aput-byte v3, v1, v0

    const/16 v0, 0x83

    aput-byte v3, v1, v0

    const/16 v0, 0x84

    aput-byte v3, v1, v0

    const/16 v0, 0x85

    aput-byte v3, v1, v0

    const/16 v0, 0x86

    aput-byte v3, v1, v0

    const/16 v0, 0x87

    aput-byte v3, v1, v0

    const/16 v0, 0x88

    aput-byte v3, v1, v0

    const/16 v0, 0x89

    aput-byte v3, v1, v0

    const/16 v0, 0x8a

    aput-byte v3, v1, v0

    const/16 v0, 0x8b

    aput-byte v3, v1, v0

    const/16 v0, 0x8c

    aput-byte v3, v1, v0

    const/16 v0, 0x8d

    aput-byte v3, v1, v0

    const/16 v0, 0x8e

    aput-byte v3, v1, v0

    const/16 v0, 0x8f

    aput-byte v3, v1, v0

    const/16 v0, 0x90

    aput-byte v3, v1, v0

    const/16 v0, 0x91

    aput-byte v3, v1, v0

    const/16 v0, 0x92

    aput-byte v3, v1, v0

    const/16 v0, 0x93

    aput-byte v3, v1, v0

    const/16 v0, 0x94

    aput-byte v3, v1, v0

    const/16 v0, 0x95

    aput-byte v3, v1, v0

    const/16 v0, 0x96

    aput-byte v3, v1, v0

    const/16 v0, 0x97

    aput-byte v3, v1, v0

    const/16 v0, 0x98

    aput-byte v3, v1, v0

    const/16 v0, 0x99

    aput-byte v3, v1, v0

    const/16 v0, 0x9a

    aput-byte v3, v1, v0

    const/16 v0, 0x9b

    aput-byte v3, v1, v0

    const/16 v0, 0x9c

    aput-byte v3, v1, v0

    const/16 v0, 0x9d

    aput-byte v3, v1, v0

    const/16 v0, 0x9e

    aput-byte v3, v1, v0

    const/16 v0, 0x9f

    aput-byte v3, v1, v0

    const/16 v0, 0xa0

    aput-byte v3, v1, v0

    const/16 v0, 0xa1

    aput-byte v3, v1, v0

    const/16 v0, 0xa2

    aput-byte v3, v1, v0

    const/16 v0, 0xa3

    aput-byte v3, v1, v0

    const/16 v0, 0xa4

    aput-byte v3, v1, v0

    const/16 v0, 0xa5

    aput-byte v3, v1, v0

    const/16 v0, 0xa6

    aput-byte v3, v1, v0

    const/16 v0, 0xa7

    aput-byte v3, v1, v0

    const/16 v0, 0xa8

    aput-byte v3, v1, v0

    const/16 v0, 0xa9

    aput-byte v3, v1, v0

    const/16 v0, 0xaa

    aput-byte v3, v1, v0

    const/16 v0, 0xab

    aput-byte v3, v1, v0

    const/16 v0, 0xac

    aput-byte v3, v1, v0

    const/16 v0, 0xad

    aput-byte v3, v1, v0

    const/16 v0, 0xae

    aput-byte v3, v1, v0

    const/16 v0, 0xaf

    aput-byte v3, v1, v0

    const/16 v0, 0xb0

    aput-byte v3, v1, v0

    const/16 v0, 0xb1

    aput-byte v3, v1, v0

    const/16 v0, 0xb2

    aput-byte v3, v1, v0

    const/16 v0, 0xb3

    aput-byte v3, v1, v0

    const/16 v0, 0xb4

    aput-byte v3, v1, v0

    const/16 v0, 0xb5

    aput-byte v3, v1, v0

    const/16 v0, 0xb6

    aput-byte v3, v1, v0

    const/16 v0, 0xb7

    aput-byte v3, v1, v0

    const/16 v0, 0xb8

    aput-byte v3, v1, v0

    const/16 v0, 0xb9

    aput-byte v3, v1, v0

    const/16 v0, 0xba

    aput-byte v3, v1, v0

    const/16 v0, 0xbb

    aput-byte v3, v1, v0

    const/16 v0, 0xbc

    aput-byte v3, v1, v0

    const/16 v0, 0xbd

    aput-byte v3, v1, v0

    const/16 v0, 0xbe

    aput-byte v3, v1, v0

    const/16 v0, 0xbf

    aput-byte v3, v1, v0

    const/16 v0, 0xc0

    aput-byte v3, v1, v0

    const/16 v0, 0xc1

    aput-byte v3, v1, v0

    const/16 v0, 0xc2

    aput-byte v3, v1, v0

    const/16 v0, 0xc3

    aput-byte v3, v1, v0

    const/16 v0, 0xc4

    aput-byte v3, v1, v0

    const/16 v0, 0xc5

    aput-byte v3, v1, v0

    const/16 v0, 0xc6

    aput-byte v3, v1, v0

    const/16 v0, 0xc7

    aput-byte v3, v1, v0

    const/16 v0, 0xc8

    aput-byte v3, v1, v0

    const/16 v0, 0xc9

    aput-byte v3, v1, v0

    const/16 v0, 0xca

    aput-byte v3, v1, v0

    const/16 v0, 0xcb

    aput-byte v3, v1, v0

    const/16 v0, 0xcc

    aput-byte v3, v1, v0

    const/16 v0, 0xcd

    aput-byte v3, v1, v0

    const/16 v0, 0xce

    aput-byte v3, v1, v0

    const/16 v0, 0xcf

    aput-byte v3, v1, v0

    const/16 v0, 0xd0

    aput-byte v3, v1, v0

    const/16 v0, 0xd1

    aput-byte v3, v1, v0

    const/16 v0, 0xd2

    aput-byte v3, v1, v0

    const/16 v0, 0xd3

    aput-byte v3, v1, v0

    const/16 v0, 0xd4

    aput-byte v3, v1, v0

    const/16 v0, 0xd5

    aput-byte v3, v1, v0

    const/16 v0, 0xd6

    aput-byte v3, v1, v0

    const/16 v0, 0xd7

    aput-byte v3, v1, v0

    const/16 v0, 0xd8

    aput-byte v3, v1, v0

    const/16 v0, 0xd9

    aput-byte v3, v1, v0

    const/16 v0, 0xda

    aput-byte v3, v1, v0

    const/16 v0, 0xdb

    aput-byte v3, v1, v0

    const/16 v0, 0xdc

    aput-byte v3, v1, v0

    const/16 v0, 0xdd

    aput-byte v3, v1, v0

    const/16 v0, 0xde

    aput-byte v3, v1, v0

    const/16 v0, 0xdf

    aput-byte v3, v1, v0

    const/16 v0, 0xe0

    aput-byte v3, v1, v0

    const/16 v0, 0xe1

    aput-byte v3, v1, v0

    const/16 v0, 0xe2

    aput-byte v3, v1, v0

    const/16 v0, 0xe3

    aput-byte v3, v1, v0

    const/16 v0, 0xe4

    aput-byte v3, v1, v0

    const/16 v0, 0xe5

    aput-byte v3, v1, v0

    const/16 v0, 0xe6

    aput-byte v3, v1, v0

    const/16 v0, 0xe7

    aput-byte v3, v1, v0

    const/16 v0, 0xe8

    aput-byte v3, v1, v0

    const/16 v0, 0xe9

    aput-byte v3, v1, v0

    const/16 v0, 0xea

    aput-byte v3, v1, v0

    const/16 v0, 0xeb

    aput-byte v3, v1, v0

    const/16 v0, 0xec

    aput-byte v3, v1, v0

    const/16 v0, 0xed

    aput-byte v3, v1, v0

    const/16 v0, 0xee

    aput-byte v3, v1, v0

    const/16 v0, 0xef

    aput-byte v3, v1, v0

    const/16 v0, 0xf0

    aput-byte v3, v1, v0

    const/16 v0, 0xf1

    aput-byte v3, v1, v0

    const/16 v0, 0xf2

    aput-byte v3, v1, v0

    const/16 v0, 0xf3

    aput-byte v3, v1, v0

    const/16 v0, 0xf4

    aput-byte v3, v1, v0

    const/16 v0, 0xf5

    aput-byte v3, v1, v0

    const/16 v0, 0xf6

    aput-byte v3, v1, v0

    const/16 v0, 0xf7

    aput-byte v3, v1, v0

    const/16 v0, 0xf8

    aput-byte v3, v1, v0

    const/16 v0, 0xf9

    aput-byte v3, v1, v0

    const/16 v0, 0xfa

    aput-byte v3, v1, v0

    const/16 v0, 0xfb

    aput-byte v3, v1, v0

    const/16 v0, 0xfc

    aput-byte v3, v1, v0

    const/16 v0, 0xfd

    aput-byte v3, v1, v0

    const/16 v0, 0xfe

    aput-byte v3, v1, v0

    const/16 v0, 0xff

    aput-byte v3, v1, v0

    const/16 v0, 0x100

    aput-byte v3, v1, v0

    .line 374
    sput-object v1, Lorg/java_websocket/util/Base64;->_ORDERED_DECODABET:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_2
    .array-data 1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)[B
    .locals 0

    .line 441
    invoke-static {p0}, Lorg/java_websocket/util/Base64;->getDecodabet(I)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1([B[BII)[B
    .locals 0

    .line 477
    invoke-static {p0, p1, p2, p3}, Lorg/java_websocket/util/Base64;->encode3to4([B[BII)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2([BI[BII)I
    .locals 0

    .line 784
    invoke-static {p0, p1, p2, p3, p4}, Lorg/java_websocket/util/Base64;->decode4to3([BI[BII)I

    move-result p0

    return p0
.end method

.method private static decode4to3([BI[BII)I
    .locals 6

    if-eqz p0, :cond_5

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ltz p1, :cond_3

    add-int/lit8 v3, p1, 0x3

    .line 795
    array-length v4, p0

    if-ge v3, v4, :cond_3

    if-ltz p3, :cond_2

    add-int/lit8 v4, p3, 0x2

    .line 799
    array-length v5, p2

    if-ge v4, v5, :cond_2

    .line 805
    invoke-static {p4}, Lorg/java_websocket/util/Base64;->getDecodabet(I)[B

    move-result-object p4

    add-int/lit8 v0, p1, 0x2

    .line 808
    aget-byte v0, p0, v0

    const/16 v5, 0x3d

    if-ne v0, v5, :cond_0

    .line 812
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x12

    add-int/2addr p1, v2

    .line 813
    aget-byte p0, p0, p1

    aget-byte p0, p4, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 815
    aput-byte p0, p2, p3

    return v2

    .line 820
    :cond_0
    aget-byte v3, p0, v3

    if-ne v3, v5, :cond_1

    .line 825
    aget-byte v3, p0, p1

    aget-byte v3, p4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/2addr p1, v2

    .line 826
    aget-byte p0, p0, p1

    aget-byte p0, p4, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v3

    .line 827
    aget-byte p1, p4, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    .line 829
    aput-byte p1, p2, p3

    add-int/2addr p3, v2

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 830
    aput-byte p0, p2, p3

    return v1

    .line 841
    :cond_1
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/2addr p1, v2

    .line 842
    aget-byte p0, p0, p1

    aget-byte p0, p4, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v1

    .line 843
    aget-byte p1, p4, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    .line 844
    aget-byte p1, p4, v3

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    .line 847
    aput-byte p1, p2, p3

    add-int/2addr p3, v2

    shr-int/lit8 p1, p0, 0x8

    int-to-byte p1, p1

    .line 848
    aput-byte p1, p2, p3

    int-to-byte p0, p0

    .line 849
    aput-byte p0, p2, v4

    const/4 p0, 0x3

    return p0

    .line 800
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v1, [Ljava/lang/Object;

    .line 801
    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "Destination array with length %d cannot have offset of %d and still store three bytes."

    .line 800
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 796
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array p3, v1, [Ljava/lang/Object;

    .line 797
    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v2

    const-string p0, "Source array with length %d cannot have offset of %d and still process four bytes."

    .line 796
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 793
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Destination array was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 790
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source array was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encode3to4([BII[BII)[B
    .locals 4

    .line 510
    invoke-static {p5}, Lorg/java_websocket/util/Base64;->getAlphabet(I)[B

    move-result-object p5

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 523
    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v3, p1, 0x1

    .line 524
    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    or-int/2addr v1, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    add-int/2addr p1, v3

    .line 525
    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 v0, p0, 0x18

    :cond_2
    or-int p0, v1, v0

    const/16 p1, 0x3d

    const/4 v0, 0x3

    if-eq p2, v2, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v0, :cond_3

    return-object p3

    :cond_3
    ushr-int/lit8 p1, p0, 0x12

    .line 530
    aget-byte p1, p5, p1

    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    ushr-int/lit8 p2, p0, 0xc

    and-int/lit8 p2, p2, 0x3f

    .line 531
    aget-byte p2, p5, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x2

    ushr-int/lit8 p2, p0, 0x6

    and-int/lit8 p2, p2, 0x3f

    .line 532
    aget-byte p2, p5, p2

    aput-byte p2, p3, p1

    add-int/2addr p4, v0

    and-int/lit8 p0, p0, 0x3f

    .line 533
    aget-byte p0, p5, p0

    aput-byte p0, p3, p4

    return-object p3

    :cond_4
    ushr-int/lit8 p2, p0, 0x12

    .line 537
    aget-byte p2, p5, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    .line 538
    aget-byte v1, p5, v1

    aput-byte v1, p3, p2

    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    .line 539
    aget-byte p0, p5, p0

    aput-byte p0, p3, p2

    add-int/2addr p4, v0

    .line 540
    aput-byte p1, p3, p4

    return-object p3

    :cond_5
    ushr-int/lit8 p2, p0, 0x12

    .line 544
    aget-byte p2, p5, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    .line 545
    aget-byte p0, p5, p0

    aput-byte p0, p3, p2

    add-int/lit8 p0, p4, 0x2

    .line 546
    aput-byte p1, p3, p0

    add-int/2addr p4, v0

    .line 547
    aput-byte p1, p3, p4

    return-object p3
.end method

.method private static encode3to4([B[BII)[B
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v5, p3

    .line 478
    invoke-static/range {v0 .. v5}, Lorg/java_websocket/util/Base64;->encode3to4([BII[BII)[B

    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2

    .line 571
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lorg/java_websocket/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    invoke-static {p0, p1, p2, p3}, Lorg/java_websocket/util/Base64;->encodeBytesToBytes([BIII)[B

    move-result-object p0

    .line 616
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string p2, "US-ASCII"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 619
    :catch_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static encodeBytesToBytes([BIII)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    if-eqz v0, :cond_e

    if-ltz v7, :cond_d

    if-ltz v8, :cond_c

    add-int v1, v7, v8

    .line 655
    array-length v2, v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-gt v1, v2, :cond_b

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 670
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 671
    :try_start_1
    new-instance v3, Lorg/java_websocket/util/Base64$OutputStream;

    or-int/lit8 v4, p3, 0x1

    invoke-direct {v3, v2, v4}, Lorg/java_websocket/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 672
    :try_start_2
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 674
    :try_start_3
    invoke-virtual {v4, v0, v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 675
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 683
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 684
    :catch_0
    :try_start_5
    invoke-virtual {v3}, Lorg/java_websocket/util/Base64$OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 685
    :catch_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 688
    :catch_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v4, v1

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v3, v1

    move-object v4, v3

    :goto_0
    move-object v1, v2

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v3, v1

    move-object v4, v3

    .line 680
    :goto_1
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v1

    :goto_2
    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_0

    .line 683
    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_0
    if-eqz v3, :cond_1

    .line 684
    :try_start_9
    invoke-virtual {v3}, Lorg/java_websocket/util/Base64$OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_1
    if-eqz v2, :cond_2

    .line 685
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 686
    :catch_9
    :cond_2
    throw v0

    :cond_3
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_4

    move v11, v9

    goto :goto_4

    :cond_4
    move v11, v10

    .line 702
    :goto_4
    div-int/lit8 v1, v8, 0x3

    const/4 v12, 0x4

    mul-int/2addr v1, v12

    rem-int/lit8 v2, v8, 0x3

    if-lez v2, :cond_5

    move v2, v12

    goto :goto_5

    :cond_5
    move v2, v10

    :goto_5
    add-int/2addr v1, v2

    if-eqz v11, :cond_6

    .line 704
    div-int/lit8 v2, v1, 0x4c

    add-int/2addr v1, v2

    :cond_6
    move v13, v1

    .line 706
    new-array v14, v13, [B

    add-int/lit8 v15, v8, -0x2

    move v6, v10

    move/from16 v16, v6

    move/from16 v17, v16

    :goto_6
    if-lt v6, v15, :cond_9

    if-ge v6, v8, :cond_7

    add-int v2, v6, v7

    sub-int v3, v8, v6

    move-object/from16 v1, p0

    move-object v4, v14

    move/from16 v5, v16

    move/from16 v6, p3

    .line 726
    invoke-static/range {v1 .. v6}, Lorg/java_websocket/util/Base64;->encode3to4([BII[BII)[B

    add-int/lit8 v16, v16, 0x4

    :cond_7
    move/from16 v0, v16

    sub-int/2addr v13, v9

    if-gt v0, v13, :cond_8

    .line 737
    new-array v1, v0, [B

    .line 738
    invoke-static {v14, v10, v1, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_8
    return-object v14

    :cond_9
    add-int v2, v6, v7

    const/4 v3, 0x3

    move-object/from16 v1, p0

    move-object v4, v14

    move/from16 v5, v16

    move/from16 v18, v6

    move/from16 v6, p3

    .line 714
    invoke-static/range {v1 .. v6}, Lorg/java_websocket/util/Base64;->encode3to4([BII[BII)[B

    add-int/lit8 v1, v17, 0x4

    if-eqz v11, :cond_a

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_a

    add-int/lit8 v1, v16, 0x4

    const/16 v2, 0xa

    .line 719
    aput-byte v2, v14, v1

    add-int/lit8 v16, v16, 0x1

    move/from16 v17, v10

    goto :goto_7

    :cond_a
    move/from16 v17, v1

    :goto_7
    add-int/lit8 v6, v18, 0x3

    add-int/lit8 v16, v16, 0x4

    goto :goto_6

    .line 656
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 657
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "Cannot have offset of %d and length of %d with array of length %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot have length offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot have negative offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot serialize a null array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final getAlphabet(I)[B
    .locals 2

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 425
    sget-object p0, Lorg/java_websocket/util/Base64;->_URL_SAFE_ALPHABET:[B

    return-object p0

    :cond_0
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    .line 427
    sget-object p0, Lorg/java_websocket/util/Base64;->_ORDERED_ALPHABET:[B

    return-object p0

    .line 429
    :cond_1
    sget-object p0, Lorg/java_websocket/util/Base64;->_STANDARD_ALPHABET:[B

    return-object p0
.end method

.method private static final getDecodabet(I)[B
    .locals 2

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 443
    sget-object p0, Lorg/java_websocket/util/Base64;->_URL_SAFE_DECODABET:[B

    return-object p0

    :cond_0
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    .line 445
    sget-object p0, Lorg/java_websocket/util/Base64;->_ORDERED_DECODABET:[B

    return-object p0

    .line 447
    :cond_1
    sget-object p0, Lorg/java_websocket/util/Base64;->_STANDARD_DECODABET:[B

    return-object p0
.end method
