.class Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothLeScannerWrapper"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;",
            "Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanner:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeScanner;)V
    .locals 1
    .param p1, "scanner"    # Landroid/bluetooth/le/BluetoothLeScanner;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->mCallbacks:Ljava/util/HashMap;

    .line 135
    return-void
.end method


# virtual methods
.method public startScan(Ljava/util/List;ILorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V
    .locals 3
    .param p2, "scanSettingsScanMode"    # I
    .param p3, "callback"    # Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;I",
            "Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v2, p2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    .line 142
    .local v1, "settings":Landroid/bluetooth/le/ScanSettings;
    new-instance v0, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackImpl;

    invoke-direct {v0, p3}, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackImpl;-><init>(Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V

    .line 143
    .local v0, "callbackImpl":Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackImpl;
    iget-object v2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v2, p1, v1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 146
    return-void
.end method

.method public stopScan(Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V
    .locals 2
    .param p1, "callback"    # Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;

    .prologue
    .line 149
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackImpl;

    .line 150
    .local v0, "callbackImpl":Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackImpl;
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 151
    return-void
.end method
