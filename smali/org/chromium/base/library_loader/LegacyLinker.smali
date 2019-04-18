.class Lorg/chromium/base/library_loader/LegacyLinker;
.super Lorg/chromium/base/library_loader/Linker;
.source "LegacyLinker.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LINKER_JNI_LIBRARY:Ljava/lang/String; = "chromium_android_linker"

.field private static final TAG:Ljava/lang/String; = "cr.library_loader"


# instance fields
.field private mBaseLoadAddress:J

.field private mBrowserUsesSharedRelro:Z

.field private mCurrentLoadAddress:J

.field private mInBrowserProcess:Z

.field private mInitialized:Z

.field protected mLoadedLibraries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/chromium/base/library_loader/Linker$LibInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPrepareLibraryLoadCalled:Z

.field private mSharedRelros:Landroid/os/Bundle;

.field private mWaitForSharedRelros:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/chromium/base/library_loader/LegacyLinker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lorg/chromium/base/library_loader/Linker;-><init>()V

    .line 42
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInitialized:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    .line 51
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mWaitForSharedRelros:Z

    .line 55
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    .line 58
    iput-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    .line 61
    iput-wide v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    .line 64
    iput-wide v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    .line 67
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mPrepareLibraryLoadCalled:Z

    .line 70
    iput-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 34
    invoke-static {p0, p1}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeRunCallbackOnUiThread(J)V

    return-void
.end method

.method private computeRandomBaseLoadAddress()J
    .locals 6

    .prologue
    .line 442
    const-wide/32 v2, 0xc000000

    .line 443
    .local v2, "maxExpectedBytes":J
    const-wide/32 v4, 0xc000000

    invoke-static {v4, v5}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeGetRandomBaseLoadAddress(J)J

    move-result-wide v0

    .line 449
    .local v0, "address":J
    return-wide v0
.end method

.method private dumpBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 457
    return-void
.end method

