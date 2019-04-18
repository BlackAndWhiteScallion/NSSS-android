.class final Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "WebSocket_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/WebSocket_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WebSocketConnectParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x30

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public client:Lorg/chromium/mojom/mojo/WebSocketClient;

.field public origin:Ljava/lang/String;

.field public protocols:[Ljava/lang/String;

.field public sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x30

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 178
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;-><init>(I)V

    .line 193
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 187
    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 188
    sget-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object v0, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 189
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;
    .locals 8
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v7, 0x0

    .line 201
    if-nez p0, :cond_1

    .line 202
    const/4 v3, 0x0

    .line 228
    :cond_0
    :goto_0
    return-object v3

    .line 204
    :cond_1
    sget-object v5, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    .line 205
    .local v2, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v3, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;

    iget v5, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v3, v5}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;-><init>(I)V

    .line 206
    .local v3, "result":Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;
    iget v5, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v5, :cond_2

    .line 207
    const/16 v5, 0x8

    invoke-virtual {p0, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    .line 209
    :cond_2
    iget v5, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v5, :cond_3

    .line 210
    const/16 v5, 0x10

    invoke-virtual {p0, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 212
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    .line 213
    .local v4, "si1":Lorg/chromium/mojo/bindings/DataHeader;
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v3, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    .line 214
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_1
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v1, v5, :cond_3

    .line 215
    iget-object v5, v3, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    mul-int/lit8 v6, v1, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v0, v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    .end local v1    # "i1":I
    .end local v4    # "si1":Lorg/chromium/mojo/bindings/DataHeader;
    :cond_3
    iget v5, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v5, :cond_4

    .line 220
    const/16 v5, 0x18

    invoke-virtual {p0, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    .line 222
    :cond_4
    iget v5, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v5, :cond_5

    .line 223
    const/16 v5, 0x20

    invoke-virtual {p0, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v5

    iput-object v5, v3, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 225
    :cond_5
    iget v5, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v5, :cond_0

    .line 226
    const/16 v5, 0x24

    sget-object v6, Lorg/chromium/mojom/mojo/WebSocketClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v5, v7, v6}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v5

    check-cast v5, Lorg/chromium/mojom/mojo/WebSocketClient;

    iput-object v5, v3, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 196
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/16 v5, 0x10

    const/4 v6, 0x0

    .line 234
    sget-object v3, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v3}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 235
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 236
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 237
    invoke-virtual {v0, v5, v6}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 244
    :cond_0
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    const/16 v4, 0x18

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 245
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 246
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    const/16 v4, 0x24

    sget-object v5, Lorg/chromium/mojom/mojo/WebSocketClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, v3, v4, v6, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 247
    return-void

    .line 239
    :cond_1
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v5, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    .line 240
    .local v1, "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v2, 0x0

    .local v2, "i0":I
    :goto_0
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 241
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    aget-object v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v1, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    if-ne p1, p0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v1

    .line 256
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 257
    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 259
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 260
    check-cast v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;

    .line 261
    .local v0, "other":Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 262
    goto :goto_0

    .line 263
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 264
    goto :goto_0

    .line 265
    :cond_5
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 266
    goto :goto_0

    .line 267
    :cond_6
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 268
    goto :goto_0

    .line 269
    :cond_7
    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 270
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 279
    const/16 v0, 0x1f

    .line 280
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 281
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 282
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 283
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 284
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 285
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 286
    return v1
.end method
