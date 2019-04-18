.class Lorg/chromium/content/browser/BindingManagerImpl;
.super Ljava/lang/Object;
.source "BindingManagerImpl.java"

# interfaces
.implements Lorg/chromium/content/browser/BindingManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;,
        Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DETACH_AS_ACTIVE_HIGH_END_DELAY_MILLIS:J = 0x3e8L

.field private static final MODERATE_BINDING_POOL_CLEARER_DELAY_MILLIS:J = 0x2710L

.field private static final MODERATE_BINDING_POOL_CLEARER_DELAY_MILLIS_ON_TESTING:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "cr.BindingManager"


# instance fields
.field private mBoundForBackgroundPeriod:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

.field private final mIsLowMemoryDevice:Z

.field private mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

.field private final mLastInForegroundLock:Ljava/lang/Object;

.field private final mManagedConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

.field private final mModerateBindingPoolLock:Ljava/lang/Object;

.field private final mOnTesting:Z

.field private final mRemoveStrongBindingDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/BindingManagerImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(ZJZ)V
    .locals 2
    .param p1, "isLowMemoryDevice"    # Z
    .param p2, "removeStrongBindingDelay"    # J
    .param p4, "onTesting"    # Z

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPoolLock:Ljava/lang/Object;

    .line 331
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    .line 342
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForegroundLock:Ljava/lang/Object;

    .line 356
    iput-boolean p1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mIsLowMemoryDevice:Z

    .line 357
    iput-wide p2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mRemoveStrongBindingDelay:J

    .line 358
    iput-boolean p4, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mOnTesting:Z

    .line 359
    return-void
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/BindingManagerImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPoolLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/BindingManagerImpl;)Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/BindingManagerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl;

    .prologue
    .line 27
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mIsLowMemoryDevice:Z

    return v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/BindingManagerImpl;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl;

    .prologue
    .line 27
    iget-wide v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mRemoveStrongBindingDelay:J

    return-wide v0
.end method

.method public static createBindingManager()Lorg/chromium/content/browser/BindingManagerImpl;
    .locals 5

    .prologue
    .line 362
    new-instance v0, Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v1

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/BindingManagerImpl;-><init>(ZJZ)V

    return-object v0
.end method

.method public static createBindingManagerForTesting(Z)Lorg/chromium/content/browser/BindingManagerImpl;
    .locals 4
    .param p0, "isLowEndDevice"    # Z

    .prologue
    .line 372
    new-instance v0, Lorg/chromium/content/browser/BindingManagerImpl;

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lorg/chromium/content/browser/BindingManagerImpl;-><init>(ZJZ)V

    return-object v0
.end method


# virtual methods
.method public addNewConnection(ILorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 379
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v1

    .line 380
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    new-instance v2, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    invoke-direct {v2, p0, p2}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;-><init>(Lorg/chromium/content/browser/BindingManagerImpl;Lorg/chromium/content/browser/ChildProcessConnection;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    monitor-exit v1

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearConnection(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 469
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v2

    .line 470
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 471
    .local v0, "managedConnection":Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->clearConnection()V

    .line 473
    :cond_0
    return-void

    .line 471
    .end local v0    # "managedConnection":Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public determinedVisibility(I)V
    .locals 6
    .param p1, "pid"    # I

    .prologue
    .line 410
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v2

    .line 411
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 412
    .local v0, "managedConnection":Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    if-nez v0, :cond_0

    .line 415
    const-string v1, "cr.BindingManager"

    const-string v2, "Cannot call determinedVisibility() - never saw a connection for the pid: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    :goto_0
    return-void

    .line 412
    .end local v0    # "managedConnection":Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 420
    .restart local v0    # "managedConnection":Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->determinedVisibility()V

    goto :goto_0
.end method

.method public isConnectionCleared(I)Z
    .locals 2
    .param p1, "pid"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 478
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v1

    .line 479
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->isConnectionCleared()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOomProtected(I)Z
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 460
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v2

    .line 461
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 462
    .local v0, "managedConnection":Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->isOomProtected()Z

    move-result v1

    :goto_0
    return v1

    .line 462
    .end local v0    # "managedConnection":Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 463
    .restart local v0    # "managedConnection":Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBroughtToForeground()V
    .locals 3

    .prologue
    .line 443
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mBoundForBackgroundPeriod:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mBoundForBackgroundPeriod:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->setBoundForBackgroundPeriod(Z)V

    .line 445
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mBoundForBackgroundPeriod:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 448
    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 449
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    .line 450
    .local v0, "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->onBroughtToForeground()V

    .line 452
    :cond_1
    return-void

    .line 450
    .end local v0    # "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSentToBackground()V
    .locals 4

    .prologue
    .line 425
    sget-boolean v1, Lorg/chromium/content/browser/BindingManagerImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mBoundForBackgroundPeriod:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 426
    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForegroundLock:Ljava/lang/Object;

    monitor-enter v2

    .line 429
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->setBoundForBackgroundPeriod(Z)V

    .line 431
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    iput-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mBoundForBackgroundPeriod:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 433
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 436
    :try_start_1
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    .line 437
    .local v0, "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 438
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mOnTesting:Z

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->onSentToBackground(Z)V

    .line 439
    :cond_2
    return-void

    .line 433
    .end local v0    # "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 437
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public releaseAllModerateBindings()V
    .locals 6

    .prologue
    .line 500
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 501
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    .line 502
    .local v0, "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    if-eqz v0, :cond_0

    .line 504
    const-string v1, "cr.BindingManager"

    const-string v2, "Release all moderate bindings: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->evictAll()V

    .line 507
    :cond_0
    return-void

    .line 502
    .end local v0    # "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setInForeground(IZ)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "inForeground"    # Z

    .prologue
    .line 387
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v2

    .line 388
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 389
    .local v0, "managedConnection":Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    if-nez v0, :cond_0

    .line 392
    const-string v1, "cr.BindingManager"

    const-string v2, "Cannot setInForeground() - never saw a connection for the pid: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    :goto_0
    return-void

    .line 389
    .end local v0    # "managedConnection":Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 396
    .restart local v0    # "managedConnection":Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForegroundLock:Ljava/lang/Object;

    monitor-enter v2

    .line 397
    if-eqz p2, :cond_1

    :try_start_2
    iget-boolean v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mIsLowMemoryDevice:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    if-eq v1, v0, :cond_1

    .line 399
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->access$900(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    .line 402
    :cond_1
    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->setInForeground(Z)V

    .line 403
    if-eqz p2, :cond_2

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 404
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public startModerateBindingManagement(Landroid/content/Context;IFF)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxSize"    # I
    .param p3, "lowReduceRatio"    # F
    .param p4, "highReduceRatio"    # F

    .prologue
    .line 486
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mIsLowMemoryDevice:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 495
    :goto_0
    return-void

    .line 489
    :cond_1
    const-string v0, "cr.BindingManager"

    const-string v2, "Moderate binding enabled: maxSize=%d lowReduceRatio=%f highReduceRatio=%f"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    new-instance v0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    invoke-direct {v0, p2, p3, p4}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;-><init>(IFF)V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    .line 493
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    invoke-virtual {p1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 494
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
