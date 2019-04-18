.class final Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "HttpServerDelegate_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HttpServerDelegateOnConnectedParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x18

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public connection:Lorg/chromium/mojom/mojo/HttpConnection;

.field public delegate:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/mojo/HttpConnectionDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 121
    sget-object v0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;-><init>(I)V

    .line 132
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 127
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 128
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;
    .locals 5
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v4, 0x0

    .line 140
    if-nez p0, :cond_1

    .line 141
    const/4 v1, 0x0

    .line 151
    :cond_0
    :goto_0
    return-object v1

    .line 143
    :cond_1
    sget-object v2, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 144
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v1, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;-><init>(I)V

    .line 145
    .local v1, "result":Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 146
    const/16 v2, 0x8

    sget-object v3, Lorg/chromium/mojom/mojo/HttpConnection;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v2, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/mojom/mojo/HttpConnection;

    iput-object v2, v1, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->connection:Lorg/chromium/mojom/mojo/HttpConnection;

    .line 148
    :cond_2
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_0

    .line 149
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->delegate:Lorg/chromium/mojo/bindings/InterfaceRequest;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 135
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/4 v4, 0x0

    .line 157
    sget-object v1, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 158
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->connection:Lorg/chromium/mojom/mojo/HttpConnection;

    const/16 v2, 0x8

    sget-object v3, Lorg/chromium/mojom/mojo/HttpConnection;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 159
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->delegate:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 160
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    if-ne p1, p0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 169
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 170
    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 172
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 173
    check-cast v0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;

    .line 174
    .local v0, "other":Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->connection:Lorg/chromium/mojom/mojo/HttpConnection;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->connection:Lorg/chromium/mojom/mojo/HttpConnection;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 175
    goto :goto_0

    .line 176
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->delegate:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->delegate:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 177
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 186
    const/16 v0, 0x1f

    .line 187
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 188
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->connection:Lorg/chromium/mojom/mojo/HttpConnection;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 189
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;->delegate:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 190
    return v1
.end method
