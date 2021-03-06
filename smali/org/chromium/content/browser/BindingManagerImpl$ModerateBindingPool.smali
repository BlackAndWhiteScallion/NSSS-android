.class Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
.super Landroid/util/LruCache;
.source "BindingManagerImpl.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/BindingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModerateBindingPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;",
        ">;",
        "Landroid/content/ComponentCallbacks2;"
    }
.end annotation


# instance fields
.field private mDelayedClearer:Ljava/lang/Runnable;

.field private final mDelayedClearerLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private final mHighReduceRatio:F

.field private final mLowReduceRatio:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 2
    .param p1, "maxSize"    # I
    .param p2, "lowReduceRatio"    # F
    .param p3, "highReduceRatio"    # F

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearerLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mHandler:Landroid/os/Handler;

    .line 54
    iput p2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mLowReduceRatio:F

    .line 55
    iput p3, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mHighReduceRatio:F

    .line 56
    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    return-object p1
.end method

.method private reduce(F)V
    .locals 10
    .param p1, "reduceRatio"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v4

    .line 87
    .local v4, "oldSize":I
    int-to-float v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p1

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 88
    .local v3, "newSize":I
    const-string v5, "cr.BindingManager"

    const-string v6, "Reduce connections from %d to %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    if-nez v3, :cond_1

    .line 90
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->evictAll()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_2

    .line 92
    invoke-virtual {p0, v3}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->trimToSize(I)V

    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    .line 97
    .local v0, "count":I
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->snapshot()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 98
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    sub-int v5, v4, v3

    if-ne v0, v5, :cond_3

    goto :goto_0
.end method


# virtual methods
.method addConnection(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 2
    .param p1, "managedConnection"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .prologue
    .line 106
    invoke-static {p1}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->access$000(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    .line 107
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isInSandbox()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {p1}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->access$100(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    .line 109
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isModerateBindingBound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected entryRemoved(ZLjava/lang/Integer;Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Integer;
    .param p3, "oldValue"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    .param p4, "newValue"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .prologue
    .line 127
    if-eq p3, p4, :cond_0

    .line 128
    invoke-static {p3}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->access$200(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    .line 130
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    check-cast p4, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->entryRemoved(ZLjava/lang/Integer;Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    return-void
.end method

.method onBroughtToForeground()V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    monitor-exit v1

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    .line 161
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 82
    return-void
.end method

.method public onLowMemory()V
    .locals 5

    .prologue
    .line 77
    const-string v0, "cr.BindingManager"

    const-string v1, "onLowMemory: evict %d bindings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->evictAll()V

    .line 79
    return-void
.end method

.method onSentToBackground(Z)V
    .locals 5
    .param p1, "onTesting"    # Z

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_0
    new-instance v0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;-><init>(Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;Z)V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    .line 150
    iget-object v3, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x64

    :goto_1
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 150
    :cond_1
    const-wide/16 v0, 0x2710

    goto :goto_1
.end method

.method public onTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 60
    const-string v0, "cr.BindingManager"

    const-string v1, "onTrimMemory: level=%d, size=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    .line 63
    iget v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mLowReduceRatio:F

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->reduce(F)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const/16 v0, 0xa

    if-gt p1, v0, :cond_2

    .line 65
    iget v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mHighReduceRatio:F

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->reduce(F)V

    goto :goto_0

    .line 66
    :cond_2
    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->evictAll()V

    goto :goto_0
.end method

.method removeConnection(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 2
    .param p1, "managedConnection"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .prologue
    .line 118
    invoke-static {p1}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->access$000(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    .line 119
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isInSandbox()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    return-void
.end method
