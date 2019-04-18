.class final Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;
.super Ljava/lang/Object;
.source "ChromeBluetoothDevice.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cr.Bluetooth"


# instance fields
.field private final mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

.field private mUuidsFromScan:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 2
    .param p1, "deviceWrapper"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 34
    const-string v0, "cr.Bluetooth"

    const-string v1, "ChromeBluetoothDevice created."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private static create(Ljava/lang/Object;)Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;
    .locals 1
    .param p0, "deviceWrapper"    # Ljava/lang/Object;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    check-cast p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .end local p0    # "deviceWrapper":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;-><init>(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V

    return-object v0
.end method

.method private getAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBluetoothClass()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->getBluetoothClass_getDeviceClass()I

    move-result v0

    return v0
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUuids()[Ljava/lang/String;
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 80
    iget-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mUuidsFromScan:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mUuidsFromScan:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 81
    .local v2, "uuidCount":I
    :goto_0
    new-array v1, v2, [Ljava/lang/String;

    .line 82
    .local v1, "string_array":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 83
    iget-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mUuidsFromScan:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    .end local v1    # "string_array":[Ljava/lang/String;
    .end local v2    # "uuidCount":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 89
    .restart local v0    # "i":I
    .restart local v1    # "string_array":[Ljava/lang/String;
    .restart local v2    # "uuidCount":I
    :cond_1
    return-object v1
.end method

.method private isPaired()Z
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAdvertisedUUIDs(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)Z"
        }
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 51
    .local p1, "uuidsFromScan":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mUuidsFromScan:Ljava/util/List;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mUuidsFromScan:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mUuidsFromScan:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    .line 55
    :cond_2
    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mUuidsFromScan:Ljava/util/List;

    .line 56
    const/4 v0, 0x1

    goto :goto_0
.end method
