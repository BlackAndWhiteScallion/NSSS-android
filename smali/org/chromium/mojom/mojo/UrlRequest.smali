.class public final Lorg/chromium/mojom/mojo/UrlRequest;
.super Lorg/chromium/mojo/bindings/Struct;
.source "UrlRequest.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x30

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public autoFollowRedirects:Z

.field public body:[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public bypassCache:Z

.field public headers:[Lorg/chromium/mojom/mojo/HttpHeader;

.field public method:Ljava/lang/String;

.field public responseBodyBufferSize:I

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

    const/16 v2, 0x30

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/UrlRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 17
    sget-object v0, Lorg/chromium/mojom/mojo/UrlRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/UrlRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/UrlRequest;-><init>(I)V

    .line 37
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    const/4 v1, 0x0

    .line 28
    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 29
    const-string v0, "GET"

    iput-object v0, p0, Lorg/chromium/mojom/mojo/UrlRequest;->method:Ljava/lang/String;

    .line 30
    iput v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->responseBodyBufferSize:I

    .line 31
    iput-boolean v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->autoFollowRedirects:Z

    .line 32
    iput-boolean v1, p0, Lorg/chromium/mojom/mojo/UrlRequest;->bypassCache:Z

    .line 33
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlRequest;
    .locals 12
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v6, 0x0

    const/16 v11, 0x2c

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 45
    if-nez p0, :cond_1

    move-object v4, v6

    .line 81
    :cond_0
    :goto_0
    return-object v4

    .line 48
    :cond_1
    sget-object v7, Lorg/chromium/mojom/mojo/UrlRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 49
    .local v3, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v4, Lorg/chromium/mojom/mojo/UrlRequest;

    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v4, v7}, Lorg/chromium/mojom/mojo/UrlRequest;-><init>(I)V

    .line 50
    .local v4, "result":Lorg/chromium/mojom/mojo/UrlRequest;
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_2

    .line 51
    const/16 v7, 0x8

    invoke-virtual {p0, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/mojom/mojo/UrlRequest;->url:Ljava/lang/String;

    .line 53
    :cond_2
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_3

    .line 54
    const/16 v7, 0x10

    invoke-virtual {p0, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/mojom/mojo/UrlRequest;->method:Ljava/lang/String;

    .line 56
    :cond_3
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_4

    .line 57
    const/16 v7, 0x18

    invoke-virtual {p0, v7, v9}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 58
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_8

    .line 59
    iput-object v6, v4, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    .line 69
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_4
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v6, :cond_5

    .line 70
    const/16 v6, 0x20

    invoke-virtual {p0, v6, v9, v10}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandles(III)[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v6

    iput-object v6, v4, Lorg/chromium/mojom/mojo/UrlRequest;->body:[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 72
    :cond_5
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v6, :cond_6

    .line 73
    const/16 v6, 0x28

    invoke-virtual {p0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v6

    iput v6, v4, Lorg/chromium/mojom/mojo/UrlRequest;->responseBodyBufferSize:I

    .line 75
    :cond_6
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v6, :cond_7

    .line 76
    invoke-virtual {p0, v11, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v4, Lorg/chromium/mojom/mojo/UrlRequest;->autoFollowRedirects:Z

    .line 78
    :cond_7
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v6, :cond_0

    .line 79
    invoke-virtual {p0, v11, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v4, Lorg/chromium/mojom/mojo/UrlRequest;->bypassCache:Z

    goto :goto_0

    .line 61
    .restart local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_8
    invoke-virtual {v0, v10}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    .line 62
    .local v5, "si1":Lorg/chromium/mojo/bindings/DataHeader;
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/mojom/mojo/HttpHeader;

    iput-object v6, v4, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    .line 63
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_1
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v2, v6, :cond_4

    .line 64
    mul-int/lit8 v6, v2, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v0, v6, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 65
    .local v1, "decoder2":Lorg/chromium/mojo/bindings/Decoder;
    iget-object v6, v4, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v1}, Lorg/chromium/mojom/mojo/HttpHeader;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpHeader;

    move-result-object v7

    aput-object v7, v6, v2

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UrlRequest;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 40
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UrlRequest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 10
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/16 v9, 0x2c

    const/16 v8, 0x18

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    sget-object v3, Lorg/chromium/mojom/mojo/UrlRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v3}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 88
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->url:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 89
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->method:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 90
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    if-nez v3, :cond_1

    .line 91
    invoke-virtual {v0, v8, v6}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 98
    :cond_0
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->body:[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode([Lorg/chromium/mojo/system/Handle;III)V

    .line 99
    iget v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->responseBodyBufferSize:I

    const/16 v4, 0x28

    invoke-virtual {v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 100
    iget-boolean v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->autoFollowRedirects:Z

    invoke-virtual {v0, v3, v9, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 101
    iget-boolean v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->bypassCache:Z

    invoke-virtual {v0, v3, v9, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 102
    return-void

    .line 93
    :cond_1
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v3, v3

    invoke-virtual {v0, v3, v8, v7}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    .line 94
    .local v1, "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v2, 0x0

    .local v2, "i0":I
    :goto_0
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 95
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    aget-object v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v1, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    if-ne p1, p0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 114
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 115
    check-cast v0, Lorg/chromium/mojom/mojo/UrlRequest;

    .line 116
    .local v0, "other":Lorg/chromium/mojom/mojo/UrlRequest;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->url:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlRequest;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 117
    goto :goto_0

    .line 118
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->method:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlRequest;->method:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 119
    goto :goto_0

    .line 120
    :cond_5
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 121
    goto :goto_0

    .line 122
    :cond_6
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->body:[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/UrlRequest;->body:[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 123
    goto :goto_0

    .line 124
    :cond_7
    iget v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->responseBodyBufferSize:I

    iget v4, v0, Lorg/chromium/mojom/mojo/UrlRequest;->responseBodyBufferSize:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 125
    goto :goto_0

    .line 126
    :cond_8
    iget-boolean v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->autoFollowRedirects:Z

    iget-boolean v4, v0, Lorg/chromium/mojom/mojo/UrlRequest;->autoFollowRedirects:Z

    if-eq v3, v4, :cond_9

    move v1, v2

    .line 127
    goto :goto_0

    .line 128
    :cond_9
    iget-boolean v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->bypassCache:Z

    iget-boolean v4, v0, Lorg/chromium/mojom/mojo/UrlRequest;->bypassCache:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 129
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 138
    const/16 v0, 0x1f

    .line 139
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 140
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->url:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 141
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->method:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 142
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v3}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 143
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->body:[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v3}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 144
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->responseBodyBufferSize:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 145
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->autoFollowRedirects:Z

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v3

    add-int v1, v2, v3

    .line 146
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lorg/chromium/mojom/mojo/UrlRequest;->bypassCache:Z

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v3

    add-int v1, v2, v3

    .line 147
    return v1
.end method
