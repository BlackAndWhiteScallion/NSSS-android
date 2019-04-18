.class public Lorg/chromium/content/browser/BackgroundSyncLauncherService;
.super Landroid/app/IntentService;
.source "BackgroundSyncLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/BackgroundSyncLauncherService$Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cr.BgSyncLauncher"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "BackgroundSyncLauncherService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/BackgroundSyncLauncherService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BackgroundSyncLauncherService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BackgroundSyncLauncherService;->onOnline(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/BackgroundSyncLauncherService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BackgroundSyncLauncherService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BackgroundSyncLauncherService;->launchBrowser(Landroid/content/Context;)V

    return-void
.end method

.method private launchBrowser(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "DM_EXIT"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-static {p1}, Lorg/chromium/content/app/ContentApplication;->initCommandLine(Landroid/content/Context;)V

    .line 104
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/BrowserStartupController;->startBrowserProcessesSync(Z)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/chromium/base/library_loader/ProcessInitException;
    const-string v1, "cr.BgSyncLauncher"

    const-string v2, "ProcessInitException while starting the browser process"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private onOnline(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 83
    new-instance v0, Lorg/chromium/content/browser/BackgroundSyncLauncherService$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/BackgroundSyncLauncherService$2;-><init>(Lorg/chromium/content/browser/BackgroundSyncLauncherService;Landroid/content/Context;)V

    .line 97
    .local v0, "callback":Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;
    invoke-static {p1, v0}, Lorg/chromium/content/browser/BackgroundSyncLauncher;->shouldLaunchWhenNextOnline(Landroid/content/Context;Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;)V

    .line 98
    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    :try_start_0
    new-instance v0, Lorg/chromium/content/browser/BackgroundSyncLauncherService$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/BackgroundSyncLauncherService$1;-><init>(Lorg/chromium/content/browser/BackgroundSyncLauncherService;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 78
    return-void

    .line 76
    :catchall_0
    move-exception v0

    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    throw v0
.end method
