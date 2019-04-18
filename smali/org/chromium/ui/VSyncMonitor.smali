.class public Lorg/chromium/ui/VSyncMonitor;
.super Ljava/lang/Object;
.source "VSyncMonitor.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/VSyncMonitor$Listener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NANOSECONDS_PER_MICROSECOND:J = 0x3e8L

.field private static final NANOSECONDS_PER_MILLISECOND:J = 0xf4240L

.field private static final NANOSECONDS_PER_SECOND:J = 0x3b9aca00L


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mConsecutiveVSync:Z

.field private mGoodStartingPointNano:J

.field private final mHandler:Landroid/os/Handler;

.field private mHaveRequestInFlight:Z

.field private mInsideVSync:Z

.field private mLastPostedNano:J

.field private mLastVSyncCpuTimeNano:J

.field private mListener:Lorg/chromium/ui/VSyncMonitor$Listener;

.field private mRefreshPeriodNano:J

.field private final mSyntheticVSyncRunnable:Ljava/lang/Runnable;

.field private final mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mVSyncRunnableCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lorg/chromium/ui/VSyncMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/VSyncMonitor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/VSyncMonitor$Listener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/chromium/ui/VSyncMonitor$Listener;

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/ui/VSyncMonitor;-><init>(Landroid/content/Context;Lorg/chromium/ui/VSyncMonitor$Listener;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/VSyncMonitor$Listener;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/chromium/ui/VSyncMonitor$Listener;
    .param p3, "enableJBVSync"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    .line 32
    iput-boolean v1, p0, Lorg/chromium/ui/VSyncMonitor;->mConsecutiveVSync:Z

    .line 64
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p2, p0, Lorg/chromium/ui/VSyncMonitor;->mListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    .line 85
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    .line 87
    .local v0, "refreshRate":F
    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    .line 89
    .local v1, "useEstimatedRefreshPeriod":Z
    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    const/high16 v0, 0x42700000    # 60.0f

    .line 90
    :cond_1
    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    .line 92
    if-eqz p3, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 94
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    .line 95
    new-instance v2, Lorg/chromium/ui/VSyncMonitor$1;

    invoke-direct {v2, p0, v1}, Lorg/chromium/ui/VSyncMonitor$1;-><init>(Lorg/chromium/ui/VSyncMonitor;Z)V

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 114
    iput-object v4, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncRunnableCallback:Ljava/lang/Runnable;

    .line 130
    :goto_0
    new-instance v2, Lorg/chromium/ui/VSyncMonitor$3;

    invoke-direct {v2, p0}, Lorg/chromium/ui/VSyncMonitor$3;-><init>(Lorg/chromium/ui/VSyncMonitor;)V

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mSyntheticVSyncRunnable:Ljava/lang/Runnable;

    .line 140
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    .line 141
    return-void

    .line 117
    :cond_2
    iput-object v4, p0, Lorg/chromium/ui/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    .line 118
    iput-object v4, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 119
    new-instance v2, Lorg/chromium/ui/VSyncMonitor$2;

    invoke-direct {v2, p0}, Lorg/chromium/ui/VSyncMonitor$2;-><init>(Lorg/chromium/ui/VSyncMonitor;)V

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncRunnableCallback:Ljava/lang/Runnable;

    .line 128
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/chromium/ui/VSyncMonitor;->mLastPostedNano:J

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/ui/VSyncMonitor;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mSyntheticVSyncRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/ui/VSyncMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/ui/VSyncMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 23
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mConsecutiveVSync:Z

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/ui/VSyncMonitor;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 23
    iget-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/chromium/ui/VSyncMonitor;J)J
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/chromium/ui/VSyncMonitor;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 23
    iget-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    return-wide v0
.end method

.method static synthetic access$414(Lorg/chromium/ui/VSyncMonitor;J)J
    .locals 3
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 23
    iget-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/chromium/ui/VSyncMonitor;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lorg/chromium/ui/VSyncMonitor;JJ)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/ui/VSyncMonitor;->onVSyncCallback(JJ)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/ui/VSyncMonitor;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/ui/VSyncMonitor;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/ui/VSyncMonitor;J)J
    .locals 3
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/VSyncMonitor;->estimateLastVSyncTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private estimateLastVSyncTime(J)J
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    .line 235
    iget-wide v2, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    iget-wide v4, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    sub-long v4, p1, v4

    iget-wide v6, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    div-long/2addr v4, v6

    iget-wide v6, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    mul-long/2addr v4, v6

    add-long v0, v2, v4

    .line 238
    .local v0, "lastRefreshTime":J
    return-wide v0
