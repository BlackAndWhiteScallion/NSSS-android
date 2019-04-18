.class Lorg/xwalk/core/internal/XWalkContentsClientBridge;
.super Lorg/xwalk/core/internal/XWalkContentsClient;
.source "XWalkContentsClientBridge.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewDownloadDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkContentsClientBridge$5;,
        Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NEW_ICON_DOWNLOAD:I = 0x65

.field private static final NEW_XWALKVIEW_CREATED:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownloadListener:Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

.field private mIsFullscreen:Z

.field private mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

.field private mLoadingUrl:Ljava/lang/String;

.field protected mNativeContentsClientBridge:J

.field private mNavigationHandler:Lorg/xwalk/core/internal/XWalkNavigationHandler;

.field private mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

.field private mPageLoadListener:Lorg/xwalk/core/internal/PageLoadListener;

.field private mPageScaleFactor:F

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

.field private mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

.field private mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

.field private mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->$assertionsDisabled:Z

    .line 58
    const-class v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->TAG:Ljava/lang/String;

    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 1
    .param p1, "xwView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClient;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mIsFullscreen:Z

    .line 79
    sget-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;->FINISHED:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 110
    new-instance v0, Lorg/chromium/net/DefaultAndroidKeyStore;

    invoke-direct {v0}, Lorg/chromium/net/DefaultAndroidKeyStore;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLocalKeyStore:Lorg/chromium/net/DefaultAndroidKeyStore;

    .line 111
    new-instance v0, Lorg/xwalk/core/internal/ClientCertLookupTable;

    invoke-direct {v0}, Lorg/xwalk/core/internal/ClientCertLookupTable;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLookupTable:Lorg/xwalk/core/internal/ClientCertLookupTable;

    .line 112
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;

    invoke-direct {v0, p0, p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;Lorg/xwalk/core/internal/XWalkContentsClient;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    .line 114
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$1;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$1;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mUiThreadHandler:Landroid/os/Handler;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)Lorg/xwalk/core/internal/XWalkNavigationHandler;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNavigationHandler:Lorg/xwalk/core/internal/XWalkNavigationHandler;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)Lorg/xwalk/core/internal/XWalkViewInternal;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/XWalkContentsClientBridge;JLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeDownloadIcon(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xwalk/core/internal/XWalkContentsClientBridge;JIII)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeOnFilesNotSelected(JIII)V

    return-void
.end method

