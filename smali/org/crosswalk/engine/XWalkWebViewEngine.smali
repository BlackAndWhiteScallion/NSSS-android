.class public Lorg/crosswalk/engine/XWalkWebViewEngine;
.super Ljava/lang/Object;
.source "XWalkWebViewEngine.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebViewEngine;


# static fields
.field public static final TAG:Ljava/lang/String; = "XWalkWebViewEngine"

.field public static final XWALK_USER_AGENT:Ljava/lang/String; = "xwalkUserAgent"

.field public static final XWALK_Z_ORDER_ON_TOP:Ljava/lang/String; = "xwalkZOrderOnTop"


# instance fields
.field protected activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

.field protected bridge:Lorg/apache/cordova/CordovaBridge;

.field protected client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

.field protected cookieManager:Lorg/crosswalk/engine/XWalkCordovaCookieManager;

.field protected cordova:Lorg/apache/cordova/CordovaInterface;

.field protected nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

.field protected parentWebView:Lorg/apache/cordova/CordovaWebView;

.field protected pluginManager:Lorg/apache/cordova/PluginManager;

.field protected preferences:Lorg/apache/cordova/CordovaPreferences;

.field protected resourceApi:Lorg/apache/cordova/CordovaResourceApi;

.field protected startUrl:Ljava/lang/String;

.field protected final webView:Lorg/crosswalk/engine/XWalkCordovaView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Lorg/apache/cordova/CordovaPreferences;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    .line 69
    new-instance v0, Lorg/crosswalk/engine/XWalkWebViewEngine$1;

    invoke-direct {v0, p0}, Lorg/crosswalk/engine/XWalkWebViewEngine$1;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 75
    .local v0, "cancelCommand":Ljava/lang/Runnable;
    new-instance v1, Lorg/crosswalk/engine/XWalkWebViewEngine$2;

    invoke-direct {v1, p0}, Lorg/crosswalk/engine/XWalkWebViewEngine$2;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 93
    .local v1, "completeCommand":Ljava/lang/Runnable;
    new-instance v3, Lorg/xwalk/core/XWalkActivityDelegate;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v3, v2, v0, v1}, Lorg/xwalk/core/XWalkActivityDelegate;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    .line 95
    new-instance v2, Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-direct {v2, p1, p2}, Lorg/crosswalk/engine/XWalkCordovaView;-><init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V

    iput-object v2, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 0
    .param p0, "x0"    # Lorg/crosswalk/engine/XWalkWebViewEngine;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/crosswalk/engine/XWalkWebViewEngine;->initWebViewSettings()V

    return-void
.end method

.method static synthetic access$100(Lorg/xwalk/core/XWalkView;Lorg/apache/cordova/CordovaBridge;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/XWalkView;
    .param p1, "x1"    # Lorg/apache/cordova/CordovaBridge;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lorg/crosswalk/engine/XWalkWebViewEngine;->exposeJsInterface(Lorg/xwalk/core/XWalkView;Lorg/apache/cordova/CordovaBridge;)V

    return-void
.end method

.method private static exposeJsInterface(Lorg/xwalk/core/XWalkView;Lorg/apache/cordova/CordovaBridge;)V
    .locals 2
    .param p0, "webView"    # Lorg/xwalk/core/XWalkView;
    .param p1, "bridge"    # Lorg/apache/cordova/CordovaBridge;

    .prologue
    .line 166
    new-instance v0, Lorg/crosswalk/engine/XWalkExposedJsApi;

    invoke-direct {v0, p1}, Lorg/crosswalk/engine/XWalkExposedJsApi;-><init>(Lorg/apache/cordova/CordovaBridge;)V

    .line 167
    .local v0, "exposedJsApi":Lorg/crosswalk/engine/XWalkExposedJsApi;
    const-string v1, "_cordovaNative"

    invoke-virtual {p0, v0, v1}, Lorg/xwalk/core/XWalkView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private initWebViewSettings()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v3, v2}, Lorg/crosswalk/engine/XWalkCordovaView;->setVerticalScrollBarEnabled(Z)V

    .line 151
    iget-object v3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    if-nez v3, :cond_2

    .line 152
    .local v2, "zOrderOnTop":Z
    :goto_0
    iget-object v3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v3, v2}, Lorg/crosswalk/engine/XWalkCordovaView;->setZOrderOnTop(Z)V

    .line 155
    iget-object v3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    if-nez v3, :cond_3

    const-string v1, ""

    .line 156
    .local v1, "xwalkUserAgent":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    iget-object v3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v3, v1}, Lorg/crosswalk/engine/XWalkCordovaView;->setUserAgentString(Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v4, "BackgroundColor"

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CordovaPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    iget-object v3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v4, "BackgroundColor"

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v4, v5}, Lorg/apache/cordova/CordovaPreferences;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "backgroundColor":I
    iget-object v3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v3, v0}, Lorg/crosswalk/engine/XWalkCordovaView;->setBackgroundColor(I)V

    .line 163
    .end local v0    # "backgroundColor":I
    :cond_1
    return-void

    .line 151
    .end local v1    # "xwalkUserAgent":Ljava/lang/String;
    .end local v2    # "zOrderOnTop":Z
    :cond_2
    iget-object v3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v4, "xwalkZOrderOnTop"

    invoke-virtual {v3, v4, v2}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    .line 155
    .restart local v2    # "zOrderOnTop":Z
    :cond_3
    iget-object v3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v4, "xwalkUserAgent"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkNavigationHistory;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/crosswalk/engine/XWalkCordovaView;->clearCache(Z)V

    goto :goto_0
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkNavigationHistory;->clear()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->onDestroy()V

    goto :goto_0
