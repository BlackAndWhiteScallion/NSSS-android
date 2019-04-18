.class public Lorg/chromium/content/browser/input/JoystickScrollProvider;
.super Ljava/lang/Object;
.source "JoystickScrollProvider.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final JOYSTICK_SCROLL_DEADZONE:F = 0.2f

.field private static final JOYSTICK_SCROLL_FACTOR_MULTIPLIER:F = 25.0f

.field private static final SCROLL_FACTOR_FALLBACK:F = 128.0f

.field private static final TAG:Ljava/lang/String; = "JoystickScrollProvider"


# instance fields
.field private mAutoScrollActive:Z

.field private mEnabled:Z

.field private mLastAnimateTimeMillis:J

.field private mScrollFactor:F

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mScrollVelocityX:F

.field private mScrollVelocityY:F

.field private final mView:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/chromium/content/browser/input/JoystickScrollProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1
    .param p1, "contentView"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mAutoScrollActive:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mEnabled:Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/JoystickScrollProvider;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/JoystickScrollProvider;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->animateScroll()V

    return-void
.end method

.method private animateScroll()V
    .locals 11

    .prologue
    const/high16 v10, 0x447a0000    # 1000.0f

    .line 97
    iget-boolean v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_1

    .line 98
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->stop()V

    .line 112
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 103
    .local v4, "timeMillis":J
    iget-wide v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mLastAnimateTimeMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mLastAnimateTimeMillis:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 104
    iget-wide v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mLastAnimateTimeMillis:J

    sub-long v0, v4, v6

    .line 105
    .local v0, "dt":J
    iget v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollVelocityX:F

    long-to-float v7, v0

    mul-float/2addr v6, v7

    div-float v2, v6, v10

    .line 106
    .local v2, "dx":F
    iget v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollVelocityY:F

    long-to-float v7, v0

    mul-float/2addr v6, v7

    div-float v3, v6, v10

    .line 107
    .local v3, "dy":F
    iget-object v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v3, v7}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(FFZ)V

    .line 109
    .end local v0    # "dt":J
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_2
    sget-boolean v6, Lorg/chromium/content/browser/input/JoystickScrollProvider;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mAutoScrollActive:Z

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 110
    :cond_3
    iput-wide v4, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mLastAnimateTimeMillis:J

    .line 111
    iget-object v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private computeNewScrollVelocity(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x41c80000    # 25.0f

    .line 126
    iget v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 127
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 128
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    invoke-virtual {v1, v2, v0, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollFactor:F

    .line 139
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v5}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->getFilteredAxisValue(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollFactor:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    iput v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollVelocityX:F

    .line 141
    invoke-direct {p0, p1, v6}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->getFilteredAxisValue(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollFactor:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    iput v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollVelocityY:F

    .line 143
    return-void

    .line 133
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    const-string v1, "JoystickScrollProvider"

    const-string v2, "Theme attribute listPreferredItemHeight not definedswitching to fallback scroll factor "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const/high16 v1, 0x43000000    # 128.0f

    iget-object v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollFactor:F

    goto :goto_0
.end method

.method private getFilteredAxisValue(Landroid/view/MotionEvent;I)F
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "axis"    # I

    .prologue
    const v2, 0x3e4ccccd    # 0.2f

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 150
    .local v0, "axisValWithNoise":F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 151
    sub-float v1, v0, v2

    .line 155
    :goto_0
    return v1

    .line 152
    :cond_0
    const v1, -0x41b33333    # -0.2f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 153
    add-float v1, v0, v2

    goto :goto_0

    .line 155
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mLastAnimateTimeMillis:J

    .line 116
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mAutoScrollActive:Z

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mAutoScrollActive:Z

    .line 118
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public onMotion(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 73
    iget-boolean v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mEnabled:Z

    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->computeNewScrollVelocity(Landroid/view/MotionEvent;)V

    .line 77
    iget v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollVelocityX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollVelocityY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 78
    invoke-direct {p0}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->stop()V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 82
    new-instance v0, Lorg/chromium/content/browser/input/JoystickScrollProvider$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/JoystickScrollProvider$1;-><init>(Lorg/chromium/content/browser/input/JoystickScrollProvider;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollRunnable:Ljava/lang/Runnable;

    .line 89
    :cond_3
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mAutoScrollActive:Z

    if-nez v0, :cond_4

    .line 90
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 91
    iput-boolean v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mAutoScrollActive:Z

    :cond_4
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mEnabled:Z

    .line 59
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->stop()V

    .line 60
    :cond_0
    return-void
.end method
