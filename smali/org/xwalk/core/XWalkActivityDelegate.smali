.class public Lorg/xwalk/core/XWalkActivityDelegate;
.super Ljava/lang/Object;
.source "XWalkActivityDelegate.java"

# interfaces
.implements Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;
.implements Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;


# static fields
.field private static final META_XWALK_ENABLE_DOWNLOAD_MODE:Ljava/lang/String; = "xwalk_enable_download_mode"

.field private static final TAG:Ljava/lang/String; = "XWalkActivity"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackgroundDecorated:Z

.field private mCancelCommand:Ljava/lang/Runnable;

.field private mCompleteCommand:Ljava/lang/Runnable;

.field private mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

.field private final mIsDownloadMode:Z

.field private mIsInitializing:Z

.field private mIsXWalkReady:Z

.field private mWillDecompress:Z

.field private mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cancelCommand"    # Ljava/lang/Runnable;
    .param p3, "completeCommand"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCancelCommand:Ljava/lang/Runnable;

    .line 40
    iput-object p3, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCompleteCommand:Ljava/lang/Runnable;

    .line 41
    invoke-direct {p0}, Lorg/xwalk/core/XWalkActivityDelegate;->isDownloadModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsDownloadMode:Z

    .line 43
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsDownloadMode:Z

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lorg/xwalk/core/XWalkUpdater;

    new-instance v1, Lorg/xwalk/core/XWalkActivityDelegate$1;

    invoke-direct {v1, p0}, Lorg/xwalk/core/XWalkActivityDelegate$1;-><init>(Lorg/xwalk/core/XWalkActivityDelegate;)V

    iget-object v2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/XWalkUpdater;-><init>(Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    .line 82
    :goto_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->prepareToInit(Landroid/app/Activity;)V

    .line 83
    return-void

    .line 71
    :cond_0
    new-instance v0, Lorg/xwalk/core/XWalkDialogManager;

    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/xwalk/core/XWalkDialogManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    .line 72
    new-instance v0, Lorg/xwalk/core/XWalkUpdater;

    new-instance v1, Lorg/xwalk/core/XWalkActivityDelegate$2;

    invoke-direct {v1, p0}, Lorg/xwalk/core/XWalkActivityDelegate$2;-><init>(Lorg/xwalk/core/XWalkActivityDelegate;)V

    iget-object v2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-direct {v0, v1, v2, v3}, Lorg/xwalk/core/XWalkUpdater;-><init>(Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;Landroid/app/Activity;Lorg/xwalk/core/XWalkDialogManager;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/xwalk/core/XWalkActivityDelegate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkActivityDelegate;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCancelCommand:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/XWalkActivityDelegate;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkActivityDelegate;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private isDownloadModeEnabled()Z
    .locals 5

    .prologue
    .line 184
    :try_start_0
    iget-object v2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 186
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "xwalk_enable_download_mode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "enableStr":Ljava/lang/String;
    const-string v2, "enable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 190
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "enableStr":Ljava/lang/String;
    :goto_0
    return v2

    .line 188
    :catch_0
    move-exception v2

    .line 190
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 188
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public isDownloadMode()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsDownloadMode:Z

    return v0
.end method

.method public isSharedMode()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isSharedLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isXWalkReady()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    return v0
.end method

.method public onActivateCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 171
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mBackgroundDecorated:Z

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "XWalkActivity"

    const-string v1, "Recover the background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iput-boolean v2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mBackgroundDecorated:Z

    .line 177
    :cond_1
    iput-boolean v2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    .line 179
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCompleteCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 180
    return-void
.end method

.method public onActivateFailed()V
    .locals 3

    .prologue
    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    .line 153
    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkUpdater;->updateXWalkRuntime()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsDownloadMode:Z

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 157
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 158
    const-string v1, "XWalkActivity"

    const-string v2, "Set the background to screen_background_dark"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const v1, 0x1080098

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mBackgroundDecorated:Z

    .line 163
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public onActivateStarted()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onDecompressCancelled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 129
    iput-boolean v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    .line 131
    iput-boolean v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    .line 132
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCancelCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 133
    return-void
.end method

.method public onDecompressCompleted()V
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V

    .line 143
    return-void
.end method

.method public onDecompressStarted()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    new-instance v1, Lorg/xwalk/core/XWalkActivityDelegate$3;

    invoke-direct {v1, p0}, Lorg/xwalk/core/XWalkActivityDelegate$3;-><init>(Lorg/xwalk/core/XWalkActivityDelegate;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkDialogManager;->showDecompressProgress(Ljava/lang/Runnable;)V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    .line 105
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isLibraryReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    const-string v0, "XWalkActivity"

    const-string v1, "Activate by XWalkActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "XWalkActivity"

    const-string v1, "Initialize by XWalkActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startDecompress(Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setXWalkApkUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/XWalkUpdater;->setXWalkApkUrl(Ljava/lang/String;)V

    .line 99
    return-void
.end method
