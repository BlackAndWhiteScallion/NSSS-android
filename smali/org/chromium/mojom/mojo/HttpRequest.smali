.class public final Lorg/chromium/mojom/mojo/HttpRequest;
.super Lorg/chromium/mojo/bindings/Struct;
.source "HttpRequest.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x28

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public headers:[Lorg/chromium/mojom/mojo/HttpHeader;

.field public method:Ljava/lang/String;

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

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/HttpRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 17
    sget-object v0, Lorg/chromium/mojom/mojo/HttpRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/HttpRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/HttpRequest;-><init>(I)V

    .line 32
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 25
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 26
    const-string v0, "GET"

    iput-object v0, p0, Lorg/chromium/mojom/mojo/HttpRequest;->method:Ljava/lang/String;

    .line 27
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/HttpRequest;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 28
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpRequest;
    .locals 10
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 40
    if-nez p0, :cond_1

    move-object v4, v6

    .line 67
    :cond_0
    :goto_0
    return-object v4

    .line 43
    :cond_1
    sget-object v7, Lorg/chromium/mojom/mojo/HttpRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 44
    .local v3, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v4, Lorg/chromium/mojom/mojo/HttpRequest;

    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v4, v7}, Lorg/chromium/mojom/mojo/HttpRequest;-><init>(I)V

    .line 45
    .local v4, "result":Lorg/chromium/mojom/mojo/HttpRequest;
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_2

    .line 46
    const/16 v7, 0x8

    invoke-virtual {p0, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/mojom/mojo/HttpRequest;->method:Ljava/lang/String;

    .line 48
    :cond_2
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_3

    .line 49
    const/16 v7, 0x10

    invoke-virtual {p0, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/mojom/mojo/HttpRequest;->url:Ljava/lang/String;

    .line 51
    :cond_3
    iget v7, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v7, :cond_4

    .line 52
    const/16 v7, 0x18

    invoke-virtual {p0, v7, v9}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 53
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_5

    .line 54
    iput-object v6, v4, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    .line 64
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_4
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v6, :cond_0

    .line 65
    const/16 v6, 0x20

    invoke-virtual {p0, v6, v9}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v6

    iput-object v6, v4, Lorg/chromium/mojom/mojo/HttpRequest;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    goto :goto_0

    .line 56
    .restart local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_5
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    .line 57
    .local v5, "si1":Lorg/chromium/mojo/bindings/DataHeader;
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/mojom/mojo/HttpHeader;

    iput-object v6, v4, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    .line 58
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_1
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v2, v6, :cond_4

    .line 59
    mul-int/lit8 v6, v2, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v0, v6, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 60
    .local v1, "decoder2":Lorg/chromium/mojo/bindings/Decoder;
    iget-object v6, v4, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v1}, Lorg/chromium/mojom/mojo/HttpHeader;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpHeader;

    move-result-object v7

    aput-object v7, v6, v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/HttpRequest;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 35
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/HttpRequest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/16 v7, 0x18

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    sget-object v3, Lorg/chromium/mojom/mojo/HttpRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v3}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 74
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->method:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 75
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->url:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 76
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    if-nez v3, :cond_1

    .line 77
    invoke-virtual {v0, v7, v6}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 84
    :cond_0
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 85
    return-void

    .line 79
    :cond_1
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v3, v3

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v7, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    .line 80
    .local v1, "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v2, 0x0

    .local v2, "i0":I
    :goto_0
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 81
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    aget-object v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v1, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 97
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 98
    check-cast v0, Lorg/chromium/mojom/mojo/HttpRequest;

    .line 99
    .local v0, "other":Lorg/chromium/mojom/mojo/HttpRequest;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->method:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/HttpRequest;->method:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->url:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/HttpRequest;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 104
    goto :goto_0

    .line 105
    :cond_6
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/HttpRequest;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 115
    const/16 v0, 0x1f

    .line 116
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 117
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->method:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 118
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->url:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 119
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->headers:[Lorg/chromium/mojom/mojo/HttpHeader;

    invoke-static {v3}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 120
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpRequest;->body:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 121
    return v1
.end method
