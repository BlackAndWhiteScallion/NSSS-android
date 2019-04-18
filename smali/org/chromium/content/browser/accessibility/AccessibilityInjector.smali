.class public Lorg/chromium/content/browser/accessibility/AccessibilityInjector;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;,
        Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_SCREEN_READER_JAVASCRIPT_TEMPLATE:Ljava/lang/String; = "(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'%1s\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_OPTED_OUT:I = 0x0

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_PROVIDED:I = 0x1

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_UNDEFINED:I = -0x1

.field private static final ALIAS_ACCESSIBILITY_JS_INTERFACE:Ljava/lang/String; = "accessibility"

.field private static final ALIAS_ACCESSIBILITY_JS_INTERFACE_2:Ljava/lang/String; = "accessibility2"

.field private static final DEFAULT_ACCESSIBILITY_SCREEN_READER_URL:Ljava/lang/String; = "https://ssl.gstatic.com/accessibility/javascript/android/chromeandroidvox.js"

.field private static final FEEDBACK_BRAILLE:I = 0x20

.field private static final TOGGLE_CHROME_VOX_JAVASCRIPT:Ljava/lang/String; = "(function() {    if (typeof cvox !== \'undefined\') {        cvox.ChromeVox.host.activateOrDeactivateChromeVox(%1s);    }  })();"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAccessibilityScreenReaderUrl:Ljava/lang/String;

.field protected mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private final mHasVibratePermission:Z

.field protected mInjectedScriptEnabled:Z

.field protected mScriptInjected:Z

.field private mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

.field private mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;


# direct methods
.method protected constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 3
    .param p1, "view"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 104
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "accessibility-js-url"

    const-string v2, "https://ssl.gstatic.com/accessibility/javascript/android/chromeandroidvox.js"

    invoke-virtual {v0, v1, v2}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mAccessibilityScreenReaderUrl:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mHasVibratePermission:Z

    .line 110
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method private getAxsUrlParameterValue()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 300
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v3

    invoke-interface {v3}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v2

    .line 305
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v3

    invoke-interface {v3}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 306
    .local v1, "uri":Landroid/net/Uri;
    const-string v3, "axs"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "axs":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 308
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 312
    .end local v0    # "axs":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 310
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private getScreenReaderInjectingJs()Ljava/lang/String;
    .locals 4

    .prologue
    .line 320
    const-string v0, "(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'%1s\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mAccessibilityScreenReaderUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector;
    .locals 2
    .param p0, "view"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 89
    new-instance v0, Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/accessibility/LollipopAccessibilityInjector;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 93
    :goto_0
    return-object v0

    .line 90
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 91
    new-instance v0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method


# virtual methods
.method public accessibilityIsAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewClient;->isJavascriptEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v2

    .line 168
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method protected addAccessibilityApis()V
    .locals 4

    .prologue
    .line 266
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 267
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 269
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->createTextToSpeechWrapper(Landroid/view/View;Landroid/content/Context;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    .line 272
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    const-string v3, "accessibility"

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mHasVibratePermission:Z

    if-eqz v1, :cond_1

    .line 277
    new-instance v1, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    .line 278
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    const-string v3, "accessibility2"

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    :cond_1
    return-void
.end method

.method public addOrRemoveAccessibilityApisIfNecessary()V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->accessibilityIsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->addAccessibilityApis()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->removeAccessibilityApis()V

    goto :goto_0
.end method

.method protected createTextToSpeechWrapper(Landroid/view/View;Landroid/content/Context;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    new-instance v0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    invoke-direct {v0, p1, p2}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-object v0
.end method

.method public injectAccessibilityScriptIntoPage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 121
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->accessibilityIsAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->getAxsUrlParameterValue()I

    move-result v0

    .line 124
    .local v0, "axsParameterValue":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 128
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->getScreenReaderInjectingJs()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "js":Ljava/lang/String;
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->isDeviceAccessibilityScriptInjectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->addOrRemoveAccessibilityApisIfNecessary()V

    .line 132
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/chromium/content_public/browser/WebContents;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    .line 133
    iput-boolean v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mInjectedScriptEnabled:Z

    .line 134
    iput-boolean v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mScriptInjected:Z

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 239
    return-void
.end method

.method public onPageLoadStarted()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mScriptInjected:Z

    .line 208
    return-void
.end method

.method public onPageLoadStopped()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->injectAccessibilityScriptIntoPage()V

    .line 216
    return-void
.end method

.method public onPageLostFocus()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;->stop()I

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;->cancel()V

    .line 226
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method protected removeAccessibilityApis()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;->stop()I

    .line 288
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;->shutdownInternal()V

    .line 289
    iput-object v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mTextToSpeech:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$TextToSpeechWrapper;

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const-string v1, "accessibility2"

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;->cancel()V

    .line 295
    iput-object v2, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mVibrator:Lorg/chromium/content/browser/accessibility/AccessibilityInjector$VibratorWrapper;

    .line 297
    :cond_1
    return-void
.end method

.method public setScriptEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 185
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mScriptInjected:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->injectAccessibilityScriptIntoPage()V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->accessibilityIsAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mInjectedScriptEnabled:Z

    if-ne v1, p1, :cond_2

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mInjectedScriptEnabled:Z

    .line 189
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const-string v1, "(function() {    if (typeof cvox !== \'undefined\') {        cvox.ChromeVox.host.activateOrDeactivateChromeVox(%1s);    }  })();"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mInjectedScriptEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "js":Ljava/lang/String;
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/chromium/content_public/browser/WebContents;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    .line 194
    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->mInjectedScriptEnabled:Z

    if-nez v1, :cond_1

    .line 196
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->onPageLostFocus()V

    goto :goto_0
.end method

.method public supportsAccessibilityAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method
