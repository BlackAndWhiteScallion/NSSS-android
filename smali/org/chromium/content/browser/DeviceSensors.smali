.class Lorg/chromium/content/browser/DeviceSensors;
.super Ljava/lang/Object;
.source "DeviceSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;,
        Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DEVICE_LIGHT:I = 0x2

.field static final DEVICE_LIGHT_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_MOTION:I = 0x1

.field static final DEVICE_MOTION_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION:I = 0x0

.field static final DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXPERIMENTAL_WEB_PLAFTORM_FEATURES:Ljava/lang/String; = "enable-experimental-web-platform-features"

.field static final ORIENTATION_ACCELEROMETER_MAGNETIC:I = 0x2

.field static final ORIENTATION_GAME_ROTATION_VECTOR:I = 0x3

.field static final ORIENTATION_NOT_AVAILABLE:I = 0x0

.field static final ORIENTATION_ROTATION_VECTOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "cr.DeviceSensors"

.field private static sSingleton:Lorg/chromium/content/browser/DeviceSensors;

.field private static sSingletonLock:Ljava/lang/Object;


# instance fields
.field final mActiveSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field mDeviceLightIsActive:Z

.field mDeviceMotionIsActive:Z

.field mDeviceOrientationIsActive:Z

.field mDeviceOrientationIsActiveWithBackupSensors:Z

