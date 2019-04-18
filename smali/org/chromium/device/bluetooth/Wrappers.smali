.class Lorg/chromium/device/bluetooth/Wrappers;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackImpl;,
        Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cr.Bluetooth"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    return-void
.end method
