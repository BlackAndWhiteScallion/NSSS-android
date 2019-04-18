.class public final Lorg/chromium/mojom/mojo/RectF;
.super Lorg/chromium/mojo/bindings/Struct;
.source "RectF.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x18

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/RectF;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 17
    sget-object v0, Lorg/chromium/mojom/mojo/RectF;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/RectF;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/RectF;-><init>(I)V

    .line 30
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 25
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 26
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/RectF;
    .locals 3
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 38
    if-nez p0, :cond_1

    .line 39
    const/4 v1, 0x0

    .line 55
    :cond_0
    :goto_0
    return-object v1

    .line 41
    :cond_1
    sget-object v2, Lorg/chromium/mojom/mojo/RectF;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 42
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v1, Lorg/chromium/mojom/mojo/RectF;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/mojo/RectF;-><init>(I)V

    .line 43
    .local v1, "result":Lorg/chromium/mojom/mojo/RectF;
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 44
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/RectF;->x:F

    .line 46
    :cond_2
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 47
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/RectF;->y:F

    .line 49
    :cond_3
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_4

    .line 50
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/RectF;->width:F

    .line 52
    :cond_4
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_0

    .line 53
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/RectF;->height:F

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/RectF;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 33
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/RectF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/RectF;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 61
    sget-object v1, Lorg/chromium/mojom/mojo/RectF;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 62
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget v1, p0, Lorg/chromium/mojom/mojo/RectF;->x:F

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    .line 63
    iget v1, p0, Lorg/chromium/mojom/mojo/RectF;->y:F

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    .line 64
    iget v1, p0, Lorg/chromium/mojom/mojo/RectF;->width:F

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    .line 65
    iget v1, p0, Lorg/chromium/mojom/mojo/RectF;->height:F

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    .line 66
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    if-ne p1, p0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 78
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 79
    check-cast v0, Lorg/chromium/mojom/mojo/RectF;

    .line 80
    .local v0, "other":Lorg/chromium/mojom/mojo/RectF;
    iget v3, p0, Lorg/chromium/mojom/mojo/RectF;->x:F

    iget v4, v0, Lorg/chromium/mojom/mojo/RectF;->x:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    move v1, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iget v3, p0, Lorg/chromium/mojom/mojo/RectF;->y:F

    iget v4, v0, Lorg/chromium/mojom/mojo/RectF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    move v1, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_5
    iget v3, p0, Lorg/chromium/mojom/mojo/RectF;->width:F

    iget v4, v0, Lorg/chromium/mojom/mojo/RectF;->width:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    move v1, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_6
    iget v3, p0, Lorg/chromium/mojom/mojo/RectF;->height:F

    iget v4, v0, Lorg/chromium/mojom/mojo/RectF;->height:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    move v1, v2

    .line 87
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 96
    const/16 v0, 0x1f

    .line 97
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 98
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/RectF;->x:F

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(F)I

    move-result v3

    add-int v1, v2, v3

    .line 99
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/RectF;->y:F

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(F)I

    move-result v3

    add-int v1, v2, v3

    .line 100
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/RectF;->width:F

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(F)I

    move-result v3

    add-int v1, v2, v3

    .line 101
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/RectF;->height:F

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(F)I

    move-result v3

    add-int v1, v2, v3

    .line 102
    return v1
.end method
