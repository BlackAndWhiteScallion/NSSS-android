.class Lorg/chromium/content/browser/BackgroundSyncLauncherService$2;
.super Ljava/lang/Object;
.source "BackgroundSyncLauncherService.java"

# interfaces
.implements Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BackgroundSyncLauncherService;->onOnline(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/BackgroundSyncLauncherService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/BackgroundSyncLauncherService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncLauncherService$2;->this$0:Lorg/chromium/content/browser/BackgroundSyncLauncherService;

    iput-object p2, p0, Lorg/chromium/content/browser/BackgroundSyncLauncherService$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "shouldLaunch"    # Ljava/lang/Boolean;

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "cr.BgSyncLauncher"

    const-string v1, "Starting Browser after coming online"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncLauncherService$2;->this$0:Lorg/chromium/content/browser/BackgroundSyncLauncherService;

    iget-object v1, p0, Lorg/chromium/content/browser/BackgroundSyncLauncherService$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/chromium/content/browser/BackgroundSyncLauncherService;->access$100(Lorg/chromium/content/browser/BackgroundSyncLauncherService;Landroid/content/Context;)V

    goto :goto_0
.end method
