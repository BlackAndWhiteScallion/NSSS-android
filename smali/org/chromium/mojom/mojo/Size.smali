.class public final Lorg/chromium/mojom/mojo/Size;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Size.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x10

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public height:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/Size;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 17
    sget-object v0, Lorg/chromium/mojom/mojo/Size;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/Size;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/Size;-><init>(I)V

    .line 28
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 23
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 24
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Size;
    .locals 3
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 36
    if-nez p0, :cond_1

    .line 37
    const/4 v1, 0x0

    .line 47
    :cond_0
    :goto_0
    return-object v1

    .line 39
    :cond_1
    sget-object v2, Lorg/chromium/mojom/mojo/Size;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 40
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v1, Lorg/chromium/mojom/mojo/Size;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/mojo/Size;-><init>(I)V

    .line 41
    .local v1, "result":Lorg/chromium/mojom/mojo/Size;
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 42
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/Size;->width:I

    .line 44
    :cond_2
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_0

    .line 45
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/Size;->height:I

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Size;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 31
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Size;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 53
    sget-object v1, Lorg/chromium/mojom/mojo/Size;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 54
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget v1, p0, Lorg/chromium/mojom/mojo/Size;->width:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 55
    iget v1, p0, Lorg/chromium/mojom/mojo/Size;->height:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 56
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    if-ne p1, p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 68
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 69
    check-cast v0, Lorg/chromium/mojom/mojo/Size;

    .line 70
    .local v0, "other":Lorg/chromium/mojom/mojo/Size;
    iget v3, p0, Lorg/chromium/mojom/mojo/Size;->width:I

    iget v4, v0, Lorg/chromium/mojom/mojo/Size;->width:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iget v3, p0, Lorg/chromium/mojom/mojo/Size;->height:I

    iget v4, v0, Lorg/chromium/mojom/mojo/Size;->height:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 73
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 82
    const/16 v0, 0x1f

    .line 83
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 84
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/Size;->width:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 85
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/Size;->height:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 86
    return v1
.end method