.end method

.method public getCookieManager()Lorg/apache/cordova/ICordovaCookieManager;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->cookieManager:Lorg/crosswalk/engine/XWalkCordovaCookieManager;

    return-object v0
.end method

.method public getCordovaWebView()Lorg/apache/cordova/CordovaWebView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->parentWebView:Lorg/apache/cordova/CordovaWebView;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    return-object v0
.end method

.method public goBack()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 178
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkCordovaView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkNavigationHistory;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkCordovaView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v1

    sget-object v2, Lorg/xwalk/core/XWalkNavigationHistory$Direction;->BACKWARD:Lorg/xwalk/core/XWalkNavigationHistory$Direction;

    invoke-virtual {v1, v2, v0}, Lorg/xwalk/core/XWalkNavigationHistory;->navigate(Lorg/xwalk/core/XWalkNavigationHistory$Direction;I)V

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebViewEngine$Client;Lorg/apache/cordova/CordovaResourceApi;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 3
    .param p1, "parentWebView"    # Lorg/apache/cordova/CordovaWebView;
    .param p2, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p3, "client"    # Lorg/apache/cordova/CordovaWebViewEngine$Client;
    .param p4, "resourceApi"    # Lorg/apache/cordova/CordovaResourceApi;
    .param p5, "pluginManager"    # Lorg/apache/cordova/PluginManager;
    .param p6, "nativeToJsMessageQueue"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .prologue
    .line 104
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 107
    :cond_0
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->parentWebView:Lorg/apache/cordova/CordovaWebView;

    .line 108
    iput-object p2, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 109
    iput-object p3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    .line 110
    iput-object p4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    .line 111
    iput-object p5, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 112
    iput-object p6, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    .line 114
    new-instance v0, Lorg/crosswalk/engine/XWalkWebViewEngine$3;

    invoke-direct {v0, p0}, Lorg/crosswalk/engine/XWalkWebViewEngine$3;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 120
    .local v0, "activityDelegatePlugin":Lorg/apache/cordova/CordovaPlugin;
    new-instance v1, Lorg/apache/cordova/PluginEntry;

    const-string v2, "XWalkActivityDelegate"

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginEntry;-><init>(Ljava/lang/String;Lorg/apache/cordova/CordovaPlugin;)V

    invoke-virtual {p5, v1}, Lorg/apache/cordova/PluginManager;->addService(Lorg/apache/cordova/PluginEntry;)V

    .line 122
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1, p0}, Lorg/crosswalk/engine/XWalkCordovaView;->init(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 124
    new-instance v1, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;

    new-instance v2, Lorg/crosswalk/engine/XWalkWebViewEngine$4;

    invoke-direct {v2, p0}, Lorg/crosswalk/engine/XWalkWebViewEngine$4;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    invoke-direct {v1, v2}, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;)V

    invoke-virtual {p6, v1}, Lorg/apache/cordova/NativeToJsMessageQueue;->addBridgeMode(Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V

    .line 135
    new-instance v1, Lorg/apache/cordova/CordovaBridge;

    invoke-direct {v1, p5, p6}, Lorg/apache/cordova/CordovaBridge;-><init>(Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V

    iput-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    .line 136
    return-void
.end method

.method public isXWalkReady()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "clearNavigationStack"    # Z

    .prologue
    .line 233
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->startUrl:Ljava/lang/String;

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/crosswalk/engine/XWalkCordovaView;->load(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPaused(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 188
    :cond_0
    if-eqz p1, :cond_1

    .line 190
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->pauseTimersForReal()V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->resumeTimers()V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->stopLoading()V

    goto :goto_0
.end method