.field mDeviceOrientationSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceRotationMatrix:[F

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerLock:Ljava/lang/Object;

.field private mMagneticFieldVector:[F

.field private mNativePtr:J

.field private final mNativePtrLock:Ljava/lang/Object;

.field mOrientationNotAvailable:Z

.field final mOrientationSensorSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRotationAngles:[D

.field private mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

.field private mThread:Ljava/lang/Thread;

.field private mTruncatedRotationVector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 30
    const-class v0, Lorg/chromium/content/browser/DeviceSensors;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/DeviceSensors;->$assertionsDisabled:Z

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingletonLock:Ljava/lang/Object;

    .line 88
    new-array v0, v1, [Ljava/lang/Integer;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;

    .line 90
    new-array v0, v1, [Ljava/lang/Integer;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    .line 93
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    .line 100
    new-array v0, v1, [Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    return-void

    :cond_0
    move v0, v2

    .line 30
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "relativeByDefault"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandlerLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    .line 107
    iput-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    .line 108
    iput-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    .line 109
    iput-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    .line 110
    iput-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActiveWithBackupSensors:Z

    .line 111
    iput-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationNotAvailable:Z

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mAppContext:Landroid/content/Context;

    .line 118
    if-eqz p2, :cond_0

    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationSensorSets:Ljava/util/List;

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    new-array v0, v4, [Ljava/util/Set;

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationSensorSets:Ljava/util/List;

    goto :goto_0
.end method

.method public static computeDeviceOrientationFromRotationMatrix([F[D)[D
    .locals 9
    .param p0, "matrixR"    # [F
    .param p1, "values"    # [D
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 393
    array-length v0, p0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-object p1

    .line 395
    :cond_1
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 396
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 397
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 398
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    .line 423
    :goto_1
    aget-wide v0, p1, v7

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 424
    aget-wide v0, p1, v7

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    aput-wide v0, p1, v7

    goto :goto_0

    .line 399
    :cond_2
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 400
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 401
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 402
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_3

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_2
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 403
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    goto :goto_1

    .line 402
    :cond_3
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_2

    .line 405
    :cond_4
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 406
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 407
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 408
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 409
    :cond_5
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    .line 410
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 411
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 412
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_6

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_3
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 413
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 412
    :cond_6
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_3

    .line 416
    :cond_7
    const/4 v0, 0x3

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 417
    aget v0, p0, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_4
    aput-wide v0, p1, v6

    .line 418
    const-wide/16 v0, 0x0

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 417
    :cond_8
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_4
.end method

.method private ensureRotationStructuresAllocated()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    if-nez v0, :cond_0

    .line 491
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    if-nez v0, :cond_1

    .line 494
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    .line 496
    :cond_1
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 587
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 588
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 589
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceMotionAndOrientation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 590
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 591
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    .line 593
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    monitor-exit v2

    return-object v1

    .line 594
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getInstance(Landroid/content/Context;)Lorg/chromium/content/browser/DeviceSensors;
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 599
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v2

    .line 600
    :try_start_0
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    if-nez v1, :cond_0

    .line 603
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string v3, "enable-experimental-web-platform-features"

    invoke-virtual {v1, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    .line 605
    .local v0, "relativeByDefault":Z
    new-instance v1, Lorg/chromium/content/browser/DeviceSensors;

    invoke-direct {v1, p0, v0}, Lorg/chromium/content/browser/DeviceSensors;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    .line 607
    .end local v0    # "relativeByDefault":Z
    :cond_0
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    monitor-exit v2

    return-object v1

    .line 608
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOrientationFromGeomagneticVectors([F[F)V
    .locals 8
    .param p1, "acceleration"    # [F
    .param p2, "magnetic"    # [F

    .prologue
    .line 440
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    invoke-static {v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 448
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotOrientation(DDD)V

    goto :goto_0
.end method

.method private getOrientationFromRotationVector([F)V
    .locals 8
    .param p1, "rotationVector"    # [F

    .prologue
    .line 431
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 432
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    invoke-static {v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 434
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotOrientation(DDD)V

    .line 437
    return-void
.end method

.method private getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    .locals 3

    .prologue
    .line 454
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 465
    :goto_0
    return-object v1

    .line 458
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 459
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mAppContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 462
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_1

    .line 463
    new-instance v1, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 465
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    goto :goto_0
.end method

.method private native nativeGotAcceleration(JDDD)V
.end method

.method private native nativeGotAccelerationIncludingGravity(JDDD)V
.end method

.method private native nativeGotLight(JD)V
.end method

.method private native nativeGotOrientation(JDDD)V
.end method

.method private native nativeGotRotationRate(JDDD)V
.end method

.method private registerForSensorType(II)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "rateInMicroseconds"    # I

    .prologue
    .line 536
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    move-result-object v0

    .line 537
    .local v0, "sensorManager":Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    if-nez v0, :cond_0

    .line 538
    const/4 v1, 0x0

    .line 540
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;->registerListener(Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)Z

    move-result v1

    goto :goto_0
.end method

.method private registerSensors(Ljava/util/Set;IZ)Z
    .locals 6
    .param p2, "rateInMicroseconds"    # I
    .param p3, "failOnMissingSensor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "sensorTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 508
    .local v3, "sensorsToActivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 509
    const/4 v4, 0x0

    .line 511
    .local v4, "success":Z
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 512
    .local v2, "sensorType":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lorg/chromium/content/browser/DeviceSensors;->registerForSensorType(II)Z

    move-result v1

    .line 513
    .local v1, "result":Z
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 515
    invoke-direct {p0, v3}, Lorg/chromium/content/browser/DeviceSensors;->unregisterSensors(Ljava/lang/Iterable;)V

    .line 516
    const/4 v4, 0x0

    .line 523
    .end local v1    # "result":Z
    .end local v2    # "sensorType":Ljava/lang/Integer;
    .end local v4    # "success":Z
    :cond_1
    return v4

    .line 518
    .restart local v1    # "result":Z
    .restart local v2    # "sensorType":Ljava/lang/Integer;
    .restart local v4    # "success":Z
    :cond_2
    if-eqz v1, :cond_0

    .line 519
    iget-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setEventTypeActive(IZ)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "active"    # Z

    .prologue
    .line 474
    packed-switch p1, :pswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 476
    :pswitch_0
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    .line 477
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActiveWithBackupSensors:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 481
    :pswitch_1
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    goto :goto_0

    .line 484
    :pswitch_2
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private unregisterSensors(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "sensorTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 528
    .local v1, "sensorType":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;->unregisterListener(Landroid/hardware/SensorEventListener;I)V

    .line 530
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 533
    .end local v1    # "sensorType":Ljava/lang/Integer;
    :cond_1
    return-void
.end method


# virtual methods
.method public getNumberActiveDeviceMotionSensors()I
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 201
    .local v0, "deviceMotionSensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 202
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public getOrientationSensorTypeUsed()I
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationNotAvailable:Z

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;

    if-ne v1, v2, :cond_2

    .line 211
    const/4 v0, 0x3

    goto :goto_0

    .line 213
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    if-ne v1, v2, :cond_3

    .line 214
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    :cond_3
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    if-ne v1, v2, :cond_4

    .line 217
    const/4 v0, 0x2

    goto :goto_0

    .line 220
    :cond_4
    sget-boolean v1, Lorg/chromium/content/browser/DeviceSensors;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected gotAcceleration(DDD)V
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 552
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 553
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 554
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotAcceleration(JDDD)V

    .line 556
    :cond_0
    monitor-exit v10

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotAccelerationIncludingGravity(DDD)V
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 560
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 561
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 562
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotAccelerationIncludingGravity(JDDD)V

    .line 564
    :cond_0
    monitor-exit v10

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotLight(D)V
    .locals 7
    .param p1, "value"    # D

    .prologue
    .line 576
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v1

    .line 577
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 578
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotLight(JD)V

    .line 580
    :cond_0
    monitor-exit v1

    .line 581
    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotOrientation(DDD)V
    .locals 11
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 544
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 545
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 546
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotOrientation(JDDD)V

    .line 548
    :cond_0
    monitor-exit v10

    .line 549
    return-void

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotRotationRate(DDD)V
    .locals 11
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 568
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 569
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 570
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotRotationRate(JDDD)V

    .line 572
    :cond_0
    monitor-exit v10

    .line 573
    return-void

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 280
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 284
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->sensorChanged(I[F)V

    .line 285
    return-void
.end method

.method protected registerOrientationSensorsWithFallback(I)Z
    .locals 6
    .param p1, "rateInMicroseconds"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 142
    iget-boolean v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationNotAvailable:Z

    if-eqz v4, :cond_0

    .line 157
    :goto_0
    return v2

    .line 143
    :cond_0
    iget-object v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    if-eqz v4, :cond_1

    .line 144
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-direct {p0, v2, p1, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v2

    goto :goto_0

    .line 146
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->ensureRotationStructuresAllocated()V

    .line 148
    iget-object v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationSensorSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 149
    .local v1, "sensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 150
    iget-object v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-direct {p0, v4, p1, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    .line 153
    .end local v1    # "sensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    iput-boolean v3, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationNotAvailable:Z

    .line 154
    iput-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 155
    iput-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    .line 156
    iput-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    goto :goto_0
.end method

.method sensorChanged(I[F)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "values"    # [F
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_1

    .line 292
    aget v0, p2, v2

    float-to-double v2, v0

    aget v0, p2, v1

    float-to-double v4, v0

    aget v0, p2, v6

    float-to-double v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotAccelerationIncludingGravity(DDD)V

    .line 294
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActiveWithBackupSensors:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    invoke-direct {p0, p2, v0}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromGeomagneticVectors([F[F)V

    goto :goto_0

    .line 299
    :pswitch_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_0

    .line 300
    aget v0, p2, v2

    float-to-double v2, v0

    aget v0, p2, v1

    float-to-double v4, v0

    aget v0, p2, v6

    float-to-double v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotAcceleration(DDD)V

    goto :goto_0

    .line 304
    :pswitch_3
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_0

    .line 305
    aget v0, p2, v2

    float-to-double v2, v0

    aget v0, p2, v1

    float-to-double v4, v0

    aget v0, p2, v6

    float-to-double v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotRotationRate(DDD)V

    goto :goto_0

    .line 310
    :pswitch_4
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    .line 311
    array-length v0, p2

    if-le v0, v3, :cond_3

    .line 316
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    if-nez v0, :cond_2

    .line 317
    new-array v0, v3, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    .line 319
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    invoke-static {p2, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromRotationVector([F)V

    goto :goto_0

    .line 322
    :cond_3
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromRotationVector([F)V

    goto :goto_0

    .line 327
    :pswitch_5
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActiveWithBackupSensors:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    if-nez v0, :cond_4

    .line 329
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    .line 331
    :cond_4
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 336
    :pswitch_6
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v0, :cond_0

    .line 337
    aget v0, p2, v2

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->gotLight(D)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method setSensorManagerProxy(Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;)V
    .locals 0
    .param p1, "sensorManagerProxy"    # Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 470
    iput-object p1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 471
    return-void
.end method

.method public start(JII)Z
    .locals 9
    .param p1, "nativePtr"    # J
    .param p3, "eventType"    # I
    .param p4, "rateInMicroseconds"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "success":Z
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 175
    packed-switch p3, :pswitch_data_0

    .line 187
    :try_start_0
    const-string v3, "cr.DeviceSensors"

    const-string v4, "Unknown event type: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    monitor-exit v2

    .line 194
    :goto_0
    return v1

    .line 177
    :pswitch_0
    invoke-virtual {p0, p4}, Lorg/chromium/content/browser/DeviceSensors;->registerOrientationSensorsWithFallback(I)Z

    move-result v0

    .line 190
    :goto_1
    if-eqz v0, :cond_0

    .line 191
    iput-wide p1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    .line 192
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/chromium/content/browser/DeviceSensors;->setEventTypeActive(IZ)V

    .line 194
    :cond_0
    monitor-exit v2

    move v1, v0

    goto :goto_0

    .line 181
    :pswitch_1
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 182
    goto :goto_1

    .line 184
    :pswitch_2
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 185
    goto :goto_1

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stop(I)V
    .locals 8
    .param p1, "eventType"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 235
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 236
    .local v1, "sensorsToRemainActive":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v3

    .line 237
    packed-switch p1, :pswitch_data_0

    .line 263
    :try_start_0
    const-string v2, "cr.DeviceSensors"

    const-string v4, "Unknown event type: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    monitor-exit v3

    .line 275
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v2, :cond_0

    .line 240
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 242
    :cond_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v2, :cond_1

    .line 243
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 267
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 268
    .local v0, "sensorsToDeactivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 269
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/DeviceSensors;->unregisterSensors(Ljava/lang/Iterable;)V

    .line 270
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/chromium/content/browser/DeviceSensors;->setEventTypeActive(IZ)V

    .line 271
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    .line 274
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "sensorsToDeactivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 247
    :pswitch_1
    :try_start_1
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v2, :cond_3

    .line 248
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 250
    :cond_3
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v2, :cond_1

    .line 251
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 255
    :pswitch_2
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v2, :cond_4

    .line 256
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 258
    :cond_4
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
