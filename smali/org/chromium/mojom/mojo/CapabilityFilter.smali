.class public final Lorg/chromium/mojom/mojo/CapabilityFilter;
.super Lorg/chromium/mojo/bindings/Struct;
.source "CapabilityFilter.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x10

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public filter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

    sput-object v0, Lorg/chromium/mojom/mojo/CapabilityFilter;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 17
    sget-object v0, Lorg/chromium/mojom/mojo/CapabilityFilter;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/CapabilityFilter;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/CapabilityFilter;-><init>(I)V

    .line 27
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 22
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 23
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/CapabilityFilter;
    .locals 15
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 35
    if-nez p0, :cond_1

    .line 36
    const/4 v8, 0x0

    .line 79
    :cond_0
    return-object v8

    .line 38
    :cond_1
    sget-object v12, Lorg/chromium/mojom/mojo/CapabilityFilter;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v12}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    .line 39
    .local v7, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v8, Lorg/chromium/mojom/mojo/CapabilityFilter;

    iget v12, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v8, v12}, Lorg/chromium/mojom/mojo/CapabilityFilter;-><init>(I)V

    .line 40
    .local v8, "result":Lorg/chromium/mojom/mojo/CapabilityFilter;
    iget v12, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v12, :cond_0

    .line 41
    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 43
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    .line 47
    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 49
    .local v1, "decoder2":Lorg/chromium/mojo/bindings/Decoder;
    const/4 v12, -0x1

    invoke-virtual {v1, v12}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v9

    .line 50
    .local v9, "si2":Lorg/chromium/mojo/bindings/DataHeader;
    iget v12, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v12, [Ljava/lang/String;

    .line 51
    .local v6, "keys0":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i2":I
    :goto_0
    iget v12, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v3, v12, :cond_2

    .line 52
    mul-int/lit8 v12, v3, 0x8

    add-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v3

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_2
    const/16 v12, 0x10

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 59
    array-length v12, v6

    invoke-virtual {v1, v12}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v9

    .line 60
    iget v12, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v12, [[Ljava/lang/String;

    .line 61
    .local v11, "values0":[[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_1
    iget v12, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v3, v12, :cond_4

    .line 62
    mul-int/lit8 v12, v3, 0x8

    add-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 64
    .local v2, "decoder3":Lorg/chromium/mojo/bindings/Decoder;
    const/4 v12, -0x1

    invoke-virtual {v2, v12}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    .line 65
    .local v10, "si3":Lorg/chromium/mojo/bindings/DataHeader;
    iget v12, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v12, v12, [Ljava/lang/String;

    aput-object v12, v11, v3

    .line 66
    const/4 v4, 0x0

    .local v4, "i3":I
    :goto_2
    iget v12, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v4, v12, :cond_3

    .line 67
    aget-object v12, v11, v3

    mul-int/lit8 v13, v4, 0x8

    add-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 61
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    .end local v2    # "decoder3":Lorg/chromium/mojo/bindings/Decoder;
    .end local v4    # "i3":I
    .end local v10    # "si3":Lorg/chromium/mojo/bindings/DataHeader;
    :cond_4
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v8, Lorg/chromium/mojom/mojo/CapabilityFilter;->filter:Ljava/util/Map;

    .line 74
    const/4 v5, 0x0

    .local v5, "index0":I
    :goto_3
    array-length v12, v6

    if-ge v5, v12, :cond_0

    .line 75
    iget-object v12, v8, Lorg/chromium/mojom/mojo/CapabilityFilter;->filter:Ljava/util/Map;

    aget-object v13, v6, v5

    aget-object v14, v11, v5

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/CapabilityFilter;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 30
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/CapabilityFilter;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/CapabilityFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 16
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 85
    sget-object v13, Lorg/chromium/mojom/mojo/CapabilityFilter;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    .line 86
    .local v1, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/mojom/mojo/CapabilityFilter;->filter:Ljava/util/Map;

    if-nez v13, :cond_1

    .line 87
    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 119
    :cond_0
    return-void

    .line 89
    :cond_1
    const/16 v13, 0x8

    invoke-virtual {v1, v13}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    .line 90
    .local v2, "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/mojom/mojo/CapabilityFilter;->filter:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v11

    .line 91
    .local v11, "size0":I
    new-array v10, v11, [Ljava/lang/String;

    .line 92
    .local v10, "keys0":[Ljava/lang/String;
    new-array v12, v11, [[Ljava/lang/String;

    .line 93
    .local v12, "values0":[[Ljava/lang/String;
    const/4 v9, 0x0

    .line 94
    .local v9, "index0":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/mojom/mojo/CapabilityFilter;->filter:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 95
    .local v5, "entry0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v10, v9

    .line 96
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    aput-object v13, v12, v9

    .line 97
    add-int/lit8 v9, v9, 0x1

    .line 98
    goto :goto_0

    .line 100
    .end local v5    # "entry0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_2
    array-length v13, v10

    const/16 v14, 0x8

    const/4 v15, -0x1

    invoke-virtual {v2, v13, v14, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v3

    .line 101
    .local v3, "encoder2":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v7, 0x0

    .local v7, "i1":I
    :goto_1
    array-length v13, v10

    if-ge v7, v13, :cond_3

    .line 102
    aget-object v13, v10, v7

    mul-int/lit8 v14, v7, 0x8

    add-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v3, v13, v14, v15}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 101
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 106
    :cond_3
    array-length v13, v12

    const/16 v14, 0x10

    const/4 v15, -0x1

    invoke-virtual {v2, v13, v14, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v3

    .line 107
    const/4 v7, 0x0

    :goto_2
    array-length v13, v12

    if-ge v7, v13, :cond_0

    .line 108
    aget-object v13, v12, v7

    if-nez v13, :cond_5

    .line 109
    mul-int/lit8 v13, v7, 0x8

    add-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 107
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 111
    :cond_5
    aget-object v13, v12, v7

    array-length v13, v13

    mul-int/lit8 v14, v7, 0x8

    add-int/lit8 v14, v14, 0x8

    const/4 v15, -0x1

    invoke-virtual {v3, v13, v14, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v4

    .line 112
    .local v4, "encoder3":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v8, 0x0

    .local v8, "i2":I
    :goto_3
    aget-object v13, v12, v7

    array-length v13, v13

    if-ge v8, v13, :cond_4

    .line 113
    aget-object v13, v12, v7

    aget-object v13, v13, v8

    mul-int/lit8 v14, v8, 0x8

    add-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v4, v13, v14, v15}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 112
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    if-ne p1, p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 129
    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 131
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 132
    check-cast v0, Lorg/chromium/mojom/mojo/CapabilityFilter;

    .line 133
    .local v0, "other":Lorg/chromium/mojom/mojo/CapabilityFilter;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/CapabilityFilter;->filter:Ljava/util/Map;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/CapabilityFilter;->filter:Ljava/util/Map;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 134
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 143
    const/16 v0, 0x1f

    .line 144
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 145
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/CapabilityFilter;->filter:Ljava/util/Map;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 146
    return v1
.end method
