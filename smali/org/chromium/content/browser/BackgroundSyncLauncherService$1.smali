.class Lorg/chromium/content/browser/BackgroundSyncLauncherService$1;
.super Ljava/lang/Object;
.source "BackgroundSyncLauncherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BackgroundSyncLauncherService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/BackgroundSyncLauncherService;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/BackgroundSyncLauncherService;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncLauncherService$1;->this$0:Lorg/chromium/content/browser/BackgroundSyncLauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncLauncherService$1;->this$0:Lorg/chromium/content/browser/BackgroundSyncLauncherService;

    iget-object v1, p0, Lorg/chromium/content/browser/BackgroundSyncLauncherService$1;->this$0:Lorg/chromium/content/browser/BackgroundSyncLauncherService;

    invoke-virtual {v1}, Lorg/chromium/content/browser/BackgroundSyncLauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/BackgroundSyncLauncherService;->access$000(Lorg/chromium/content/browser/BackgroundSyncLauncherService;Landroid/content/Context;)V

    .line 73
    return-void
.end method
