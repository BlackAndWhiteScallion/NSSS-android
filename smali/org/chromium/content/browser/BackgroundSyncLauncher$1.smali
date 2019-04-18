.class final Lorg/chromium/content/browser/BackgroundSyncLauncher$1;
.super Landroid/os/AsyncTask;
.source "BackgroundSyncLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BackgroundSyncLauncher;->shouldLaunchWhenNextOnline(Landroid/content/Context;Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncLauncher$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/content/browser/BackgroundSyncLauncher$1;->val$callback:Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 74
    iget-object v1, p0, Lorg/chromium/content/browser/BackgroundSyncLauncher$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "bgsync_launch_next_online"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/BackgroundSyncLauncher$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "shouldLaunch"    # Ljava/lang/Boolean;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncLauncher$1;->val$callback:Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/BackgroundSyncLauncher$ShouldLaunchCallback;->run(Ljava/lang/Boolean;)V

    .line 80
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/BackgroundSyncLauncher$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