.end method

.method private getCurrentNanoTime()J
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private isVSyncSignalAvailable()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onVSyncCallback(JJ)V
    .locals 5
    .param p1, "frameTimeNanos"    # J
    .param p3, "currentTimeNanos"    # J

    .prologue
    const/4 v1, 0x0

    .line 191
    sget-boolean v0, Lorg/chromium/ui/VSyncMonitor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mHaveRequestInFlight:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    .line 193
    iput-boolean v1, p0, Lorg/chromium/ui/VSyncMonitor;->mHaveRequestInFlight:Z

    .line 194
    iput-wide p3, p0, Lorg/chromium/ui/VSyncMonitor;->mLastVSyncCpuTimeNano:J

    .line 196
    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-interface {v0, p0, v2, v3}, Lorg/chromium/ui/VSyncMonitor$Listener;->onVSync(Lorg/chromium/ui/VSyncMonitor;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_1
    iput-boolean v1, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    .line 202
    return-void

    .line 200
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    throw v0
.end method

.method private postCallback()V
    .locals 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mHaveRequestInFlight:Z

    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mHaveRequestInFlight:Z

    .line 207
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    iput-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mConsecutiveVSync:Z

    .line 214
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->isVSyncSignalAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    iput-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mConsecutiveVSync:Z

    .line 216
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->postSyntheticVSyncIfNecessary()V

    .line 217
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->postRunnableCallback()V

    goto :goto_0
.end method

.method private postRunnableCallback()V
    .locals 14

    .prologue
    .line 242
    sget-boolean v6, Lorg/chromium/ui/VSyncMonitor;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->isVSyncSignalAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 243
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J

    move-result-wide v0

    .line 244
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/VSyncMonitor;->estimateLastVSyncTime(J)J

    move-result-wide v4

    .line 245
    .local v4, "lastRefreshTime":J
    iget-wide v6, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    add-long/2addr v6, v4

    sub-long v2, v6, v0

    .line 246
    .local v2, "delay":J
    sget-boolean v6, Lorg/chromium/ui/VSyncMonitor;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    iget-wide v6, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 248
    :cond_2
    add-long v6, v0, v2

    iget-wide v8, p0, Lorg/chromium/ui/VSyncMonitor;->mLastPostedNano:J

    iget-wide v10, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    .line 249
    iget-wide v6, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    add-long/2addr v2, v6

    .line 252
    :cond_3
    add-long v6, v0, v2

    iput-wide v6, p0, Lorg/chromium/ui/VSyncMonitor;->mLastPostedNano:J

    .line 253
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/chromium/ui/VSyncMonitor;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncRunnableCallback:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_4
    iget-object v6, p0, Lorg/chromium/ui/VSyncMonitor;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncRunnableCallback:Ljava/lang/Runnable;

    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private postSyntheticVSyncIfNecessary()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x2

    .line 226
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J

    move-result-wide v0

    .line 229
    .local v0, "currentTime":J
    iget-wide v2, p0, Lorg/chromium/ui/VSyncMonitor;->mLastVSyncCpuTimeNano:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/VSyncMonitor;->estimateLastVSyncTime(J)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 231
    iget-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/chromium/ui/VSyncMonitor;->mSyntheticVSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public getVSyncPeriodInMicroseconds()J
    .locals 4

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public isInsideVSync()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    return v0
.end method

.method public requestUpdate()V
    .locals 2

    .prologue
    .line 163
    sget-boolean v0, Lorg/chromium/ui/VSyncMonitor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 164
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->postCallback()V

    .line 165
    return-void
.end method

.method public setVSyncPointForICS(J)V
    .locals 1
    .param p1, "goodStartingPointNano"    # J

    .prologue
    .line 172
    iput-wide p1, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    .line 173
    return-void
.end method
