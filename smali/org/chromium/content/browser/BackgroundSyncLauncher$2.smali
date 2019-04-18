.class Lorg/chromium/content/browser/BackgroundSyncLauncher$2;
.super Landroid/os/AsyncTask;
.source "BackgroundSyncLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BackgroundSyncLauncher;->setLaunchWhenNextOnline(Landroid/content/Context;Z)V
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
.field final synthetic this$0:Lorg/chromium/content/browser/BackgroundSyncLauncher;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shouldLaunch:Z


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/BackgroundSyncLauncher;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncLauncher$2;->this$0:Lorg/chromium/content/browser/BackgroundSyncLauncher;

    iput-object p2, p0, Lorg/chromium/content/browser/BackgroundSyncLauncher$2;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lorg/chromium/content/browser/BackgroundSyncLauncher$2;->val$shouldLaunch:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/BackgroundSyncLauncher$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 97
    iget-object v1, p0, Lorg/chromium/content/browser/BackgroundSyncLauncher$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bgsync_launch_next_online"

    iget-boolean v3, p0, Lorg/chromium/content/browser/BackgroundSyncLauncher$2;->val$shouldLaunch:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    const/4 v1, 0x0

    return-object v1
.end method
