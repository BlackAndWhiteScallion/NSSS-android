.class public final Lorg/chromium/mojom/mojo/UrlResponse;
.super Lorg/chromium/mojo/bindings/Struct;
.source "UrlResponse.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x60

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public charset:Ljava/lang/String;

.field public error:Lorg/chromium/mojom/mojo/NetworkError;

.field public headers:[Lorg/chromium/mojom/mojo/HttpHeader;

.field public mimeType:Ljava/lang/String;

.field public redirectMethod:Ljava/lang/String;

.field public redirectReferrer:Ljava/lang/String;

.field public redirectUrl:Ljava/lang/String;

.field public site:Ljava/lang/String;

.field public statusCode:I

.field public statusLine:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x60

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/UrlResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 17
    sget-object v0, Lorg/chromium/mojom/mojo/UrlResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/UrlResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/UrlResponse;-><init>(I)V

    .line 39
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 33
    const/16 v0, 0x60

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 34
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/UrlResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 35
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlResponse;
    .locals 9
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 47
    if-nez p0, :cond_1

    move-object v4, v6

    .line 99
    :cond_0
    :goto_0
    return-object v4

    .line 50
    :cond_1
    sget-object v7, Lorg/chromium/mojom/mojo/UrlResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 51
    .local v3, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v4, Lorg/chromium/mojom/mojo/UrlResponse;

    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v4, v7}, Lorg/chromium/mojom/mojo/UrlResponse;-><init>(I)V

    .line 52
    .local v4, "result":Lorg/chromium/mojom/mojo/UrlResponse;
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_2

    .line 53
    const/16 v7, 0x8

    invoke-virtual {p0, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 54
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetworkError;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkError;

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/mojom/mojo/UrlResponse;->error:Lorg/chromium/mojom/mojo/NetworkError;

    .line 56
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_2
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_3

    .line 57
    const/16 v7, 0x10

    invoke-virtual {p0, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/mojom/mojo/UrlResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 59
    :cond_3
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_4

    .line 60
    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v7

    iput v7, v4, Lorg/chromium/mojom/mojo/UrlResponse;->statusCode:I

    .line 62
    :cond_4
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_5

    .line 63
    const/16 v7, 0x18

    invoke-virtual {p0, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/mojom/mojo/UrlResponse;->url:Ljava/lang/String;

    .line 65
    :cond_5
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_6

    .line 66
    const/16 v7, 0x20

    invoke-virtual {p0, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/mojom/mojo/UrlResponse;->site:Ljava/lang/String;

    .line 68
    :cond_6
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_7

    .line 69
    const/16 v7, 0x28

    invoke-virtual {p0, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/mojom/mojo/UrlResponse;->statusLine:Ljava/lang/String;

    .line 71
    :cond_7
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_8

    .line 72
    const/16 v7, 0x30

    invoke-virtual {p0, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 73
    .restart local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_d

    .line 74
    iput-object v6, v4, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    .line 84
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_8
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v6, :cond_9

    .line 85
    const/16 v6, 0x38

    invoke-virtual {p0, v6, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/chromium/mojom/mojo/UrlResponse;->mimeType:Ljava/lang/String;

    .line 87
    :cond_9
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v6, :cond_a

    .line 88
    const/16 v6, 0x40

    invoke-virtual {p0, v6, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/chromium/mojom/mojo/UrlResponse;->charset:Ljava/lang/String;

    .line 90
    :cond_a
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v6, :cond_b

    .line 91
    const/16 v6, 0x48

    invoke-virtual {p0, v6, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/chromium/mojom/mojo/UrlResponse;->redirectMethod:Ljava/lang/String;

    .line 93
    :cond_b
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v6, :cond_c

    .line 94
    const/16 v6, 0x50

    invoke-virtual {p0, v6, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/chromium/mojom/mojo/UrlResponse;->redirectUrl:Ljava/lang/String;

    .line 96
    :cond_c
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v6, :cond_0

    .line 97
    const/16 v6, 0x58

    invoke-virtual {p0, v6, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/chromium/mojom/mojo/UrlResponse;->redirectReferrer:Ljava/lang/String;

    goto/16 :goto_0

    .line 76
    .restart local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_d
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    .line 77
    .local v5, "si1":Lorg/chromium/mojo/bindings/DataHeader;
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/mojom/mojo/HttpHeader;

    iput-object v6, v4, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    .line 78
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_1
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v2, v6, :cond_8

    .line 79
    mul-int/lit8 v6, v2, 0x8

    add-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 80
    .local v1, "decoder2":Lorg/chromium/mojo/bindings/Decoder;
    iget-object v6, v4, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v1}, Lorg/chromium/mojom/mojo/HttpHeader;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpHeader;

    move-result-object v7

    aput-object v7, v6, v2

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UrlResponse;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 42
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UrlResponse;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/16 v5, 0x30

    const/4 v6, 0x1

    .line 105
    sget-object v3, Lorg/chromium/mojom/mojo/UrlResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v3}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 106
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->error:Lorg/chromium/mojom/mojo/NetworkError;

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 107
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 108
    iget v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->statusCode:I

    const/16 v4, 0x14

    invoke-virtual {v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 109
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->url:Ljava/lang/String;

    const/16 v4, 0x18

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 110
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->site:Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 111
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->statusLine:Ljava/lang/String;

    const/16 v4, 0x28

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 112
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    if-nez v3, :cond_1

    .line 113
    invoke-virtual {v0, v5, v6}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 120
    :cond_0
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->mimeType:Ljava/lang/String;

    const/16 v4, 0x38

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 121
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->charset:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 122
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectMethod:Ljava/lang/String;

    const/16 v4, 0x48

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 123
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectUrl:Ljava/lang/String;

    const/16 v4, 0x50

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 124
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectReferrer:Ljava/lang/String;

    const/16 v4, 0x58

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 125
    return-void

    .line 115
    :cond_1
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v3, v3

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v5, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    .line 116
    .local v1, "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v2, 0x0

    .local v2, "i0":I
    :goto_0
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 117
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    aget-object v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    if-ne p1, p0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 137
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 138
    check-cast v0, Lorg/chromium/mojom/mojo/UrlResponse;

    .line 139
    .local v0, "other":Lorg/chromium/mojom/mojo/UrlResponse;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->error:Lorg/chromium/mojom/mojo/NetworkError;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlResponse;->error:Lorg/chromium/mojom/mojo/NetworkError;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 140
    goto :goto_0

    .line 141
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 142
    goto :goto_0

    .line 143
    :cond_5
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->url:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlResponse;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 144
    goto :goto_0

    .line 145
    :cond_6
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->site:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlResponse;->site:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 146
    goto :goto_0

    .line 147
    :cond_7
    iget v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->statusCode:I

    iget v4, v0, Lorg/chromium/mojom/mojo/UrlResponse;->statusCode:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 148
    goto :goto_0

    .line 149
    :cond_8
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->statusLine:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlResponse;->statusLine:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 150
    goto :goto_0

    .line 151
    :cond_9
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 152
    goto :goto_0

    .line 153
    :cond_a
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlResponse;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 154
    goto :goto_0

    .line 155
    :cond_b
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->charset:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlResponse;->charset:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 156
    goto :goto_0

    .line 157
    :cond_c
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectMethod:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectMethod:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 158
    goto/16 :goto_0

    .line 159
    :cond_d
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectUrl:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    move v1, v2

    .line 160
    goto/16 :goto_0

    .line 161
    :cond_e
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectReferrer:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectReferrer:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 162
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 171
    const/16 v0, 0x1f

    .line 172
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 173
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->error:Lorg/chromium/mojom/mojo/NetworkError;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 174
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 175
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->url:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 176
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->site:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 177
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->statusCode:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 178
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->statusLine:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 179
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v3}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 180
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 181
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->charset:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 182
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectMethod:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 183
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectUrl:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 184
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlResponse;->redirectReferrer:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 185
    return v1
.end method
