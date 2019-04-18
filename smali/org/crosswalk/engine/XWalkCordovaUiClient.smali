.class public Lorg/crosswalk/engine/XWalkCordovaUiClient;
.super Lorg/xwalk/core/XWalkUIClient;
.source "XWalkCordovaUiClient.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FILECHOOSER_RESULTCODE:I = 0x1435

.field private static final TAG:Ljava/lang/String; = "XWalkCordovaUiClient"


# instance fields
.field protected final dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

.field protected final parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/crosswalk/engine/XWalkCordovaUiClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 2
    .param p1, "parentEngine"    # Lorg/crosswalk/engine/XWalkWebViewEngine;

    .prologue
    .line 43
    iget-object v0, p1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-direct {p0, v0}, Lorg/xwalk/core/XWalkUIClient;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 44
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    .line 45
    new-instance v0, Lorg/apache/cordova/CordovaDialogsHelper;

    iget-object v1, p1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkCordovaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/cordova/CordovaDialogsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    .line 46
    return-void
.end method


# virtual methods
.method public onJavascriptModalDialog(Lorg/xwalk/core/XWalkView;Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "type"    # Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "result"    # Lorg/xwalk/core/XWalkJavascriptResult;

    .prologue
    .line 51
    sget-object v0, Lorg/crosswalk/engine/XWalkCordovaUiClient$5;->$SwitchMap$org$xwalk$core$XWalkUIClient$JavascriptMessageType:[I

    invoke-virtual {p2}, Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    sget-boolean v0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :pswitch_0
    invoke-virtual {p0, p1, p3, p4, p6}, Lorg/crosswalk/engine/XWalkCordovaUiClient;->onJsAlert(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 55
    :pswitch_1
    invoke-virtual {p0, p1, p3, p4, p6}, Lorg/crosswalk/engine/XWalkCordovaUiClient;->onJsConfirm(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 57
    invoke-virtual/range {v0 .. v5}, Lorg/crosswalk/engine/XWalkCordovaUiClient;->onJsPrompt(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z

    move-result v0

    goto :goto_0

    .line 60
    :pswitch_3
    invoke-virtual {p0, p1, p3, p4, p6}, Lorg/crosswalk/engine/XWalkCordovaUiClient;->onJsConfirm(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z

    move-result v0

    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onJsAlert(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
    .locals 2
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/XWalkJavascriptResult;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    new-instance v1, Lorg/crosswalk/engine/XWalkCordovaUiClient$1;

    invoke-direct {v1, p0, p4}, Lorg/crosswalk/engine/XWalkCordovaUiClient$1;-><init>(Lorg/crosswalk/engine/XWalkCordovaUiClient;Lorg/xwalk/core/XWalkJavascriptResult;)V

    invoke-virtual {v0, p3, v1}, Lorg/apache/cordova/CordovaDialogsHelper;->showAlert(Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
    .locals 2
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/XWalkJavascriptResult;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    new-instance v1, Lorg/crosswalk/engine/XWalkCordovaUiClient$2;

    invoke-direct {v1, p0, p4}, Lorg/crosswalk/engine/XWalkCordovaUiClient$2;-><init>(Lorg/crosswalk/engine/XWalkCordovaUiClient;Lorg/xwalk/core/XWalkJavascriptResult;)V

    invoke-virtual {v0, p3, v1}, Lorg/apache/cordova/CordovaDialogsHelper;->showConfirm(Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
    .locals 3
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lorg/xwalk/core/XWalkJavascriptResult;

    .prologue
    .line 115
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    invoke-virtual {v1, p2, p3, p4}, Lorg/apache/cordova/CordovaBridge;->promptOnJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "handledRet":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 117
    invoke-interface {p5, v0}, Lorg/xwalk/core/XWalkJavascriptResult;->confirmWithResult(Ljava/lang/String;)V

    .line 131
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 119
    :cond_0
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    new-instance v2, Lorg/crosswalk/engine/XWalkCordovaUiClient$3;

    invoke-direct {v2, p0, p5}, Lorg/crosswalk/engine/XWalkCordovaUiClient$3;-><init>(Lorg/crosswalk/engine/XWalkCordovaUiClient;Lorg/xwalk/core/XWalkJavascriptResult;)V

    invoke-virtual {v1, p3, p4, v2}, Lorg/apache/cordova/CordovaDialogsHelper;->showPrompt(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    goto :goto_0
.end method

.method public onPageLoadStarted(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v0, p2}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onPageStarted(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaBridge;->reset()V

    .line 152
    :cond_0
    return-void
.end method

.method public onPageLoadStopped(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Lorg/xwalk/core/XWalkUIClient$LoadStatus;)V
    .locals 3
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lorg/xwalk/core/XWalkUIClient$LoadStatus;

    .prologue
    .line 164
    const-string v0, "XWalkCordovaUiClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lorg/xwalk/core/XWalkUIClient$LoadStatus;->FINISHED:Lorg/xwalk/core/XWalkUIClient$LoadStatus;

    if-ne p3, v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v0, p2}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onPageFinishedLoading(Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-object v0, Lorg/xwalk/core/XWalkUIClient$LoadStatus;->FAILED:Lorg/xwalk/core/XWalkUIClient$LoadStatus;

    if-ne p3, v0, :cond_0

    goto :goto_0
.end method

.method public openFileChooser(Lorg/xwalk/core/XWalkView;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p3, "acceptType"    # Ljava/lang/String;
    .param p4, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/XWalkView;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    .local p2, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    new-instance v1, Lorg/crosswalk/engine/XWalkCordovaUiClient$4;

    invoke-direct {v1, p0}, Lorg/crosswalk/engine/XWalkCordovaUiClient$4;-><init>(Lorg/crosswalk/engine/XWalkCordovaUiClient;)V

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 184
    return-void
.end method
