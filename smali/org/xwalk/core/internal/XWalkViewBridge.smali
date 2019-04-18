.class public Lorg/xwalk/core/internal/XWalkViewBridge;
.super Lorg/xwalk/core/internal/XWalkViewInternal;
.source "XWalkViewBridge.java"


# instance fields
.field private addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private clearCacheForSingleFileStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private clearFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getSettingsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onFocusChangedDelegatebooleanintRectMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onScrollChangedDelegateintintintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onTouchEventDelegateMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onTouchEventMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private performLongClickDelegateMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private scrollByintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private scrollTointintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setInitialScaleintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;

.field private zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    .line 86
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "load"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 101
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "loadAppFromManifest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 116
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "reload"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 131
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "stopLoading"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 149
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 167
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getTitle"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 185
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getOriginalUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 203
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getNavigationHistory"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 218
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "addJavascriptInterface"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 233
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "evaluateJavascript"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 248
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clearCache"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 263
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clearCacheForSingleFile"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 281
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "hasEnteredFullscreen"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 296
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "leaveFullscreen"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 311
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "pauseTimers"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 326
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "resumeTimers"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 341
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onHide"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 356
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onShow"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 371
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onDestroy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 386
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onActivityResult"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 404
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onNewIntent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 422
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "saveState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 440
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "restoreState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 458
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAPIVersion"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 476
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getXWalkVersion"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 499
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUIClient"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 522
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setResourceClient"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 537
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBackgroundColor"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 552
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setLayerType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 567
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 585
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 600
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 623
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "captureBitmapAsync"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 641
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getSettings"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getSettingsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 656
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setNetworkAvailable"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 674
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getRemoteDebuggingUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 692
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomIn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 710
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomOut"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 725
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomBy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 743
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canZoomIn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 761
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canZoomOut"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 779
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onCreateInputConnection"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 794
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setInitialScale"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setInitialScaleintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 809
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setZOrderOnTop"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 824
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clearFormData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 839
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setVisibility"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 854
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSurfaceViewVisibility"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 877
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDownloadListener"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 895
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "performLongClickDelegate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->performLongClickDelegateMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 913
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onTouchEventDelegate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventDelegateMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 931
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onTouchEvent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 946
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onScrollChangedDelegate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onScrollChangedDelegateintintintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 961
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onFocusChangedDelegate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onFocusChangedDelegatebooleanintRectMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 976
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setOnTouchListener"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 991
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "scrollTo"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollTointintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1006
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "scrollBy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollByintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 69
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->reflectionInit()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Object;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "load"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 101
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "loadAppFromManifest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 116
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "reload"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 131
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "stopLoading"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 149
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 167
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getTitle"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 185
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getOriginalUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 203
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getNavigationHistory"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 218
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "addJavascriptInterface"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 233
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "evaluateJavascript"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 248
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clearCache"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 263
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clearCacheForSingleFile"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 281
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "hasEnteredFullscreen"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 296
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "leaveFullscreen"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 311
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "pauseTimers"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 326
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "resumeTimers"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 341
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onHide"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 356
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onShow"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 371
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onDestroy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 386
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onActivityResult"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 404
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onNewIntent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 422
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "saveState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 440
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "restoreState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 458
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAPIVersion"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 476
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getXWalkVersion"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 499
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUIClient"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 522
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setResourceClient"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 537
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBackgroundColor"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 552
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setLayerType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 567
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 585
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 600
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 623
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "captureBitmapAsync"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 641
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getSettings"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getSettingsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 656
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setNetworkAvailable"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 674
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getRemoteDebuggingUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 692
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomIn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 710
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomOut"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 725
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomBy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 743
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canZoomIn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 761
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canZoomOut"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 779
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onCreateInputConnection"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 794
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setInitialScale"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setInitialScaleintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 809
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setZOrderOnTop"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 824
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clearFormData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 839
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setVisibility"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 854
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSurfaceViewVisibility"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 877
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDownloadListener"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 895
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "performLongClickDelegate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->performLongClickDelegateMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 913
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onTouchEventDelegate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventDelegateMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 931
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onTouchEvent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 946
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onScrollChangedDelegate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onScrollChangedDelegateintintintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 961
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onFocusChangedDelegate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onFocusChangedDelegatebooleanintRectMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 976
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setOnTouchListener"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 991
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "scrollTo"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollTointintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1006
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "scrollBy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollByintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 62
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->reflectionInit()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "load"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 101
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "loadAppFromManifest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 116
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "reload"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 131
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "stopLoading"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 149
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 167
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getTitle"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 185
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getOriginalUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 203
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getNavigationHistory"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 218
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "addJavascriptInterface"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 233
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "evaluateJavascript"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 248
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clearCache"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 263
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clearCacheForSingleFile"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 281
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "hasEnteredFullscreen"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 296
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "leaveFullscreen"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 311
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "pauseTimers"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 326
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "resumeTimers"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 341
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onHide"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 356
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onShow"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 371
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onDestroy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 386
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onActivityResult"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 404
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onNewIntent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 422
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "saveState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 440
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "restoreState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 458
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAPIVersion"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 476
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getXWalkVersion"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 499
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUIClient"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 522
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setResourceClient"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 537
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBackgroundColor"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 552
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setLayerType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 567
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 585
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 600
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 623
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "captureBitmapAsync"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 641
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getSettings"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getSettingsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 656
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setNetworkAvailable"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 674
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getRemoteDebuggingUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 692
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomIn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 710
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomOut"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 725
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomBy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 743
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canZoomIn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 761
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canZoomOut"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 779
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onCreateInputConnection"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 794
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setInitialScale"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setInitialScaleintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 809
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setZOrderOnTop"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 824
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clearFormData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 839
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setVisibility"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 854
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSurfaceViewVisibility"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 877
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDownloadListener"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 895
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "performLongClickDelegate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->performLongClickDelegateMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 913
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onTouchEventDelegate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventDelegateMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 931
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onTouchEvent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 946
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onScrollChangedDelegate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onScrollChangedDelegateintintintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 961
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onFocusChangedDelegate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onFocusChangedDelegatebooleanintRectMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 976
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setOnTouchListener"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 991
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "scrollTo"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollTointintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1006
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "scrollBy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollByintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 55
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->reflectionInit()V

    .line 57
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceSuper(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addJavascriptInterfaceSuper(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public canZoomIn()Z
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomInSuper()Z

    move-result v0

    .line 732
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomInSuper()Z
    .locals 1

    .prologue
    .line 738
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->canZoomIn()Z

    move-result v0

    .line 740
    .local v0, "ret":Z
    return v0
.end method

.method public canZoomOut()Z
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomOutSuper()Z

    move-result v0

    .line 750
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomOutSuper()Z
    .locals 1

    .prologue
    .line 756
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->canZoomOut()Z

    move-result v0

    .line 758
    .local v0, "ret":Z
    return v0
.end method

.method public captureBitmapAsync(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;)V
    .locals 4
    .param p1, "callback"    # Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;

    .prologue
    .line 612
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->captureBitmapAsyncSuper(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;)V

    .line 617
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public captureBitmapAsync(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;)V
    .locals 1
    .param p1, "callback"    # Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;

    .prologue
    .line 604
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;

    if-eqz v0, :cond_0

    .line 605
    check-cast p1, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;

    .end local p1    # "callback":Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->captureBitmapAsync(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;)V

    .line 609
    :goto_0
    return-void

    .line 607
    .restart local p1    # "callback":Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->captureBitmapAsync(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;)V

    goto :goto_0
.end method

.method public captureBitmapAsyncSuper(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;)V
    .locals 0
    .param p1, "callback"    # Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;

    .prologue
    .line 620
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->captureBitmapAsync(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;)V

    .line 621
    return-void
.end method

.method public clearCache(Z)V
    .locals 4
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCacheSuper(Z)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearCacheForSingleFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCacheForSingleFileSuper(Ljava/lang/String;)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearCacheForSingleFileSuper(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->clearCacheForSingleFile(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public clearCacheSuper(Z)V
    .locals 0
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 245
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->clearCache(Z)V

    .line 246
    return-void
.end method

.method public clearFormData()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->clearFormDataSuper()V

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearFormDataSuper()V
    .locals 0

    .prologue
    .line 821
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->clearFormData()V

    .line 822
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 3
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptSuper(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public evaluateJavascriptSuper(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 231
    return-void
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionSuper()Ljava/lang/String;

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAPIVersionSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getAPIVersion()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 455
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistorySuper()Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    goto :goto_0
.end method

.method public getNavigationHistorySuper()Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v0

    .line 199
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 200
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    :cond_0
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;-><init>(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlSuper()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getOriginalUrlSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 182
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getRemoteDebuggingUrl()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlSuper()Landroid/net/Uri;

    move-result-object v0

    .line 663
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0
.end method

.method public getRemoteDebuggingUrlSuper()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 669
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getRemoteDebuggingUrl()Landroid/net/Uri;

    move-result-object v0

    .line 670
    .local v0, "ret":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 671
    .end local v0    # "ret":Landroid/net/Uri;
    :cond_0
    return-object v0
.end method

.method public getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getSettingsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->getSettingsSuper()Lorg/xwalk/core/internal/XWalkSettingsBridge;

    move-result-object v0

    .line 630
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getSettingsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkSettingsBridge;

    goto :goto_0
.end method

.method public getSettingsSuper()Lorg/xwalk/core/internal/XWalkSettingsBridge;
    .locals 2

    .prologue
    .line 636
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    .line 637
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkSettingsInternal;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 638
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkSettingsInternal;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkSettingsInternal;
    :cond_0
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkSettingsBridge;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/xwalk/core/internal/XWalkSettingsBridge;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xwalk/core/internal/XWalkSettingsBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleSuper()Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitleSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 164
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlSuper()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrlSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 146
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->getUserAgentStringSuper()Ljava/lang/String;

    move-result-object v0

    .line 574
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserAgentStringSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 582
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionSuper()Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getXWalkVersionSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getXWalkVersion()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 473
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public hasEnteredFullscreen()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenSuper()Z

    move-result v0

    .line 270
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public hasEnteredFullscreenSuper()Z
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->hasEnteredFullscreen()Z

    move-result v0

    .line 278
    .local v0, "ret":Z
    return v0
.end method

.method public leaveFullscreen()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenSuper()V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public leaveFullscreenSuper()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->leaveFullscreen()V

    .line 294
    return-void
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewBridge;->loadSuper(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestSuper(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public loadAppFromManifestSuper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public loadSuper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 375
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultSuper(IILandroid/content/Intent;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onActivityResultSuper(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 383
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkViewInternal;->onActivityResult(IILandroid/content/Intent;)V

    .line 384
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 765
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->onCreateInputConnectionSuper(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 768
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    goto :goto_0
.end method

.method public onCreateInputConnectionSuper(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 774
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 775
    .local v0, "ret":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 776
    .end local v0    # "ret":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroySuper()V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onDestroySuper()V
    .locals 0

    .prologue
    .line 368
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onDestroy()V

    .line 369
    return-void
.end method

.method public onFocusChangedDelegate(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 950
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onFocusChangedDelegatebooleanintRectMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkViewBridge;->onFocusChangedDelegateSuper(ZILandroid/graphics/Rect;)V

    .line 955
    :goto_0
    return-void

    .line 953
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onFocusChangedDelegatebooleanintRectMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onFocusChangedDelegateSuper(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 958
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkViewInternal;->onFocusChangedDelegate(ZILandroid/graphics/Rect;)V

    .line 959
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideSuper()V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onHideSuper()V
    .locals 0

    .prologue
    .line 338
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onHide()V

    .line 339
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 390
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentSuper(Landroid/content/Intent;)Z

    move-result v0

    .line 393
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntentSuper(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 399
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    .line 401
    .local v0, "ret":Z
    return v0
.end method

.method public onScrollChangedDelegate(IIII)V
    .locals 4
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 935
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onScrollChangedDelegateintintintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkViewBridge;->onScrollChangedDelegateSuper(IIII)V

    .line 940
    :goto_0
    return-void

    .line 938
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onScrollChangedDelegateintintintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onScrollChangedDelegateSuper(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 943
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkViewInternal;->onScrollChangedDelegate(IIII)V

    .line 944
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowSuper()V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onShowSuper()V
    .locals 0

    .prologue
    .line 353
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onShow()V

    .line 354
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 917
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 920
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEventDelegate(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 899
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventDelegateMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventDelegateSuper(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 902
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventDelegateMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEventDelegateSuper(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 908
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->onTouchEventDelegate(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 910
    .local v0, "ret":Z
    return v0
.end method

.method public onTouchEventSuper(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 926
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 928
    .local v0, "ret":Z
    return v0
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersSuper()V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public pauseTimersSuper()V
    .locals 0

    .prologue
    .line 308
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->pauseTimers()V

    .line 309
    return-void
.end method

.method public performLongClickDelegate()Z
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->performLongClickDelegateMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->performLongClickDelegateSuper()Z

    move-result v0

    .line 884
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->performLongClickDelegateMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public performLongClickDelegateSuper()Z
    .locals 1

    .prologue
    .line 890
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->performLongClickDelegate()Z

    move-result v0

    .line 892
    .local v0, "ret":Z
    return v0
.end method

.method reflectionInit()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1010
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 1011
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "load"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1015
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "loadAppFromManifest"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1017
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "reload"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1019
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "stopLoading"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1021
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getUrl"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1023
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getTitle"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1025
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getOriginalUrl"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1027
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getNavigationHistory"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1029
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "addJavascriptInterface"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1031
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "evaluateJavascript"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1033
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "clearCache"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1035
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "clearCacheForSingleFile"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1037
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "hasEnteredFullscreen"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1039
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "leaveFullscreen"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1041
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "pauseTimers"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1043
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "resumeTimers"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1045
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onHide"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1047
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onShow"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1049
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onDestroy"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1051
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onActivityResult"

    new-array v3, v10, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1053
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onNewIntent"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1055
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "saveState"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1057
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "restoreState"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1059
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getAPIVersion"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1061
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getXWalkVersion"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1063
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setUIClient"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkUIClient"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1065
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setResourceClient"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkResourceClient"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1067
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setBackgroundColor"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1069
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setLayerType"

    new-array v3, v9, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1071
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setUserAgentString"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1073
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getUserAgentString"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1075
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setAcceptLanguages"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1077
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "captureBitmapAsync"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkGetBitmapCallback"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1079
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getSettingsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getSettings"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1081
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setNetworkAvailable"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1083
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getRemoteDebuggingUrl"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1085
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "zoomIn"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1087
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "zoomOut"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1089
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "zoomBy"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1091
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "canZoomIn"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1093
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "canZoomOut"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1095
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onCreateInputConnection"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/view/inputmethod/EditorInfo;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1097
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setInitialScaleintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setInitialScale"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1099
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setZOrderOnTop"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1101
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "clearFormData"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1103
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setVisibility"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1105
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setSurfaceViewVisibility"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1107
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setDownloadListener"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkDownloadListener"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1109
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->performLongClickDelegateMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "performLongClickDelegate"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1111
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventDelegateMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onTouchEventDelegate"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/view/MotionEvent;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1113
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onTouchEventMotionEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onTouchEvent"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/view/MotionEvent;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1115
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onScrollChangedDelegateintintintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onScrollChangedDelegate"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v9

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1117
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onFocusChangedDelegatebooleanintRectMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onFocusChangedDelegate"

    new-array v3, v10, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1119
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setOnTouchListener"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/view/View$OnTouchListener;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1121
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollTointintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "scrollTo"

    new-array v3, v9, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1123
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollByintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "scrollBy"

    new-array v3, v9, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public reload(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadSuper(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public reloadSuper(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 113
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->reload(I)V

    .line 114
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateSuper(Landroid/os/Bundle;)Z

    move-result v0

    .line 429
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public restoreStateSuper(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 435
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    .line 437
    .local v0, "ret":Z
    return v0
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersSuper()V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resumeTimersSuper()V
    .locals 0

    .prologue
    .line 323
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->resumeTimers()V

    .line 324
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 408
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateSuper(Landroid/os/Bundle;)Z

    move-result v0

    .line 411
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public saveStateSuper(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 417
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->saveState(Landroid/os/Bundle;)Z

    move-result v0

    .line 419
    .local v0, "ret":Z
    return v0
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 995
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollByintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollBySuper(II)V

    .line 1000
    :goto_0
    return-void

    .line 998
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollByintintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public scrollBySuper(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1003
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->scrollBy(II)V

    .line 1004
    return-void
.end method

.method public scrollTo(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 980
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollTointintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollToSuper(II)V

    .line 985
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->scrollTointintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public scrollToSuper(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 988
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->scrollTo(II)V

    .line 989
    return-void
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 3
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 589
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setAcceptLanguagesSuper(Ljava/lang/String;)V

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAcceptLanguagesSuper(Ljava/lang/String;)V
    .locals 0
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setAcceptLanguages(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorSuper(I)V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBackgroundColorSuper(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 534
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setBackgroundColor(I)V

    .line 535
    return-void
.end method

.method public setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;)V
    .locals 4
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;

    .prologue
    .line 866
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListenerSuper(Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;)V

    .line 871
    :goto_0
    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    .prologue
    .line 858
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;

    if-eqz v0, :cond_0

    .line 859
    check-cast p1, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;

    .end local p1    # "listener":Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;)V

    .line 863
    :goto_0
    return-void

    .line 861
    .restart local p1    # "listener":Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    goto :goto_0
.end method

.method public setDownloadListenerSuper(Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;

    .prologue
    .line 874
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    .line 875
    return-void
.end method

.method public setInitialScale(I)V
    .locals 4
    .param p1, "scaleInPercent"    # I

    .prologue
    .line 783
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setInitialScaleintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setInitialScaleSuper(I)V

    .line 788
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setInitialScaleintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setInitialScaleSuper(I)V
    .locals 0
    .param p1, "scaleInPercent"    # I

    .prologue
    .line 791
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setInitialScale(I)V

    .line 792
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 541
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeSuper(ILandroid/graphics/Paint;)V

    .line 546
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLayerTypeSuper(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 549
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setLayerType(ILandroid/graphics/Paint;)V

    .line 550
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .param p1, "networkUp"    # Z

    .prologue
    .line 645
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailableSuper(Z)V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setNetworkAvailableSuper(Z)V
    .locals 0
    .param p1, "networkUp"    # Z

    .prologue
    .line 653
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setNetworkAvailable(Z)V

    .line 654
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 965
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setOnTouchListenerSuper(Landroid/view/View$OnTouchListener;)V

    .line 970
    :goto_0
    return-void

    .line 968
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setOnTouchListenerSuper(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 973
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 974
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientBridge;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientBridge;

    .prologue
    .line 511
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientSuper(Lorg/xwalk/core/internal/XWalkResourceClientBridge;)V

    .line 516
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    .prologue
    .line 503
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkResourceClientBridge;

    if-eqz v0, :cond_0

    .line 504
    check-cast p1, Lorg/xwalk/core/internal/XWalkResourceClientBridge;

    .end local p1    # "client":Lorg/xwalk/core/internal/XWalkResourceClientInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientBridge;)V

    .line 508
    :goto_0
    return-void

    .line 506
    .restart local p1    # "client":Lorg/xwalk/core/internal/XWalkResourceClientInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    goto :goto_0
.end method

.method public setResourceClientSuper(Lorg/xwalk/core/internal/XWalkResourceClientBridge;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientBridge;

    .prologue
    .line 519
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    .line 520
    return-void
.end method

.method public setSurfaceViewVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 843
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setSurfaceViewVisibilitySuper(I)V

    .line 848
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSurfaceViewVisibilitySuper(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 851
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setSurfaceViewVisibility(I)V

    .line 852
    return-void
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientBridge;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientBridge;

    .prologue
    .line 488
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientSuper(Lorg/xwalk/core/internal/XWalkUIClientBridge;)V

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;

    .prologue
    .line 480
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkUIClientBridge;

    if-eqz v0, :cond_0

    .line 481
    check-cast p1, Lorg/xwalk/core/internal/XWalkUIClientBridge;

    .end local p1    # "client":Lorg/xwalk/core/internal/XWalkUIClientInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientBridge;)V

    .line 485
    :goto_0
    return-void

    .line 483
    .restart local p1    # "client":Lorg/xwalk/core/internal/XWalkUIClientInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    goto :goto_0
.end method

.method public setUIClientSuper(Lorg/xwalk/core/internal/XWalkUIClientBridge;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientBridge;

    .prologue
    .line 496
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    .line 497
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 556
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringSuper(Ljava/lang/String;)V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUserAgentStringSuper(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUserAgentString(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 828
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setVisibilitySuper(I)V

    .line 833
    :goto_0
    return-void

    .line 831
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setVisibilityintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setVisibilitySuper(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 836
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setVisibility(I)V

    .line 837
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 4
    .param p1, "onTop"    # Z

    .prologue
    .line 798
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setZOrderOnTopSuper(Z)V

    .line 803
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setZOrderOnTopSuper(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 806
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setZOrderOnTop(Z)V

    .line 807
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingSuper()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public stopLoadingSuper()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->stopLoading()V

    .line 129
    return-void
.end method

.method public zoomBy(F)V
    .locals 4
    .param p1, "factor"    # F

    .prologue
    .line 714
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomBySuper(F)V

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public zoomBySuper(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 722
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->zoomBy(F)V

    .line 723
    return-void
.end method

.method public zoomIn()Z
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomInSuper()Z

    move-result v0

    .line 681
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public zoomInSuper()Z
    .locals 1

    .prologue
    .line 687
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->zoomIn()Z

    move-result v0

    .line 689
    .local v0, "ret":Z
    return v0
.end method

.method public zoomOut()Z
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomOutSuper()Z

    move-result v0

    .line 699
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOutSuper()Z
    .locals 1

    .prologue
    .line 705
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->zoomOut()Z

    move-result v0

    .line 707
    .local v0, "ret":Z
    return v0
.end method