.method static synthetic access$500(Lorg/xwalk/core/internal/XWalkContentsClientBridge;JIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct/range {p0 .. p7}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeOnFilesSelected(JIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/xwalk/core/internal/XWalkContentsClientBridge;ZI)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->proceedSslError(ZI)V

    return-void
.end method

.method private allowCertificateError(I[BLjava/lang/String;I)Z
    .locals 4
    .param p1, "certError"    # I
    .param p2, "derBytes"    # [B
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 673
    invoke-static {p2}, Lorg/xwalk/core/internal/SslUtil;->getCertificateFromDerBytes([B)Landroid/net/http/SslCertificate;

    move-result-object v1

    .line 674
    .local v1, "cert":Landroid/net/http/SslCertificate;
    if-nez v1, :cond_0

    .line 676
    const/4 v3, 0x0

    .line 686
    :goto_0
    return v3

    .line 678
    :cond_0
    invoke-static {p1, v1, p3}, Lorg/xwalk/core/internal/SslUtil;->sslErrorFromNetErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    .line 679
    .local v2, "sslError":Landroid/net/http/SslError;
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$4;

    invoke-direct {v0, p0, p4}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$4;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;I)V

    .line 685
    .local v0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onReceivedSslError(Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 686
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private cancelNotification(I)V
    .locals 1
    .param p1, "notificationId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 793
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    invoke-interface {v0, p1}, Lorg/xwalk/core/internal/XWalkNotificationService;->cancelNotification(I)V

    .line 794
    return-void
.end method

.method private handleJsAlert(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 742
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    new-instance v6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    invoke-direct {v6, p0, p3}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;I)V

    .line 745
    .local v6, "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    sget-object v2, Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;->JAVASCRIPT_ALERT:Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;

    const-string v5, ""

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    .line 749
    .end local v6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    :cond_0
    return-void
.end method

.method private handleJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 775
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    new-instance v6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    invoke-direct {v6, p0, p3}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;I)V

    .line 778
    .local v6, "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    sget-object v2, Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;->JAVASCRIPT_BEFOREUNLOAD:Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;

    const-string v5, ""

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    .line 782
    .end local v6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    :cond_0
    return-void
.end method

.method private handleJsConfirm(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 753
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    new-instance v6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    invoke-direct {v6, p0, p3}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;I)V

    .line 756
    .local v6, "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    sget-object v2, Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;->JAVASCRIPT_CONFIRM:Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;

    const-string v5, ""

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    .line 760
    .end local v6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    :cond_0
    return-void
.end method

.method private handleJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 764
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    new-instance v6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    invoke-direct {v6, p0, p4}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;I)V

    .line 767
    .local v6, "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    sget-object v2, Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;->JAVASCRIPT_PROMPT:Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    .line 771
    .end local v6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    :cond_0
    return-void
.end method

.method private isOwnerActivityRunning()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkViewInternal;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeCancelJsResult(JI)V
.end method

.method private native nativeConfirmJsResult(JILjava/lang/String;)V
.end method

.method private native nativeDownloadIcon(JLjava/lang/String;)V
.end method

.method private native nativeExitFullscreen(JJ)V
.end method

.method private native nativeNotificationClicked(JI)V
.end method

.method private native nativeNotificationClosed(JIZ)V
.end method

.method private native nativeNotificationDisplayed(JI)V
.end method

.method private native nativeOnFilesNotSelected(JIII)V
.end method

.method private native nativeOnFilesSelected(JIIILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeProceedSslError(JZI)V
.end method

.method private native nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V
.end method

.method private proceedSslError(ZI)V
    .locals 4
    .param p1, "proceed"    # Z
    .param p2, "id"    # I

    .prologue
    .line 736
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 738
    :goto_0
    return-void

    .line 737
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeProceedSslError(JZI)V

    goto :goto_0
.end method

.method private selectClientCertificate(I[Ljava/lang/String;[[BLjava/lang/String;I)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "encodedPrincipals"    # [[B
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 692
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 693
    sget-boolean v3, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 695
    :cond_0
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLookupTable:Lorg/xwalk/core/internal/ClientCertLookupTable;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Lorg/xwalk/core/internal/ClientCertLookupTable;->getCertData(Ljava/lang/String;I)Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;

    move-result-object v2

    .line 697
    .local v2, "cert":Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLookupTable:Lorg/xwalk/core/internal/ClientCertLookupTable;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Lorg/xwalk/core/internal/ClientCertLookupTable;->isDenied(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 698
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const/4 v7, 0x0

    check-cast v7, [[B

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    .line 733
    .end local v2    # "cert":Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;
    :cond_1
    :goto_0
    return-void

    .line 703
    .restart local v2    # "cert":Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;
    :cond_2
    if-eqz v2, :cond_3

    .line 704
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    iget-object v7, v2, Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;->certChain:[[B

    iget-object v8, v2, Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;->privateKey:Lorg/chromium/net/AndroidPrivateKey;

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    goto :goto_0

    .line 711
    :cond_3
    const/4 v12, 0x0

    .line 713
    .local v12, "principals":[Ljava/security/Principal;
    move-object/from16 v0, p3

    array-length v3, v0

    if-lez v3, :cond_4

    .line 714
    move-object/from16 v0, p3

    array-length v3, v0

    new-array v12, v3, [Ljavax/security/auth/x500/X500Principal;

    .line 716
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_1
    move-object/from16 v0, p3

    array-length v3, v0

    if-ge v11, v3, :cond_4

    .line 718
    :try_start_0
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p3, v11

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v3, v12, v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 719
    :catch_0
    move-exception v9

    .line 720
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while decoding issuers list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const/4 v7, 0x0

    check-cast v7, [[B

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    goto :goto_0

    .line 729
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "n":I
    :cond_4
    new-instance v10, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v10, p0, p1, v0, v1}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;ILjava/lang/String;I)V

    .line 731
    .local v10, "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    invoke-virtual {p0, v10}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/ClientCertRequestInternal;)V

    goto :goto_0
.end method

.method private setNativeContentsClientBridge(J)V
    .locals 1
    .param p1, "nativeContentsClientBridge"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 661
    iput-wide p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    .line 662
    return-void
.end method

.method private showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "replaceId"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "notificationId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkNotificationService;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 789
    return-void
.end method


# virtual methods
.method cancelJsResult(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 802
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 804
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeCancelJsResult(JI)V

    goto :goto_0
.end method

.method confirmJsResult(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "prompt"    # Ljava/lang/String;

    .prologue
    .line 797
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 799
    :goto_0
    return-void

    .line 798
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeConfirmJsResult(JILjava/lang/String;)V

    goto :goto_0
.end method

.method public didFinishLoad(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 545
    return-void
.end method

.method public doUpdateVisitedHistory(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isReload"    # Z

    .prologue
    .line 239
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->doUpdateVisitedHistory(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Z)V

    .line 240
    return-void
.end method

.method exitFullscreen(J)V
    .locals 5
    .param p1, "nativeWebContents"    # J

    .prologue
    .line 807
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 809
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeExitFullscreen(JJ)V

    goto :goto_0
.end method

.method public getContentVideoViewClient()Lorg/chromium/content/browser/ContentVideoViewClient;
    .locals 3

    .prologue
    .line 650
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v0, p0, v1, v2}, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;-><init>(Lorg/xwalk/core/internal/XWalkContentsClient;Landroid/app/Activity;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    return-object v0
.end method

.method public getInterceptNavigationDelegate()Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    return-void
.end method

.method public getXWalkWebChromeClient()Lorg/xwalk/core/internal/XWalkWebChromeClient;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    return-object v0
.end method

.method public hasEnteredFullscreen()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mIsFullscreen:Z

    return v0
.end method

.method public notificationClicked(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 817
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 819
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeNotificationClicked(JI)V

    goto :goto_0
.end method

.method public notificationClosed(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "byUser"    # Z

    .prologue
    .line 822
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 824
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeNotificationClosed(JIZ)V

    goto :goto_0
.end method

.method public notificationDisplayed(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 812
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 814
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeNotificationDisplayed(JI)V

    goto :goto_0
.end method

.method public onCloseWindow()V
    .locals 2

    .prologue
    .line 501
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 504
    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 7
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 321
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0

    .line 322
    :cond_1
    sget-object v5, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->DEBUG:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 324
    .local v5, "consoleMessageType":Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v6

    .line 325
    .local v6, "messageLevel":Landroid/webkit/ConsoleMessage$MessageLevel;
    sget-object v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$5;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {v6}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 339
    sget-object v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->TAG:Ljava/lang/String;

    const-string v1, "Unknown message level, defaulting to DEBUG"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z

    move-result v0

    goto :goto_0

    .line 327
    :pswitch_0
    sget-object v5, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->INFO:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 328
    goto :goto_1

    .line 330
    :pswitch_1
    sget-object v5, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->LOG:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 331
    goto :goto_1

    .line 333
    :pswitch_2
    sget-object v5, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->WARNING:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 334
    goto :goto_1

    .line 336
    :pswitch_3
    sget-object v5, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->ERROR:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 337
    goto :goto_1

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateWindow(ZZ)Z
    .locals 4
    .param p1, "isDialog"    # Z
    .param p2, "isUserGesture"    # Z

    .prologue
    .line 473
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 489
    :goto_0
    return v2

    .line 475
    :cond_0
    sget-object v1, Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;->BY_JAVASCRIPT:Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;

    .line 477
    .local v1, "initiator":Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;
    if-eqz p2, :cond_1

    .line 478
    sget-object v1, Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;->BY_USER_GESTURE:Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;

    .line 481
    :cond_1
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$2;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$2;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)V

    .line 489
    .local v0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/internal/XWalkViewInternal;>;"
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v2, v3, v1, v0}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z

    move-result v2

    goto :goto_0
.end method

.method public onDangerousDownload(Ljava/lang/String;I)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "downloadId"    # I

    .prologue
    .line 842
    return-void
.end method

.method public onDidChangeThemeColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 286
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onDidChangeThemeColor(Lorg/xwalk/core/internal/XWalkViewInternal;I)V

    .line 289
    :cond_0
    return-void
.end method

.method public onDocumentLoadedInFrame(J)V
    .locals 3
    .param p1, "frameId"    # J

    .prologue
    .line 293
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewInternal;J)V

    .line 296
    :cond_0
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 465
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mDownloadListener:Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mDownloadListener:Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 469
    :cond_0
    return-void
.end method

.method public onDownloadStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 839
    return-void
.end method

.method public onFindResultReceived(IIZ)V
    .locals 0
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .prologue
    .line 391
    return-void
.end method

.method public onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "dontResend"    # Landroid/os/Message;
    .param p2, "resend"    # Landroid/os/Message;

    .prologue
    .line 456
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 457
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 386
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkGeolocationPermissions$Callback;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/xwalk/core/internal/XWalkGeolocationPermissions$Callback;

    .prologue
    .line 376
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkGeolocationPermissions$Callback;)V

    .line 379
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onHideCustomView()V

    .line 534
    :cond_0
    return-void
.end method

.method public onIconAvailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 855
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mUiThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 856
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1, v2, p1, v0}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onIconAvailable(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/os/Message;)V

    .line 857
    return-void
.end method

.method public onLoadResource(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkClient;->onLoadResource(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    invoke-interface {v0, p1}, Lorg/xwalk/core/internal/XWalkNotificationService;->maybeHandleIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onNewPicture(Landroid/graphics/Picture;)V
    .locals 0
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 395
    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 408
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageLoadListener:Lorg/xwalk/core/internal/PageLoadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageLoadListener:Lorg/xwalk/core/internal/PageLoadListener;

    invoke-interface {v0, p1}, Lorg/xwalk/core/internal/PageLoadListener;->onPageFinished(Ljava/lang/String;)V

    .line 410
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    sget-object v1, Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;->CANCELLED:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    invoke-virtual {v0, v1, v2, v3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V

    .line 416
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    .line 422
    :cond_2
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onResourceLoadFinished(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_3
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    invoke-virtual {v0, v1, p1, v2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V

    goto :goto_1
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    .line 401
    sget-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;->FINISHED:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .line 402
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 404
    :cond_0
    return-void
.end method

.method public onProgressChanged(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onProgressChanged(Lorg/xwalk/core/internal/XWalkViewInternal;I)V

    .line 247
    :cond_0
    return-void
.end method

.method public onReceivedClientCertRequest(Lorg/xwalk/core/internal/ClientCertRequestInternal;)V
    .locals 2
    .param p1, "handler"    # Lorg/xwalk/core/internal/ClientCertRequestInternal;

    .prologue
    .line 368
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/ClientCertRequestInternal;)V

    .line 371
    :cond_0
    return-void
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;->FAILED:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewInternal;ILjava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_1
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 508
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/graphics/Bitmap;)V

    .line 511
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mFavicon:Landroid/graphics/Bitmap;

    .line 512
    return-void
.end method

.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 861
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 862
    return-void
.end method

.method public onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 364
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 2
    .param p2, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 360
    :cond_0
    return-void
.end method

.method public onRendererResponsive()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkClient;->onRendererResponsive(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 452
    :cond_0
    return-void
.end method

.method public onRendererUnresponsive()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkClient;->onRendererUnresponsive(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 445
    :cond_0
    return-void
.end method

.method public onRequestFocus()V
    .locals 2

    .prologue
    .line 494
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onRequestFocus(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 497
    :cond_0
    return-void
.end method

.method public onResourceLoadFinished(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadFinished(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onResourceLoadStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 303
    :cond_0
    return-void
.end method

.method public onScaleChangedScaled(FF)V
    .locals 2
    .param p1, "oldScale"    # F
    .param p2, "newScale"    # F

    .prologue
    .line 538
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onScaleChanged(Lorg/xwalk/core/internal/XWalkViewInternal;FF)V

    .line 541
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;

    .prologue
    .line 524
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onShowCustomView(Landroid/view/View;ILorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)V

    .line 527
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;

    .prologue
    .line 516
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onShowCustomView(Landroid/view/View;Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)V

    .line 519
    :cond_0
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 427
    sget-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;->CANCELLED:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .line 428
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 549
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 552
    :cond_0
    return-void
.end method

.method public onToggleFullscreen(Z)V
    .locals 2
    .param p1, "enterFullscreen"    # Z

    .prologue
    .line 556
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mIsFullscreen:Z

    .line 558
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewInternal;Z)V

    .line 560
    :cond_0
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 228
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)V

    .line 231
    :cond_0
    return-void
.end method

.method public onWebLayoutPageScaleFactorChanged(F)V
    .locals 2
    .param p1, "pageScaleFactor"    # F
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 846
    iget v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageScaleFactor:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 851
    :goto_0
    return-void

    .line 848
    :cond_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageScaleFactor:F

    .line 849
    .local v0, "oldPageScaleFactor":F
    iput p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageScaleFactor:F

    .line 850
    iget v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageScaleFactor:F

    invoke-virtual {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onScaleChanged(FF)V

    goto :goto_0
.end method

.method public provideClientCertificateResponse(I[[BLorg/chromium/net/AndroidPrivateKey;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "certChain"    # [[B
    .param p3, "androidKey"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 655
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    .line 656
    return-void
.end method

.method registerPageLoadListener(Lorg/xwalk/core/internal/PageLoadListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/internal/PageLoadListener;

    .prologue
    .line 181
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageLoadListener:Lorg/xwalk/core/internal/PageLoadListener;

    .line 182
    return-void
.end method

.method public requestHttpGetDownload(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 8
    .param p1, "downloadInfo"    # Lorg/chromium/content/browser/DownloadInfo;

    .prologue
    .line 832
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mDownloadListener:Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    if-eqz v0, :cond_0

    .line 833
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mDownloadListener:Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getContentDisposition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getContentLength()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 836
    :cond_0
    return-void
.end method

.method setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    .prologue
    .line 827
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mDownloadListener:Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    .line 828
    return-void
.end method

.method public setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xwalk/core/internal/XWalkNavigationHandler;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNavigationHandler:Lorg/xwalk/core/internal/XWalkNavigationHandler;

    .line 178
    return-void
.end method

.method public setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V
    .locals 1
    .param p1, "service"    # Lorg/xwalk/core/internal/XWalkNotificationService;

    .prologue
    .line 185
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    invoke-interface {v0}, Lorg/xwalk/core/internal/XWalkNotificationService;->shutdown()V

    .line 186
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    .line 187
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    invoke-interface {v0, p0}, Lorg/xwalk/core/internal/XWalkNotificationService;->setBridge(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)V

    .line 188
    :cond_1
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V
    .locals 2
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v0, v1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    goto :goto_0
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V
    .locals 2
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    goto :goto_0
.end method

.method public setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkClient;

    .prologue
    .line 173
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    .line 174
    return-void
.end method

.method public setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkWebChromeClient;

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1, p0}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->setContentsClient(Lorg/xwalk/core/internal/XWalkContentsClient;)V

    .line 165
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    goto :goto_0
.end method

.method public shouldCreateWebContents(Ljava/lang/String;)Z
    .locals 1
    .param p1, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 569
    const/4 v0, 0x1

    return v0
.end method

.method public shouldInterceptRequest(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    .locals 9
    .param p1, "request"    # Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v3, p1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v7

    .line 256
    .local v7, "response":Landroid/webkit/WebResourceResponse;
    if-nez v7, :cond_3

    .line 257
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    new-instance v3, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    invoke-direct {v3, p1}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;-><init>(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;)V

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v8

    .line 260
    .local v8, "xwalkResponse":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    if-nez v8, :cond_1

    .line 281
    .end local v7    # "response":Landroid/webkit/WebResourceResponse;
    .end local v8    # "xwalkResponse":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :cond_0
    :goto_0
    return-object v0

    .line 263
    .restart local v7    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v8    # "xwalkResponse":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :cond_1
    invoke-virtual {v8}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 264
    .local v6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_2

    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 267
    .restart local v6    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v8}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getData()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v8}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getStatusCode()I

    move-result v4

    invoke-virtual {v8}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 275
    .end local v6    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "xwalkResponse":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :cond_3
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v7}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "overridden":Z
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1, v2, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 220
    :cond_0
    if-nez v0, :cond_1

    .line 221
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkContentsClient;->shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 223
    .end local v0    # "overridden":Z
    :cond_1
    return v0
.end method

.method public shouldOverrideRunFileChooser(IIILjava/lang/String;Z)Z
    .locals 6
    .param p1, "processId"    # I
    .param p2, "renderId"    # I
    .param p3, "modeFlags"    # I
    .param p4, "acceptTypes"    # Ljava/lang/String;
    .param p5, "capture"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 645
    :goto_0
    return v2

    .line 601
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;III)V

    .line 636
    .local v0, "uploadFile":Lorg/xwalk/core/internal/XWalkContentsClientBridge$1UriCallback;
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-static {p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v0, p4, v5}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->openFileChooser(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iput-boolean v1, v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$1UriCallback;->syncCallFinished:Z

    .line 642
    iget-boolean v3, v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$1UriCallback;->syncNullReceived:Z

    if-eqz v3, :cond_1

    .line 643
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-static {p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p4, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->showFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 645
    :cond_1
    iget-boolean v3, v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$1UriCallback;->syncNullReceived:Z

    if-nez v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Z

    move-result v0

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
