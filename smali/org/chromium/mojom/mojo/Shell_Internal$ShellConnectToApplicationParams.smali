.class final Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Shell_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/Shell_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShellConnectToApplicationParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x28

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public applicationUrl:Lorg/chromium/mojom/mojo/UrlRequest;

.field public exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

.field public filter:Lorg/chromium/mojom/mojo/CapabilityFilter;

.field public services:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/mojo/ServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 138
    sget-object v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;-><init>(I)V

    .line 151
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 146
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 147
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;
    .locals 6
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v5, 0x1

    .line 159
    if-nez p0, :cond_1

    .line 160
    const/4 v2, 0x0

    .line 178
    :cond_0
    :goto_0
    return-object v2

    .line 162
    :cond_1
    sget-object v3, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 163
    .local v1, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v2, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;

    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v3}, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;-><init>(I)V

    .line 164
    .local v2, "result":Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_2

    .line 165
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 166
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/mojo/UrlRequest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/UrlRequest;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->applicationUrl:Lorg/chromium/mojom/mojo/UrlRequest;

    .line 168
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_2
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_3

    .line 169
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 171
    :cond_3
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_4

    .line 172
    const/16 v3, 0x14

    sget-object v4, Lorg/chromium/mojom/mojo/ServiceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v3, v5, v4}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v3

    check-cast v3, Lorg/chromium/mojom/mojo/ServiceProvider;

    iput-object v3, v2, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    .line 174
    :cond_4
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_0

    .line 175
    const/16 v3, 0x20

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 176
    .restart local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/mojo/CapabilityFilter;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/CapabilityFilter;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->filter:Lorg/chromium/mojom/mojo/CapabilityFilter;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 154
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/4 v4, 0x1

    .line 184
    sget-object v1, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 185
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v1, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->applicationUrl:Lorg/chromium/mojom/mojo/UrlRequest;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 186
    iget-object v1, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 187
    iget-object v1, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    const/16 v2, 0x14

    sget-object v3, Lorg/chromium/mojom/mojo/ServiceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 188
    iget-object v1, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->filter:Lorg/chromium/mojom/mojo/CapabilityFilter;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 189
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    if-ne p1, p0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v1

    .line 198
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 199
    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 201
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 202
    check-cast v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;

    .line 203
    .local v0, "other":Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->applicationUrl:Lorg/chromium/mojom/mojo/UrlRequest;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->applicationUrl:Lorg/chromium/mojom/mojo/UrlRequest;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 204
    goto :goto_0

    .line 205
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 206
    goto :goto_0

    .line 207
    :cond_5
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 208
    goto :goto_0

    .line 209
    :cond_6
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->filter:Lorg/chromium/mojom/mojo/CapabilityFilter;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->filter:Lorg/chromium/mojom/mojo/CapabilityFilter;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 210
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 219
    const/16 v0, 0x1f

    .line 220
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 221
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->applicationUrl:Lorg/chromium/mojom/mojo/UrlRequest;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 222
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 223
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 224
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->filter:Lorg/chromium/mojom/mojo/CapabilityFilter;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 225
    return v1
.end method
