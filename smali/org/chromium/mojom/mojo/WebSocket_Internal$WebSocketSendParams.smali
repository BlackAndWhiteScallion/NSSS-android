.class final Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "WebSocket_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/WebSocket_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WebSocketSendParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x18

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public fin:Z

.field public numBytes:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 294
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;-><init>(I)V

    .line 306
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 301
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 302
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;
    .locals 4
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 314
    if-nez p0, :cond_1

    .line 315
    const/4 v1, 0x0

    .line 328
    :cond_0
    :goto_0
    return-object v1

    .line 317
    :cond_1
    sget-object v2, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 318
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;-><init>(I)V

    .line 319
    .local v1, "result":Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 320
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    .line 322
    :cond_2
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 323
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    .line 325
    :cond_3
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_0

    .line 326
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 309
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 334
    sget-object v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 335
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-boolean v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 336
    iget v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 337
    iget v1, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 338
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    if-ne p1, p0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v1

    .line 347
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 348
    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 350
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 351
    check-cast v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;

    .line 352
    .local v0, "other":Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;
    iget-boolean v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    iget-boolean v4, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 353
    goto :goto_0

    .line 354
    :cond_4
    iget v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    iget v4, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 355
    goto :goto_0

    .line 356
    :cond_5
    iget v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    iget v4, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 357
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 366
    const/16 v0, 0x1f

    .line 367
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 368
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v3

    add-int v1, v2, v3

    .line 369
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 370
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 371
    return v1
.end method
