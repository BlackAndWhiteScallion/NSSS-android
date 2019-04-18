.class final Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "TcpServerSocket_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/TcpServerSocket_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TcpServerSocketAcceptResponseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x18

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

.field public result:Lorg/chromium/mojom/mojo/NetworkError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 213
    sget-object v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;-><init>(I)V

    .line 224
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 219
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 220
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;
    .locals 5
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 232
    if-nez p0, :cond_1

    .line 233
    const/4 v2, 0x0

    .line 245
    :cond_0
    :goto_0
    return-object v2

    .line 235
    :cond_1
    sget-object v3, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 236
    .local v1, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v2, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;

    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v3}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;-><init>(I)V

    .line 237
    .local v2, "result":Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_2

    .line 238
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 239
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetworkError;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetworkError;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 241
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_2
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_0

    .line 242
    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 243
    .restart local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetAddress;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/NetAddress;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 227
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 251
    sget-object v1, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 252
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v1, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 253
    iget-object v1, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 254
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    if-ne p1, p0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v1

    .line 263
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 264
    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 266
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 267
    check-cast v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;

    .line 268
    .local v0, "other":Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 269
    goto :goto_0

    .line 270
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 271
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 280
    const/16 v0, 0x1f

    .line 281
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 282
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 283
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 284
    return v1
.end method
