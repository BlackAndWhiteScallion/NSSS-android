.class public Lorg/chromium/content/browser/BackgroundSyncLauncher;
.super Ljava/lang/Object;
.source "BackgroundSyncLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final PREF_BACKGROUND_SYNC_LAUNCH_NEXT_ONLINE:Ljava/lang/String; = "bgsync_launch_next_online"

.field private static sInstance:Lorg/chromium/content/browser/BackgroundSyncLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/content/browser/BackgroundSyncLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/BackgroundSyncLauncher;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/BackgroundSyncLauncher;->setLaunchWhenNextOnline(Landroid/content/Context;Z)V

    .line 116
    return-void
.end method

.method protected static create(Landroid/content/Context;)Lorg/chromium/content/browser/BackgroundSyncLauncher;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lorg/chromium/content/browser/BackgroundSyncLauncher;->sInstance:Lorg/chromium/content/browser/BackgroundSyncLauncher;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/BackgroundSyncLauncher;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/BackgroundSyncLauncher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/content/browser/BackgroundSyncLauncher;->sInstance:Lorg/chromium/content/browser/BackgroundSyncLauncher;

    .line 43
    sget-object v0, Lorg/chromium/content/browser/BackgroundSyncLauncher;->sInstance:Lorg/chromium/content/browser/BackgroundSyncLauncher;

    return-object v0
.end method

.method protected static hasInstance()Z
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/chromium/content/browser/BackgroundSyncLauncher;->sInstance:Lorg/chromium/content/browser/BackgroundSyncLauncher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static shouldLaunchWhenNextOnline(Landroid/content/Context;Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;

    .prologue
    .line 71
    new-instance v0, Lorg/chromium/content/browser/BackgroundSyncLauncher$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/BackgroundSyncLauncher$1;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BackgroundSyncLauncher$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 52
    sget-boolean v0, Lorg/chromium/content/browser/BackgroundSyncLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/BackgroundSyncLauncher;->sInstance:Lorg/chromium/content/browser/BackgroundSyncLauncher;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/browser/BackgroundSyncLauncher;->sInstance:Lorg/chromium/content/browser/BackgroundSyncLauncher;

    .line 54
    return-void
.end method

.method protected setLaunchWhenNextOnline(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shouldLaunch"    # Z
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lorg/chromium/content/browser/BackgroundSyncLauncher$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/BackgroundSyncLauncher$2;-><init>(Lorg/chromium/content/browser/BackgroundSyncLauncher;Landroid/content/Context;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BackgroundSyncLauncher$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    return-void
.end method
