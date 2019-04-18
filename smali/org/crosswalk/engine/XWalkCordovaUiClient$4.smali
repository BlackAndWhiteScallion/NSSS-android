.class Lorg/crosswalk/engine/XWalkCordovaUiClient$4;
.super Lorg/apache/cordova/CordovaPlugin;
.source "XWalkCordovaUiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkCordovaUiClient;->openFileChooser(Lorg/xwalk/core/XWalkView;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/crosswalk/engine/XWalkCordovaUiClient;


# direct methods
.method constructor <init>(Lorg/crosswalk/engine/XWalkCordovaUiClient;)V
    .locals 0
    .param p1, "this$0"    # Lorg/crosswalk/engine/XWalkCordovaUiClient;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient$4;->this$0:Lorg/crosswalk/engine/XWalkCordovaUiClient;

    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient$4;->this$0:Lorg/crosswalk/engine/XWalkCordovaUiClient;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/crosswalk/engine/XWalkCordovaView;->onActivityResult(IILandroid/content/Intent;)V

    .line 182
    return-void
.end method
