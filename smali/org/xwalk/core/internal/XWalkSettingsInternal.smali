.class public Lorg/xwalk/core/internal/XWalkSettingsInternal;
.super Ljava/lang/Object;
.source "XWalkSettingsInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;,
        Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;,
        Lorg/xwalk/core/internal/XWalkSettingsInternal$LazyDefaultUserAgent;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createInternally = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAXIMUM_FONT_SIZE:I = 0x48

.field private static final MINIMUM_FONT_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XWalkSettings"

.field private static sAppCachePathIsSet:Z

.field private static final sGlobalContentSettingsLock:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguages:Ljava/lang/String;

.field private mAllowContentUrlAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowFileUrlAccess:Z

.field private mAllowScriptsToCloseWindows:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mAutoCompleteEnabled:Z

.field private mBlockNetworkLoads:Z

.field private mBuiltInZoomControls:Z

.field private mCacheMode:I

.field private final mContext:Landroid/content/Context;

.field private mDIPScale:D

.field private mDatabaseEnabled:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultVideoPosterURL:Ljava/lang/String;

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private final mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

.field private mGeolocationEnabled:Z

.field private mImagesEnabled:Z

.field private mInitialPageScalePercent:F

.field private mIsUpdateWebkitPrefsMessagePending:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLoadsImagesAutomatically:Z

.field private mMediaPlaybackRequiresUserGesture:Z

.field private mNativeXWalkSettings:J

.field private final mPasswordEchoEnabled:Z

.field private mShouldFocusFirstNode:Z

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mTextSizePercent:I

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private final mXWalkSettingsLock:Ljava/lang/Object;

