.class public Lorg/crosswalk/engine/XWalkCordovaView;
.super Lorg/xwalk/core/XWalkView;
.source "XWalkCordovaView.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebViewEngine$EngineView;


# static fields
.field private static hasSetStaticPref:Z


# instance fields
.field protected parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

.field protected resourceClient:Lorg/crosswalk/engine/XWalkCordovaResourceClient;

.field protected uiClient:Lorg/crosswalk/engine/XWalkCordovaUiClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/crosswalk/engine/XWalkCordovaView;->setGlobalPrefs(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/xwalk/core/XWalkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Lorg/apache/cordova/CordovaPreferences;

    .prologue
    .line 48
    invoke-static {p1, p2}, Lorg/crosswalk/engine/XWalkCordovaView;->setGlobalPrefs(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, v1, v0}, Lorg/xwalk/core/XWalkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private static setGlobalPrefs(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)Landroid/content/Context;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferences"    # Lorg/apache/cordova/CordovaPreferences;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 26
    sget-boolean v6, Lorg/crosswalk/engine/XWalkCordovaView;->hasSetStaticPref:Z

    if-nez v6, :cond_3

    .line 27
    sput-boolean v5, Lorg/crosswalk/engine/XWalkCordovaView;->hasSetStaticPref:Z

    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 34
    if-nez p1, :cond_4

    move v3, v4

    .line 35
    .local v3, "prefAnimatable":Z
    :goto_0
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v6, :cond_5

    move v2, v4

    .line 37
    .local v2, "manifestAnimatable":Z
    :goto_1
    const-string v6, "animatable-xwalk-view"

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v5

    :cond_1
    invoke-static {v6, v4}, Lorg/xwalk/core/XWalkPreferences;->setValue(Ljava/lang/String;Z)V

    .line 38
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 39
    const-string v4, "remote-debugging"

    invoke-static {v4, v5}, Lorg/xwalk/core/XWalkPreferences;->setValue(Ljava/lang/String;Z)V

    .line 41
    :cond_2
    const-string v4, "javascript-can-open-window"

    invoke-static {v4, v5}, Lorg/xwalk/core/XWalkPreferences;->setValue(Ljava/lang/String;Z)V

    .line 42
    const-string v4, "allow-universal-access-from-file"

    invoke-static {v4, v5}, Lorg/xwalk/core/XWalkPreferences;->setValue(Ljava/lang/String;Z)V

    .line 44
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "manifestAnimatable":Z
    .end local v3    # "prefAnimatable":Z
    :cond_3
    return-object p0

    .line 31
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 34
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const-string v6, "CrosswalkAnimatable"

    invoke-virtual {p1, v6, v4}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0

    .line 35
    .restart local v3    # "prefAnimatable":Z
    :cond_5
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "CrosswalkAnimatable"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 85
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkCordovaView;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v1, p1}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 86
    .local v0, "ret":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 89
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/XWalkView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCordovaWebView()Lorg/apache/cordova/CordovaWebView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaView;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaView;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkWebViewEngine;->getCordovaWebView()Lorg/apache/cordova/CordovaWebView;

    move-result-object v0

    goto :goto_0
.end method

.method init(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 1
    .param p1, "parentEngine"    # Lorg/crosswalk/engine/XWalkWebViewEngine;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkCordovaView;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    .line 57
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaView;->resourceClient:Lorg/crosswalk/engine/XWalkCordovaResourceClient;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;

    invoke-direct {v0, p1}, Lorg/crosswalk/engine/XWalkCordovaResourceClient;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    invoke-virtual {p0, v0}, Lorg/crosswalk/engine/XWalkCordovaView;->setResourceClient(Lorg/xwalk/core/XWalkResourceClient;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaView;->uiClient:Lorg/crosswalk/engine/XWalkCordovaUiClient;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Lorg/crosswalk/engine/XWalkCordovaUiClient;

    invoke-direct {v0, p1}, Lorg/crosswalk/engine/XWalkCordovaUiClient;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    invoke-virtual {p0, v0}, Lorg/crosswalk/engine/XWalkCordovaView;->setUIClient(Lorg/xwalk/core/XWalkUIClient;)V

    .line 63
    :cond_1
    return-void
.end method

.method public pauseTimers()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public pauseTimersForReal()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lorg/xwalk/core/XWalkView;->pauseTimers()V

    .line 100
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaView;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaView;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkWebViewEngine;->isXWalkReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-super {p0, p1}, Lorg/xwalk/core/XWalkView;->setBackgroundColor(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/XWalkResourceClient;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/XWalkResourceClient;

    .prologue
    .line 68
    instance-of v0, p1, Lorg/crosswalk/engine/XWalkCordovaResourceClient;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 69
    check-cast v0, Lorg/crosswalk/engine/XWalkCordovaResourceClient;

    iput-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaView;->resourceClient:Lorg/crosswalk/engine/XWalkCordovaResourceClient;

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/XWalkView;->setResourceClient(Lorg/xwalk/core/XWalkResourceClient;)V

    .line 72
    return-void
.end method

.method public setUIClient(Lorg/xwalk/core/XWalkUIClient;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/XWalkUIClient;

    .prologue
    .line 77
    instance-of v0, p1, Lorg/crosswalk/engine/XWalkCordovaUiClient;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 78
    check-cast v0, Lorg/crosswalk/engine/XWalkCordovaUiClient;

    iput-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaView;->uiClient:Lorg/crosswalk/engine/XWalkCordovaUiClient;

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/XWalkView;->setUIClient(Lorg/xwalk/core/XWalkUIClient;)V

    .line 81
    return-void
.end method
