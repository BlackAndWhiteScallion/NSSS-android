.class Lorg/xwalk/core/XWalkUpdater$ForegroundListener;
.super Ljava/lang/Object;
.source "XWalkUpdater.java"

# interfaces
.implements Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/XWalkUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForegroundListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/XWalkUpdater;


# direct methods
.method private constructor <init>(Lorg/xwalk/core/XWalkUpdater;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xwalk/core/XWalkUpdater;Lorg/xwalk/core/XWalkUpdater$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/xwalk/core/XWalkUpdater;
    .param p2, "x1"    # Lorg/xwalk/core/XWalkUpdater$1;

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;-><init>(Lorg/xwalk/core/XWalkUpdater;)V

    return-void
.end method


# virtual methods
.method public onDownloadCancelled()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$100(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;->onXWalkUpdateCancelled()V

    .line 457
    return-void
.end method

.method public onDownloadCompleted(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 467
    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v1}, Lorg/xwalk/core/XWalkUpdater;->access$400(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkDialogManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 469
    const-string v1, "XWalkLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Install the Crosswalk runtime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, "install":Landroid/content/Intent;
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v1}, Lorg/xwalk/core/XWalkUpdater;->access$700(Lorg/xwalk/core/XWalkUpdater;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 473
    return-void
.end method

.method public onDownloadFailed(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "error"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$400(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 462
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$400(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkDialogManager;

    move-result-object v0

    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v1}, Lorg/xwalk/core/XWalkUpdater;->access$500(Lorg/xwalk/core/XWalkUpdater;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v2}, Lorg/xwalk/core/XWalkUpdater;->access$600(Lorg/xwalk/core/XWalkUpdater;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/xwalk/core/XWalkDialogManager;->showDownloadError(IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method public onDownloadStarted()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$400(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkDialogManager;

    move-result-object v0

    new-instance v1, Lorg/xwalk/core/XWalkUpdater$ForegroundListener$1;

    invoke-direct {v1, p0}, Lorg/xwalk/core/XWalkUpdater$ForegroundListener$1;-><init>(Lorg/xwalk/core/XWalkUpdater$ForegroundListener;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkDialogManager;->showDownloadProgress(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method public onDownloadUpdated(I)V
    .locals 2
    .param p1, "percentage"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$400(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkDialogManager;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lorg/xwalk/core/XWalkDialogManager;->setProgress(II)V

    .line 452
    return-void
.end method