.method private ensureInitializedLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 74
    sget-boolean v1, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 76
    :cond_0
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInitialized:Z

    if-eqz v1, :cond_1

    .line 128
    :goto_0
    return-void

    .line 80
    :cond_1
    sget-boolean v1, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLinker:Z

    if-eqz v1, :cond_4

    .line 85
    :try_start_0
    const-string v1, "chromium_android_linker"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_1
    iget v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mMemoryDeviceConfig:I

    if-nez v1, :cond_2

    .line 94
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    iput v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mMemoryDeviceConfig:I

    .line 101
    :cond_2
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 118
    sget-boolean v1, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unreached"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "cr.library_loader"

    const-string v2, "Couldn\'t load libchromium_android_linker.so, trying libchromium_android_linker.cr.so"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const-string v1, "chromium_android_linker.cr"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mMemoryDeviceConfig:I

    goto :goto_2

    .line 103
    :pswitch_0
    iput-boolean v5, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    .line 127
    :cond_4
    :goto_3
    iput-boolean v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInitialized:Z

    goto :goto_0

    .line 106
    :pswitch_1
    iget v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mMemoryDeviceConfig:I

    if-ne v1, v4, :cond_5

    .line 107
    iput-boolean v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    .line 108
    const-string v1, "cr.library_loader"

    const-string v2, "Low-memory device: shared RELROs used in all processes"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 110
    :cond_5
    iput-boolean v5, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    goto :goto_3

    .line 114
    :pswitch_2
    const-string v1, "cr.library_loader"

    const-string v2, "Beware: shared RELROs used in all processes!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iput-boolean v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    goto :goto_3

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static native nativeCreateSharedRelro(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private static native nativeGetRandomBaseLoadAddress(J)J
.end method

.method private static native nativeLoadLibrary(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private static native nativeLoadLibraryInZipFile(Ljava/lang/String;Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private static native nativeRunCallbackOnUiThread(J)V
.end method

.method private static native nativeUseSharedRelro(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method public static postCallbackOnMainThread(J)V
    .locals 2
    .param p0, "opaque"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 640
    new-instance v0, Lorg/chromium/base/library_loader/LegacyLinker$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/base/library_loader/LegacyLinker$1;-><init>(J)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 646
    return-void
.end method

.method private setupBaseLoadAddressLocked()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 405
    sget-boolean v2, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 406
    :cond_0
    iget-wide v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 407
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->computeRandomBaseLoadAddress()J

    move-result-wide v0

    .line 408
    .local v0, "address":J
    iput-wide v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    .line 409
    iput-wide v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    .line 410
    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    .line 413
    const-string v2, "cr.library_loader"

    const-string v3, "Disabling shared RELROs due address space pressure"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    iput-boolean v5, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    .line 415
    iput-boolean v5, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mWaitForSharedRelros:Z

    .line 418
    .end local v0    # "address":J
    :cond_1
    return-void
.end method

.method private useSharedRelrosLocked(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 467
    sget-boolean v5, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 473
    :cond_0
    if-nez p1, :cond_2

    .line 511
    :cond_1
    :goto_0
    return-void

    .line 480
    :cond_2
    iget-object v5, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 490
    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LegacyLinker;->createLibInfoMapFromBundle(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v4

    .line 493
    .local v4, "relroMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 494
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 495
    .local v3, "libName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/library_loader/Linker$LibInfo;

    .line 496
    .local v2, "libInfo":Lorg/chromium/base/library_loader/Linker$LibInfo;
    invoke-static {v3, v2}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeUseSharedRelro(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 497
    const-string v5, "cr.library_loader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not use shared RELRO section for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 506
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    .end local v2    # "libInfo":Lorg/chromium/base/library_loader/Linker$LibInfo;
    .end local v3    # "libName":Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Lorg/chromium/base/library_loader/LegacyLinker;->closeLibInfoMap(Ljava/util/HashMap;)V

    goto :goto_0
.end method


# virtual methods
.method public disableSharedRelros()V
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mWaitForSharedRelros:Z

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    .line 351
    monitor-exit v1

    .line 352
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishLibraryLoad()V
    .locals 7

    .prologue
    .line 198
    iget-object v3, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 208
    :try_start_0
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    sget-boolean v2, Lorg/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mTestRunnerClassName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    .line 252
    const/4 v1, 0x0

    .line 254
    .local v1, "testRunner":Lorg/chromium/base/library_loader/Linker$TestRunner;
    :try_start_1
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mTestRunnerClassName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "testRunner":Lorg/chromium/base/library_loader/Linker$TestRunner;
    check-cast v1, Lorg/chromium/base/library_loader/Linker$TestRunner;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .restart local v1    # "testRunner":Lorg/chromium/base/library_loader/Linker$TestRunner;
    :goto_1
    if-eqz v1, :cond_6

    .line 261
    :try_start_2
    iget v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mMemoryDeviceConfig:I

    iget-boolean v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    invoke-interface {v1, v2, v4}, Lorg/chromium/base/library_loader/Linker$TestRunner;->runChecks(IZ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 262
    const-string v2, "cr.library_loader"

    const-string v4, "Linker runtime tests failed in this process!!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    sget-boolean v2, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 269
    .end local v1    # "testRunner":Lorg/chromium/base/library_loader/Linker$TestRunner;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 213
    :cond_1
    :try_start_3
    iget-boolean v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v2, :cond_2

    .line 216
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Lorg/chromium/base/library_loader/LegacyLinker;->createBundleFromLibInfoMap(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    .line 222
    iget-boolean v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lorg/chromium/base/library_loader/LegacyLinker;->useSharedRelrosLocked(Landroid/os/Bundle;)V

    .line 227
    :cond_2
    iget-boolean v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mWaitForSharedRelros:Z

    if-eqz v2, :cond_0

    .line 228
    sget-boolean v2, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 231
    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_4

    .line 233
    :try_start_4
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 234
    :catch_0
    move-exception v2

    goto :goto_2

    .line 238
    :cond_4
    :try_start_5
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lorg/chromium/base/library_loader/LegacyLinker;->useSharedRelrosLocked(Landroid/os/Bundle;)V

    .line 240
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 241
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "cr.library_loader"

    const-string v4, "Could not extract test runner class name"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    const/4 v1, 0x0

    .restart local v1    # "testRunner":Lorg/chromium/base/library_loader/Linker$TestRunner;
    goto :goto_1

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v2, "cr.library_loader"

    const-string v4, "All linker tests passed!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    .end local v1    # "testRunner":Lorg/chromium/base/library_loader/Linker$TestRunner;
    :cond_6
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 273
    return-void
.end method

.method public getBaseLoadAddress()J
    .locals 4

    .prologue
    .line 386
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 387
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->ensureInitializedLocked()V

    .line 388
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-nez v0, :cond_0

    .line 389
    const-string v0, "cr.library_loader"

    const-string v1, "Shared RELRO sections are disabled in this process!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 399
    :goto_0
    return-wide v0

    .line 393
    :cond_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->setupBaseLoadAddressLocked()V

    .line 399
    iget-wide v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    monitor-exit v2

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSharedRelros()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 322
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x0

    monitor-exit v1

    .line 334
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    monitor-exit v1

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initServiceProcess(J)V
    .locals 3
    .param p1, "baseLoadAddress"    # J

    .prologue
    .line 367
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->ensureInitializedLocked()V

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mWaitForSharedRelros:Z

    .line 372
    iput-wide p1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    .line 373
    iput-wide p1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    .line 374
    monitor-exit v1

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isChromiumLinkerLibrary(Ljava/lang/String;)Z
    .locals 1
    .param p1, "library"    # Ljava/lang/String;

    .prologue
    .line 627
    const-string v0, "chromium_android_linker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "chromium_android_linker.cr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInZipFile()Z
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLibraryInZipFile:Z

    return v0
.end method

.method public isUsed()Z
    .locals 2

    .prologue
    .line 140
    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLinker:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    .line 142
    :cond_0
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->ensureInitializedLocked()V

    .line 144
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsingBrowserSharedRelros()Z
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->ensureInitializedLocked()V

    .line 156
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    monitor-exit v1

    return v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "zipFilePath"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "libFilePath"    # Ljava/lang/String;

    .prologue
    .line 529
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 530
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/library_loader/LegacyLinker;->ensureInitializedLocked()V

    .line 536
    sget-boolean v7, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mPrepareLibraryLoadCalled:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 618
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 538
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 539
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    .line 542
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 546
    monitor-exit v8

    .line 619
    :goto_0
    return-void

    .line 549
    :cond_2
    new-instance v3, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-direct {v3}, Lorg/chromium/base/library_loader/Linker$LibInfo;-><init>()V

    .line 550
    .local v3, "libInfo":Lorg/chromium/base/library_loader/Linker$LibInfo;
    const-wide/16 v4, 0x0

    .line 551
    .local v4, "loadAddress":J
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    if-nez v7, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mWaitForSharedRelros:Z

    if-eqz v7, :cond_5

    .line 553
    :cond_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    .line 556
    :cond_5
    move-object/from16 v6, p2

    .line 557
    .local v6, "sharedRelRoName":Ljava/lang/String;
    if-eqz p1, :cond_b

    .line 558
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4, v5, v3}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeLoadLibraryInZipFile(Ljava/lang/String;Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 559
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load library: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", in: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v7, "cr.library_loader"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v2, v9}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v7, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 564
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_6
    move-object/from16 v6, p1

    .line 579
    :cond_7
    sget-boolean v7, Lorg/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    if-eqz v7, :cond_8

    .line 580
    const-string v9, "cr.library_loader"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%s_LIBRARY_ADDRESS: %s %x"

    const/4 v7, 0x3

    new-array v12, v7, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v7, :cond_c

    const-string v7, "BROWSER"

    :goto_1
    aput-object v7, v12, v13

    const/4 v7, 0x1

    aput-object p2, v12, v7

    const/4 v7, 0x2

    iget-wide v14, v3, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v7, v10}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v7, :cond_9

    .line 589
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    invoke-static {v6, v10, v11, v3}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeCreateSharedRelro(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 590
    const-string v7, "cr.library_loader"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Could not create shared RELRO for %s at %x"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    :cond_9
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-eqz v7, :cond_a

    .line 611
    iget-wide v10, v3, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    iget-wide v12, v3, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadSize:J

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    .line 614
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    monitor-exit v8

    goto/16 :goto_0

    .line 566
    :cond_b
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v3}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeLoadLibrary(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 567
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load library: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 568
    .restart local v2    # "errorMessage":Ljava/lang/String;
    const-string v7, "cr.library_loader"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v2, v9}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v7, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 580
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_c
    const-string v7, "RENDERER"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public prepareLibraryLoad()V
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mPrepareLibraryLoadCalled:Z

    .line 180
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->setupBaseLoadAddressLocked()V

    .line 185
    :cond_0
    monitor-exit v1

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public useSharedRelros(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "clonedBundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 290
    const-class v2, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 291
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "clonedBundle":Landroid/os/Bundle;
    const-class v2, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 292
    .restart local v0    # "clonedBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 293
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 294
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 302
    .end local v1    # "parcel":Landroid/os/Parcel;
    :cond_0
    iget-object v3, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 305
    :try_start_0
    iput-object v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    .line 307
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 308
    monitor-exit v3

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
