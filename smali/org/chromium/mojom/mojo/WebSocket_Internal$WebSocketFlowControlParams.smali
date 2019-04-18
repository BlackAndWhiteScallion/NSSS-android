.class final Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "WebSocket_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/WebSocket_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WebSocketFlowControlParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x10

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public quota:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 379
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;-><init>(I)V

    .line 389
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 384
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 385
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;
    .locals 4
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 397
    if-nez p0, :cond_1

    .line 398
    const/4 v1, 0x0

    .line 405
    :cond_0
    :goto_0
    return-object v1

    .line 400
    :cond_1
    sget-object v2, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 401
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;-><init>(I)V

    .line 402
    .local v1, "result":Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_0

    .line 403
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->quota:J

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 392
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 411
    sget-object v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 412
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-wide v2, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->quota:J

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    .line 413
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 420
    if-ne p1, p0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v1

    .line 422
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 423
    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 425
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 426
    check-cast v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;

    .line 427
    .local v0, "other":Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;
    iget-wide v4, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->quota:J

    iget-wide v6, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->quota:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    .line 428
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 437
    const/16 v0, 0x1f

    .line 438
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 439
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->quota:J

    invoke-static {v4, v5}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(J)I

    move-result v3

    add-int v1, v2, v3

    .line 440
    return v1
.end method
