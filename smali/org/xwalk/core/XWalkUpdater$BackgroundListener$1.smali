.class Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;
.super Landroid/os/AsyncTask;
.source "XWalkUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->onDownloadCompleted(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

.field final synthetic val$libFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkUpdater$BackgroundListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    iput-object p2, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$libFile:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 505
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 508
    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    iget-object v1, v1, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v1}, Lorg/xwalk/core/XWalkUpdater;->access$700(Lorg/xwalk/core/XWalkUpdater;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "extracted_xwalkcore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "destDir":Ljava/lang/String;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    iget-object v1, v1, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$libFile:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/xwalk/core/XWalkUpdater;->access$1000(Lorg/xwalk/core/XWalkUpdater;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljunit/framework/Assert;->fail()V

    .line 511
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    iget-object v1, v1, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$libFile:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/xwalk/core/XWalkUpdater;->access$1100(Lorg/xwalk/core/XWalkUpdater;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    iget-object v1, v1, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$libFile:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/xwalk/core/XWalkUpdater;->access$1200(Lorg/xwalk/core/XWalkUpdater;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 513
    invoke-static {}, Ljunit/framework/Assert;->fail()V

    .line 515
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    iget-object v1, v1, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v1}, Lorg/xwalk/core/XWalkUpdater;->access$700(Lorg/xwalk/core/XWalkUpdater;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->resetXWalkRuntimeBuildVersion(Landroid/content/Context;)V

    .line 516
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 505
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 521
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    iget-object v0, v0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$900(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;->onXWalkUpdateCompleted()V

    .line 522
    return-void
.end method
