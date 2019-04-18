.class final Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
.super Ljava/lang/Object;
.source "ChromeBluetoothAdapter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$1;,
        Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "cr.Bluetooth"


# instance fields
.field private mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

.field private mNativeBluetoothAdapterAndroid:J

.field private mNumDiscoverySessions:I

.field private mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;)V
    .locals 3
    .param p1, "nativeBluetoothAdapterAndroid"    # J
    .param p3, "adapterWrapper"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    .line 50
    iput-object p3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    .line 51
    if-nez p3, :cond_0

    .line 52
    const-string v0, "cr.Bluetooth"

    const-string v1, "ChromeBluetoothAdapter created with no adapterWrapper."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v0, "cr.Bluetooth"

    const-string v1, "ChromeBluetoothAdapter created with provided adapterWrapper."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;JLjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/util/List;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->nativeCreateOrUpdateDeviceOnScan(JLjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->nativeOnScanFailed(J)V

    return-void
.end method

.method static synthetic access$402(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    return p1
.end method

.method private addDiscoverySession()Z
    .locals 5
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 129
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPowered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    const-string v1, "cr.Bluetooth"

    const-string v2, "addDiscoverySession: Fails: !isPowered"

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    return v0

    .line 134
    :cond_0
    iget v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    .line 135
    const-string v2, "cr.Bluetooth"

    const-string v3, "addDiscoverySession: Now %d sessions."

    iget v4, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    iget v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    if-le v2, v1, :cond_1

    move v0, v1

    .line 137
    goto :goto_0

    .line 140
    :cond_1
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->startScan()Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    iget v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method private static create(JLjava/lang/Object;)Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
    .locals 2
    .param p0, "nativeBluetoothAdapterAndroid"    # J
    .param p2, "adapterWrapper"    # Ljava/lang/Object;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    check-cast p2, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    .end local p2    # "adapterWrapper":Ljava/lang/Object;
    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;-><init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;)V

    return-object v0
.end method

.method private getAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private isDiscoverable()Z
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDiscovering()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPowered()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPresent()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeCreateOrUpdateDeviceOnScan(JLjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOnScanFailed(J)V
.end method

.method private onBluetoothAdapterAndroidDestruction()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->stopScan()Z

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    .line 65
    return-void
.end method

.method private removeDiscoverySession()Z
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 150
    iget v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    if-nez v1, :cond_1

    .line 151
    sget-boolean v1, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_0
    const-string v1, "cr.Bluetooth"

    const-string v2, "removeDiscoverySession: No scan in progress."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :goto_0
    return v0

    .line 156
    :cond_1
    iget v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    .line 158
    iget v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    if-nez v0, :cond_2

    .line 159
    const-string v0, "cr.Bluetooth"

    const-string v1, "removeDiscoverySession: Now 0 sessions. Stopping scan."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->stopScan()Z

    move-result v0

    goto :goto_0

    .line 163
    :cond_2
    const-string v0, "cr.Bluetooth"

    const-string v1, "removeDiscoverySession: Now %d sessions."

    iget v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startScan()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 177
    const/4 v1, 0x2

    .line 179
    .local v1, "scanMode":I
    sget-boolean v3, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 180
    :cond_0
    new-instance v3, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    invoke-direct {v3, p0, v4}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$1;)V

    iput-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    .line 183
    :try_start_0
    iget-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getBluetoothLeScanner()Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    invoke-virtual {v3, v4, v1, v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->startScan(Ljava/util/List;ILorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "cr.Bluetooth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot start scan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private stopScan()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 196
    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    if-nez v2, :cond_0

    .line 207
    :goto_0
    return v1

    .line 200
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getBluetoothLeScanner()Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    invoke-virtual {v2, v3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->stopScan(Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    iput-object v5, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    .line 207
    const/4 v1, 0x1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "cr.Bluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot stop scan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iput-object v5, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    goto :goto_0
.end method
