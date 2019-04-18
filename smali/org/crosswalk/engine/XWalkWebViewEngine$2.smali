.class Lorg/crosswalk/engine/XWalkWebViewEngine$2;
.super Ljava/lang/Object;
.source "XWalkWebViewEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkWebViewEngine;-><init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;


# direct methods
.method constructor <init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 0
    .param p1, "this$0"    # Lorg/crosswalk/engine/XWalkWebViewEngine;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    new-instance v1, Lorg/crosswalk/engine/XWalkCordovaCookieManager;

    invoke-direct {v1}, Lorg/crosswalk/engine/XWalkCordovaCookieManager;-><init>()V

    iput-object v1, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->cookieManager:Lorg/crosswalk/engine/XWalkCordovaCookieManager;

    .line 80
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    invoke-static {v0}, Lorg/crosswalk/engine/XWalkWebViewEngine;->access$000(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 81
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    invoke-static {v0, v1}, Lorg/crosswalk/engine/XWalkWebViewEngine;->access$100(Lorg/xwalk/core/XWalkView;Lorg/apache/cordova/CordovaBridge;)V

    .line 84
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    const-string v1, "onXWalkReady"

    invoke-virtual {v0, v1, p0}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->startUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->startUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/crosswalk/engine/XWalkCordovaView;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    return-void
.end method
