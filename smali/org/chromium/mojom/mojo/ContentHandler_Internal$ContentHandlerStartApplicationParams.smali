.class final Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "ContentHandler_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/ContentHandler_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContentHandlerStartApplicationParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x18

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public application:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/mojo/Application;",
            ">;"
        }
    .end annotation
.end field

.field public response:Lorg/chromium/mojom/mojo/UrlResponse;


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

    sput-object v0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 121
    sget-object v0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;-><init>(I)V

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

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;
    .locals 5
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v4, 0x0

    .line 140
    if-nez p0, :cond_1

    .line 141
    const/4 v2, 0x0

    .line 152
    :cond_0
    :goto_0
    return-object v2

    .line 143
    :cond_1
    sget-object v3, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 144
    .local v1, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v2, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;

    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v3}, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;-><init>(I)V

    .line 145
    .local v2, "result":Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_2

    .line 146
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->application:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 148
    :cond_2
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_0

    .line 149
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 150
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/mojo/UrlResponse;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlResponse;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 135
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/4 v3, 0x0

    .line 158
    sget-object v1, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 159
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v1, p0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->application:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 160
    iget-object v1, p0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 161
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    if-ne p1, p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 171
    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 173
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 174
    check-cast v0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;

    .line 175
    .local v0, "other":Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->application:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->application:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 176
    goto :goto_0

    .line 177
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 178
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 187
    const/16 v0, 0x1f

    .line 188
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 189
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->application:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 190
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 191
    return v1
.end method