.field private mZoomChangeListener:Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-class v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sGlobalContentSettingsLock:Ljava/lang/Object;

    .line 70
    sput-boolean v1, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sAppCachePathIsSet:Z

    return-void

    :cond_0
    move v0, v1

    .line 24
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    .line 39
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    .line 40
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    .line 41
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    .line 42
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    .line 43
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    .line 44
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    .line 45
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    .line 47
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    .line 48
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    .line 49
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    .line 50
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    .line 51
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    .line 52
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    .line 58
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    .line 59
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    .line 60
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mShouldFocusFirstNode:Z

    .line 61
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    .line 76
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mIsUpdateWebkitPrefsMessagePending:Z

    .line 82
    const/16 v0, 0x10

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    .line 83
    const/16 v0, 0xd

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    .line 85
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    .line 88
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDIPScale:D

    .line 89
    const/16 v0, 0x64

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    .line 91
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    .line 92
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    .line 93
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDisplayZoomControls:Z

    .line 171
    iput-object v4, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mContext:Landroid/content/Context;

    .line 172
    iput-object v4, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    .line 173
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mPasswordEchoEnabled:Z

    .line 174
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webContents"    # Lorg/chromium/content_public/browser/WebContents;
    .param p3, "isAccessFromFileURLsGrantedByDefault"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    .line 39
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    .line 40
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    .line 41
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    .line 42
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    .line 43
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    .line 44
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    .line 45
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    .line 47
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    .line 48
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    .line 49
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    .line 50
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    .line 51
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    .line 52
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    .line 58
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    .line 59
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    .line 60
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mShouldFocusFirstNode:Z

    .line 61
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    .line 73
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    .line 76
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mIsUpdateWebkitPrefsMessagePending:Z

    .line 82
    const/16 v0, 0x10

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    .line 83
    const/16 v0, 0xd

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    .line 85
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    .line 88
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDIPScale:D

    .line 89
    const/16 v0, 0x64

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    .line 91
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    .line 92
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    .line 93
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDisplayZoomControls:Z

    .line 178
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 179
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mContext:Landroid/content/Context;

    .line 180
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBlockNetworkLoads:Z

    .line 185
    if-eqz p3, :cond_0

    .line 186
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    .line 187
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    .line 190
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "show_password"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mPasswordEchoEnabled:Z

    .line 196
    new-instance v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    .line 198
    invoke-virtual {p0, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    .line 199
    return-void

    :cond_1
    move v0, v2

    .line 180
    goto :goto_0

    :cond_2
    move v1, v2

    .line 193
    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeGetDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateInitialPageScale(J)V

    return-void
.end method

.method static synthetic access$1100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mZoomChangeListener:Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->updateWebkitPreferencesOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mIsUpdateWebkitPrefsMessagePending:Z

    return v0
.end method

.method static synthetic access$302(Lorg/xwalk/core/internal/XWalkSettingsInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mIsUpdateWebkitPrefsMessagePending:Z

    return p1
.end method

.method static synthetic access$400(Lorg/xwalk/core/internal/XWalkSettingsInternal;)J
    .locals 2
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateUserAgent(J)V

    return-void
.end method

.method static synthetic access$800(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateAcceptLanguages(J)V

    return-void
.end method

.method static synthetic access$900(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateFormDataPreferences(J)V

    return-void
.end method

.method private clipFontSize(I)I
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 862
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 867
    .end local p1    # "size":I
    :cond_0
    :goto_0
    return p1

    .line 864
    .restart local p1    # "size":I
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 865
    goto :goto_0
.end method

.method private getAcceptLanguagesLocked()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAcceptLanguages:Ljava/lang/String;

    return-object v0
.end method

.method private getAppCacheEnabled()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 564
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    return v0
.end method

.method private getDIPScaleLocked()D
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 825
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 826
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDIPScale:D

    return-wide v0
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInitialPageScalePercentLocked()F
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 819
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 820
    :cond_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    return v0
.end method

.method private getPasswordEchoEnabledLocked()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 831
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 832
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mPasswordEchoEnabled:Z

    return v0
.end method

.method private getSaveFormDataLocked()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 785
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    return v0
.end method

.method private getUserAgentLocked()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private static native nativeGetDefaultUserAgent()Ljava/lang/String;
.end method

.method private native nativeInit(Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method private native nativeUpdateAcceptLanguages(J)V
.end method

.method private native nativeUpdateEverythingLocked(J)V
.end method

.method private native nativeUpdateFormDataPreferences(J)V
.end method

.method private native nativeUpdateInitialPageScale(J)V
.end method

.method private native nativeUpdateUserAgent(J)V
.end method

.method private native nativeUpdateWebkitPreferences(J)V
.end method

.method private nativeXWalkSettingsGone(J)V
    .locals 5
    .param p1, "nativeXWalkSettings"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 217
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 218
    :cond_1
    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    .line 219
    return-void
.end method

.method private onGestureZoomSupportChanged(ZZ)V
    .locals 2
    .param p1, "supportsDoubleTapZoom"    # Z
    .param p2, "supportsMultiTouchZoom"    # Z

    .prologue
    .line 935
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v1, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;ZZ)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybePostOnUiThread(Ljava/lang/Runnable;)V

    .line 945
    return-void
.end method

.method private supportsDoubleTapZoomLocked()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 949
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 950
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportsMultiTouchZoomLocked()Z
    .locals 1

    .prologue
    .line 954
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 955
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateEverything()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 706
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 707
    :try_start_0
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateEverythingLocked(J)V

    .line 708
    monitor-exit v1

    .line 709
    return-void

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateWebkitPreferencesOnUiThread()V
    .locals 4

    .prologue
    .line 712
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 713
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 714
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateWebkitPreferences(J)V

    .line 716
    :cond_0
    return-void
.end method


# virtual methods
.method public getAcceptLanguages()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 746
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 747
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAcceptLanguages:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowContentAccess()Z
    .locals 2

    .prologue
    .line 315
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    monitor-exit v1

    return v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowFileAccess()Z
    .locals 2

    .prologue
    .line 295
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    monitor-exit v1

    return v0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 2

    .prologue
    .line 440
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    monitor-exit v1

    return v0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowScriptsToCloseWindows()Z
    .locals 2

    .prologue
    .line 230
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    monitor-exit v1

    return v0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 2

    .prologue
    .line 431
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    monitor-exit v1

    return v0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBlockNetworkLoads()Z
    .locals 2

    .prologue
    .line 275
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBlockNetworkLoads:Z

    monitor-exit v1

    return v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1014
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1015
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    monitor-exit v1

    return v0

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheMode()I
    .locals 2

    .prologue
    .line 250
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    monitor-exit v1

    return v0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDatabaseEnabled()Z
    .locals 2

    .prologue
    .line 604
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 605
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    monitor-exit v1

    return v0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultFixedFontSize()I
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 921
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 922
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    monitor-exit v1

    return v0

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultFontSize()I
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 893
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 894
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    monitor-exit v1

    return v0

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultVideoPosterURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 699
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDomStorageEnabled()Z
    .locals 2

    .prologue
    .line 583
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 584
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    monitor-exit v1

    return v0

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getGeolocationEnabled()Z
    .locals 2

    .prologue
    .line 335
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    monitor-exit v1

    return v0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImagesEnabled()Z
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    monitor-exit v1

    return v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 2

    .prologue
    .line 461
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    monitor-exit v1

    return v0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 2

    .prologue
    .line 422
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    monitor-exit v1

    return v0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 2

    .prologue
    .line 392
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    monitor-exit v1

    return v0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 2

    .prologue
    .line 625
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    monitor-exit v1

    return v0

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 2

    .prologue
    .line 773
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 774
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSaveFormDataLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTextZoom()I
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 856
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 857
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    monitor-exit v1

    return v0

    .line 858
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUseWideViewPort()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 516
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    monitor-exit v1

    return v0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 685
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 686
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 3
    .param p1, "acceptLanguages"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 725
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAcceptLanguages:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 737
    :goto_0
    return-void

    .line 727
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAcceptLanguages:Ljava/lang/String;

    .line 728
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettingsInternal$2;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$2;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 736
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 304
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    if-eq v0, p1, :cond_0

    .line 306
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    .line 308
    :cond_0
    monitor-exit v1

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowFileAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 284
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    if-eq v0, p1, :cond_0

    .line 286
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    .line 288
    :cond_0
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 368
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 370
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    .line 371
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 373
    :cond_0
    monitor-exit v1

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowScriptsToCloseWindows(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 222
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    if-eq v0, p1, :cond_0

    .line 224
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    .line 226
    :cond_0
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 356
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 358
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    .line 359
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 361
    :cond_0
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCacheEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 525
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 526
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 527
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    .line 528
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 530
    :cond_0
    monitor-exit v1

    .line 531
    return-void

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, "needToSync":Z
    sget-object v2, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sGlobalContentSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 540
    :try_start_0
    sget-boolean v1, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sAppCachePathIsSet:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    const/4 v1, 0x1

    sput-boolean v1, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sAppCachePathIsSet:Z

    .line 542
    const/4 v0, 0x1

    .line 544
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    if-eqz v0, :cond_1

    .line 549
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 550
    :try_start_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 551
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 553
    :cond_1
    return-void

    .line 544
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 551
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public setBlockNetworkLoads(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 259
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 267
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBlockNetworkLoads:Z

    .line 268
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 999
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1000
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1005
    :goto_0
    return-void

    .line 1001
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    .line 1002
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsDoubleTapZoomLocked()Z

    move-result v0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomLocked()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->onGestureZoomSupportChanged(ZZ)V

    .line 1004
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCacheMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 239
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    if-eq v0, p1, :cond_0

    .line 241
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    .line 243
    :cond_0
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDIPScale(D)V
    .locals 3
    .param p1, "dipScale"    # D

    .prologue
    .line 789
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_0
    iput-wide p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDIPScale:D

    .line 793
    monitor-exit v1

    .line 794
    return-void

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDatabaseEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 592
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 593
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 594
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    .line 595
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 597
    :cond_0
    monitor-exit v1

    .line 598
    return-void

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 906
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 907
    :try_start_0
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->clipFontSize(I)I

    move-result p1

    .line 908
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 912
    :goto_0
    return-void

    .line 909
    :cond_0
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    .line 910
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 911
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultFontSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 878
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 879
    :try_start_0
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->clipFontSize(I)I

    move-result p1

    .line 880
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 884
    :goto_0
    return-void

    .line 881
    :cond_0
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    .line 882
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 883
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultVideoPosterURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 634
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 635
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 637
    :cond_1
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    .line 638
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 640
    :cond_2
    monitor-exit v1

    .line 641
    return-void

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDomStorageEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 571
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 572
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 573
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    .line 574
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 576
    :cond_0
    monitor-exit v1

    .line 577
    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGeolocationEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 324
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 326
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    .line 328
    :cond_0
    monitor-exit v1

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setImagesEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 401
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    if-eq v0, p1, :cond_0

    .line 403
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    .line 404
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 406
    :cond_0
    monitor-exit v1

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInitialPageScale(F)V
    .locals 3
    .param p1, "scaleInPercent"    # F
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 803
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    monitor-exit v1

    .line 815
    :goto_0
    return-void

    .line 805
    :cond_0
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    .line 806
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettingsInternal$4;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$4;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 814
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 449
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 451
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 452
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 454
    :cond_0
    monitor-exit v1

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 344
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 346
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    .line 347
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 349
    :cond_0
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 380
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 382
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    .line 383
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 385
    :cond_0
    monitor-exit v1

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 2
    .param p1, "require"    # Z

    .prologue
    .line 613
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 614
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    if-eq v0, p1, :cond_0

    .line 615
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    .line 616
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 618
    :cond_0
    monitor-exit v1

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 755
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 756
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 767
    :goto_0
    return-void

    .line 757
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    .line 758
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettingsInternal$3;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$3;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 766
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 2
    .param p1, "support"    # Z

    .prologue
    .line 470
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 472
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    .line 473
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 475
    :cond_0
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 3
    .param p1, "support"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 968
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 969
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 974
    :goto_0
    return-void

    .line 970
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    .line 971
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsDoubleTapZoomLocked()Z

    move-result v0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomLocked()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->onGestureZoomSupportChanged(ZZ)V

    .line 973
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextZoom(I)V
    .locals 2
    .param p1, "textZoom"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 842
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 843
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 847
    :goto_0
    return-void

    .line 844
    :cond_0
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    .line 845
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 846
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUseWideViewPort(Z)V
    .locals 2
    .param p1, "use"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 500
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 501
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 502
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    .line 503
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 505
    :cond_0
    monitor-exit v1

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 658
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 659
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    .line 660
    .local v0, "oldUserAgent":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 661
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    .line 665
    :goto_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 666
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v3, Lorg/xwalk/core/internal/XWalkSettingsInternal$1;

    invoke-direct {v3, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$1;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v1, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 675
    :cond_1
    monitor-exit v2

    .line 676
    return-void

    .line 663
    :cond_2
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 675
    .end local v0    # "oldUserAgent":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 6
    .param p1, "webContents"    # Lorg/chromium/content_public/browser/WebContents;

    .prologue
    const-wide/16 v4, 0x0

    .line 202
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 204
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeDestroy(J)V

    .line 205
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 207
    :cond_0
    if-eqz p1, :cond_1

    .line 208
    :try_start_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->bindUiThread()V

    .line 209
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeInit(Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    .line 210
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateEverythingLocked(J)V

    .line 212
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    return-void
.end method

.method setZoomListener(Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;)V
    .locals 2
    .param p1, "zoomChangeListener"    # Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;

    .prologue
    .line 927
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 928
    :try_start_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mZoomChangeListener:Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;

    .line 929
    monitor-exit v1

    .line 930
    return-void

    .line 929
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportMultipleWindows()Z
    .locals 2

    .prologue
    .line 482
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    monitor-exit v1

    return v0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportZoom()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 983
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 984
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    monitor-exit v1

    return v0

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportsMultiTouchZoomForTest()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1026
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1027
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1028
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
