.class public final Lorg/chromium/mojom/skia/Bitmap;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Bitmap.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x28

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public alphaType:I

.field public colorType:I

.field public height:I

.field public pixelData:[B

.field public profileType:I

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

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/skia/Bitmap;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 17
    sget-object v0, Lorg/chromium/mojom/skia/Bitmap;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/skia/Bitmap;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/skia/Bitmap;-><init>(I)V

    .line 32
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 27
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 28
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/skia/Bitmap;
    .locals 5
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 40
    if-nez p0, :cond_1

    .line 41
    const/4 v1, 0x0

    .line 63
    :cond_0
    :goto_0
    return-object v1

    .line 43
    :cond_1
    sget-object v2, Lorg/chromium/mojom/skia/Bitmap;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 44
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v1, Lorg/chromium/mojom/skia/Bitmap;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/skia/Bitmap;-><init>(I)V

    .line 45
    .local v1, "result":Lorg/chromium/mojom/skia/Bitmap;
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 46
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/skia/Bitmap;->colorType:I

    .line 48
    :cond_2
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 49
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/skia/Bitmap;->alphaType:I

    .line 51
    :cond_3
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_4

    .line 52
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/skia/Bitmap;->profileType:I

    .line 54
    :cond_4
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_5

    .line 55
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/skia/Bitmap;->width:I

    .line 57
    :cond_5
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_6

    .line 58
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/skia/Bitmap;->height:I

    .line 60
    :cond_6
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_0

    .line 61
    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/mojom/skia/Bitmap;->pixelData:[B

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/skia/Bitmap;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 35
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/skia/Bitmap;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/skia/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 69
    sget-object v1, Lorg/chromium/mojom/skia/Bitmap;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 70
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->colorType:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 71
    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->alphaType:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 72
    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->profileType:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 73
    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->width:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 74
    iget v1, p0, Lorg/chromium/mojom/skia/Bitmap;->height:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 75
    iget-object v1, p0, Lorg/chromium/mojom/skia/Bitmap;->pixelData:[B

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    .line 76
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p1, p0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 88
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 89
    check-cast v0, Lorg/chromium/mojom/skia/Bitmap;

    .line 90
    .local v0, "other":Lorg/chromium/mojom/skia/Bitmap;
    iget v3, p0, Lorg/chromium/mojom/skia/Bitmap;->colorType:I

    iget v4, v0, Lorg/chromium/mojom/skia/Bitmap;->colorType:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    iget v3, p0, Lorg/chromium/mojom/skia/Bitmap;->alphaType:I

    iget v4, v0, Lorg/chromium/mojom/skia/Bitmap;->alphaType:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    iget v3, p0, Lorg/chromium/mojom/skia/Bitmap;->profileType:I

    iget v4, v0, Lorg/chromium/mojom/skia/Bitmap;->profileType:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 95
    goto :goto_0

    .line 96
    :cond_6
    iget v3, p0, Lorg/chromium/mojom/skia/Bitmap;->width:I

    iget v4, v0, Lorg/chromium/mojom/skia/Bitmap;->width:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_7
    iget v3, p0, Lorg/chromium/mojom/skia/Bitmap;->height:I

    iget v4, v0, Lorg/chromium/mojom/skia/Bitmap;->height:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 99
    goto :goto_0

    .line 100
    :cond_8
    iget-object v3, p0, Lorg/chromium/mojom/skia/Bitmap;->pixelData:[B

    iget-object v4, v0, Lorg/chromium/mojom/skia/Bitmap;->pixelData:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 101
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 110
    const/16 v0, 0x1f

    .line 111
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 112
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/skia/Bitmap;->colorType:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 113
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/skia/Bitmap;->alphaType:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 114
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/skia/Bitmap;->profileType:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 115
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/skia/Bitmap;->width:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 116
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/skia/Bitmap;->height:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 117
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/skia/Bitmap;->pixelData:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 118
    return v1
.end method
