.class Lorg/crosswalk/engine/XWalkCordovaUiClient$3;
.super Ljava/lang/Object;
.source "XWalkCordovaUiClient.java"

# interfaces
.implements Lorg/apache/cordova/CordovaDialogsHelper$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkCordovaUiClient;->onJsPrompt(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/crosswalk/engine/XWalkCordovaUiClient;

.field final synthetic val$result:Lorg/xwalk/core/XWalkJavascriptResult;


# direct methods
.method constructor <init>(Lorg/crosswalk/engine/XWalkCordovaUiClient;Lorg/xwalk/core/XWalkJavascriptResult;)V
    .locals 0
    .param p1, "this$0"    # Lorg/crosswalk/engine/XWalkCordovaUiClient;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient$3;->this$0:Lorg/crosswalk/engine/XWalkCordovaUiClient;

    iput-object p2, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient$3;->val$result:Lorg/xwalk/core/XWalkJavascriptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotResult(ZLjava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient$3;->val$result:Lorg/xwalk/core/XWalkJavascriptResult;

    invoke-interface {v0, p2}, Lorg/xwalk/core/XWalkJavascriptResult;->confirmWithResult(Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaUiClient$3;->val$result:Lorg/xwalk/core/XWalkJavascriptResult;

    invoke-interface {v0}, Lorg/xwalk/core/XWalkJavascriptResult;->cancel()V

    goto :goto_0
.end method
