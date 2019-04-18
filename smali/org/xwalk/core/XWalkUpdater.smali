.class public Lorg/xwalk/core/XWalkUpdater;
.super Ljava/lang/Object;
.source "XWalkUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkUpdater$DecompressTask;,
        Lorg/xwalk/core/XWalkUpdater$BackgroundListener;,
        Lorg/xwalk/core/XWalkUpdater$ForegroundListener;,
        Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;,
        Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;
    }
.end annotation


# static fields
.field private static final ARCH_QUERY_STRING:Ljava/lang/String; = "?arch="

.field private static final META_XWALK_APK_URL:Ljava/lang/String; = "xwalk_apk_url"

.field private static final META_XWALK_VERIFY:Ljava/lang/String; = "xwalk_verify"

.field private static final STREAM_BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "XWalkLib"

.field private static final XWALK_APK_MARKET_URL:Ljava/lang/String; = "market://details?id=org.xwalk.core"

.field private static final XWALK_CORE_EXTRACTED_DIR:Ljava/lang/String; = "extracted_xwalkcore"

.field private static final XWALK_LIB_RESOURCES:[Ljava/lang/String;

.field private static sAutoUpdateEnabled:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackgroundUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

.field private mCancelCommand:Ljava/lang/Runnable;

.field private mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

.field private mDownloadCommand:Ljava/lang/Runnable;

.field private mIsDownloading:Z

.field private mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

.field private mXWalkApkUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 254
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "libxwalkcore.so"

    aput-object v2, v0, v1

    const-string v1, "classes.dex"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "icudtl.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "xwalk.pak"

    aput-object v2, v0, v1

    sput-object v0, Lorg/xwalk/core/XWalkUpdater;->XWALK_LIB_RESOURCES:[Ljava/lang/String;

    .line 264
    sput-boolean v3, Lorg/xwalk/core/XWalkUpdater;->sAutoUpdateEnabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;Landroid/app/Activity;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater;->mBackgroundUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    .line 303
    iput-object p2, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    .line 304
    return-void
.end method

.method public constructor <init>(Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;Landroid/app/Activity;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater;->mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

    .line 283
    iput-object p2, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    .line 284
    new-instance v0, Lorg/xwalk/core/XWalkDialogManager;

    invoke-direct {v0, p2}, Lorg/xwalk/core/XWalkDialogManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    .line 285
    return-void
.end method

.method constructor <init>(Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;Landroid/app/Activity;Lorg/xwalk/core/XWalkDialogManager;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "dialogManager"    # Lorg/xwalk/core/XWalkDialogManager;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater;->mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

    .line 291
    iput-object p2, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    .line 292
    iput-object p3, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    .line 293
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/XWalkUpdater;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 204
    invoke-direct {p0}, Lorg/xwalk/core/XWalkUpdater;->downloadXWalkApk()V

    return-void
.end method

.method static synthetic access$100(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/xwalk/core/XWalkUpdater;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lorg/xwalk/core/XWalkUpdater;->verifyXWalkRuntimeLib(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/xwalk/core/XWalkUpdater;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/XWalkUpdater;->extractLibResources(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/xwalk/core/XWalkUpdater;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/XWalkUpdater;->extractCompressedLibResources(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkDialogManager;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    return-object v0
.end method

.method static synthetic access$500(Lorg/xwalk/core/XWalkUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mCancelCommand:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lorg/xwalk/core/XWalkUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDownloadCommand:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lorg/xwalk/core/XWalkUpdater;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$802(Lorg/xwalk/core/XWalkUpdater;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;
    .param p1, "x1"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lorg/xwalk/core/XWalkUpdater;->mIsDownloading:Z

    return p1
.end method

.method static synthetic access$900(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mBackgroundUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    return-object v0
.end method

.method private checkSignature(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)Z
    .locals 5
    .param p1, "runtimePackageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "appPackageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x0

    .line 539
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v2, :cond_2

    .line 540
    :cond_0
    const-string v2, "XWalkLib"

    const-string v3, "No signature in package info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_1
    :goto_0
    return v1

    .line 544
    :cond_2
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 545
    const-string v2, "XWalkLib"

    const-string v3, "signatures length not equal"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 550
    const-string v2, "XWalkLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking signature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 552
    const-string v2, "XWalkLib"

    const-string v3, "signatures do not match"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 555
    :cond_4
    const-string v1, "XWalkLib"

    const-string v2, "signature check PASSED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private downloadXWalkApk()V
    .locals 5

    .prologue
    .line 403
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 404
    invoke-direct {p0}, Lorg/xwalk/core/XWalkUpdater;->getXWalkApkUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    .line 405
    const-string v2, "XWalkLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crosswalk APK download URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    new-instance v2, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/xwalk/core/XWalkUpdater$ForegroundListener;-><init>(Lorg/xwalk/core/XWalkUpdater;Lorg/xwalk/core/XWalkUpdater$1;)V

    iget-object v3, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lorg/xwalk/core/XWalkLibraryLoader;->startDownload(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void

    .line 414
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    const-string v3, "market://details?id=org.xwalk.core"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 417
    const-string v2, "XWalkLib"

    const-string v3, "Market opened"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v2}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "XWalkLib"

    const-string v3, "Market open failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    iget-object v3, p0, Lorg/xwalk/core/XWalkUpdater;->mCancelCommand:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lorg/xwalk/core/XWalkDialogManager;->showMarketOpenError(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private downloadXWalkApkSilently()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 427
    invoke-direct {p0}, Lorg/xwalk/core/XWalkUpdater;->getXWalkApkUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    .line 428
    const-string v0, "XWalkLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crosswalk APK download URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    new-instance v0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;-><init>(Lorg/xwalk/core/XWalkUpdater;Lorg/xwalk/core/XWalkUpdater$1;)V

    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/XWalkLibraryLoader;->startDownload(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method private extractCompressedLibResources(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p1, "libFile"    # Ljava/lang/String;
    .param p2, "destDir"    # Ljava/lang/String;

    .prologue
    .line 691
    const/4 v15, 0x1

    .line 692
    .local v15, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 693
    .local v16, "startTime":J
    new-instance v18, Ljava/util/ArrayList;

    sget-object v2, Lorg/xwalk/core/XWalkUpdater;->XWALK_LIB_RESOURCES:[Ljava/lang/String;

    array-length v2, v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 695
    .local v18, "taskList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    sget-object v2, Lorg/xwalk/core/XWalkUpdater;->XWALK_LIB_RESOURCES:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v14

    .line 698
    .local v14, "pool":Ljava/util/concurrent/ExecutorService;
    sget-object v8, Lorg/xwalk/core/XWalkUpdater;->XWALK_LIB_RESOURCES:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v13, v8

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v7, v8, v12

    .line 699
    .local v7, "resource":Ljava/lang/String;
    new-instance v2, Lorg/xwalk/core/XWalkUpdater$DecompressTask;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".lzma"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/xwalk/core/XWalkUpdater$DecompressTask;-><init>(Lorg/xwalk/core/XWalkUpdater;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 704
    .end local v7    # "resource":Ljava/lang/String;
    :cond_0
    :try_start_0
    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v11

    .line 705
    .local v11, "futureList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/Future;

    .line 706
    .local v10, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-interface {v10}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 707
    if-nez v15, :cond_1

    .line 712
    .end local v10    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v11    # "futureList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 713
    const-string v2, "XWalkLib"

    const-string v3, "Time to extract compressed Apk: %d ms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return v15

    .line 709
    :catch_0
    move-exception v9

    .line 710
    .local v9, "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    goto :goto_1
.end method

.method private extractLibResources(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "libFile"    # Ljava/lang/String;
    .param p2, "destDir"    # Ljava/lang/String;

    .prologue
    .line 590
    const-string v13, "XWalkLib"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Extract from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 592
    .local v10, "startTime":J
    const/4 v9, 0x0

    .line 594
    .local v9, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v12, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .local v12, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    sget-object v2, Lorg/xwalk/core/XWalkUpdater;->XWALK_LIB_RESOURCES:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v8, v2, v6

    .line 596
    .local v8, "resource":Ljava/lang/String;
    const-string v5, ""

    .line 597
    .local v5, "entryDir":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/xwalk/core/XWalkUpdater;->isNativeLibrary(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 598
    sget-object v13, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v14, "armeabi"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 600
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lib"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "armeabi-v7a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 607
    :cond_0
    :goto_1
    const-string v13, "XWalkLib"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unzip "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 609
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v12, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v14, v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/xwalk/core/XWalkUpdater;->saveStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 595
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 602
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lib"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 604
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/xwalk/core/XWalkUpdater;->isAsset(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 605
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "assets"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    goto/16 :goto_1

    .line 616
    .end local v5    # "entryDir":Ljava/lang/String;
    .end local v8    # "resource":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    .line 620
    :goto_2
    const-string v13, "XWalkLib"

    const-string v14, "Time to extract Apk: %d ms"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v13, 0x1

    move-object v9, v12

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_3
    return v13

    .line 611
    :catch_0
    move-exception v13

    :goto_4
    move-object v3, v13

    .line 612
    .local v3, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_3
    const-string v13, "XWalkLib"

    const-string v14, "failed to extractLibResources"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 613
    const/4 v13, 0x0

    .line 616
    :try_start_4
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    .line 617
    :catch_1
    move-exception v14

    goto :goto_3

    .line 615
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 616
    :goto_6
    :try_start_5
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_7

    .line 618
    :goto_7
    throw v13

    .line 611
    :catch_2
    move-exception v13

    :goto_8
    move-object v3, v13

    goto :goto_5

    .line 617
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v13

    goto :goto_2

    :catch_4
    move-exception v13

    goto :goto_2

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v14

    goto :goto_3

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v14

    goto :goto_7

    :catch_7
    move-exception v14

    goto :goto_7

    .line 615
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v13

    move-object v9, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 611
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_8
    move-exception v13

    move-object v9, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_8

    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_9
    move-exception v13

    move-object v9, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method private getAppMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 529
    :try_start_0
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 530
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 532
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 535
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    .line 533
    :catch_0
    move-exception v2

    .line 535
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 533
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getAutoUpdate()Z
    .locals 1

    .prologue
    .line 396
    sget-boolean v0, Lorg/xwalk/core/XWalkUpdater;->sAutoUpdateEnabled:Z

    return v0
.end method

.method private getXWalkApkUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 434
    const-string v1, "xwalk_apk_url"

    invoke-direct {p0, v1}, Lorg/xwalk/core/XWalkUpdater;->getAppMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?arch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isAsset(Ljava/lang/String;)Z
    .locals 1
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 723
    const-string v0, ".dat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".pak"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNativeLibrary(Ljava/lang/String;)Z
    .locals 1
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 719
    const-string v0, ".so"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private saveStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 8
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    const-string v5, "XWalkLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Save to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v4, 0x0

    .line 733
    .local v4, "outputException":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 735
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    .local v3, "output":Ljava/io/FileOutputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v0, v5, [B

    .line 739
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .local v2, "len":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    .line 740
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 742
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 743
    .local v1, "e":Ljava/io/IOException;
    move-object v4, v1

    .line 747
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 761
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 766
    :goto_3
    if-eqz v4, :cond_4

    .line 767
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 768
    :cond_3
    throw v4

    .line 748
    :catch_1
    move-exception v1

    .line 749
    .restart local v1    # "e":Ljava/io/IOException;
    if-nez v4, :cond_1

    move-object v4, v1

    goto :goto_1

    .line 754
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 755
    .restart local v1    # "e":Ljava/io/IOException;
    if-nez v4, :cond_2

    move-object v4, v1

    goto :goto_2

    .line 757
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 758
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 760
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 761
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 763
    :goto_4
    throw v5

    .line 762
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    goto :goto_3

    .end local v3    # "output":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    goto :goto_4

    .line 770
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    :cond_4
    return-void
.end method

.method public static setAutoUpdate(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 388
    sput-boolean p0, Lorg/xwalk/core/XWalkUpdater;->sAutoUpdateEnabled:Z

    .line 389
    return-void
.end method

.method private verifyXWalkRuntimeLib(Ljava/lang/String;)Z
    .locals 8
    .param p1, "libFile"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x40

    const/4 v4, 0x0

    .line 563
    const-string v5, "xwalk_verify"

    invoke-direct {p0, v5}, Lorg/xwalk/core/XWalkUpdater;->getAppMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 564
    .local v3, "xwalkVerify":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "disable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 565
    const-string v4, "XWalkLib"

    const-string v5, "xwalk verify is disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v4, 0x1

    .line 586
    :goto_0
    return v4

    .line 571
    :cond_0
    iget-object v5, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 573
    .local v2, "runtimePkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 574
    const-string v5, "XWalkLib"

    const-string v6, "The downloaded XWalkRuntimeLib.apk is invalid!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    :cond_1
    const/4 v0, 0x0

    .line 579
    .local v0, "appPkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 586
    invoke-direct {p0, v2, v0}, Lorg/xwalk/core/XWalkUpdater;->checkSignature(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    goto :goto_0

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public cancelBackgroundDownload()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mBackgroundUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/XWalkUpdater;->mIsDownloading:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->cancelDownload()Z

    move-result v0

    goto :goto_0
.end method

.method public dismissDialog()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->isShowingDialog()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 360
    :goto_0
    return v0

    .line 359
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 360
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setXWalkApkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 370
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public updateXWalkRuntime()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    iget-boolean v3, p0, Lorg/xwalk/core/XWalkUpdater;->mIsDownloading:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v3}, Lorg/xwalk/core/XWalkDialogManager;->isShowingDialog()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 349
    :goto_0
    return v1

    .line 323
    :cond_1
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->getLibraryStatus()I

    move-result v0

    .line 324
    .local v0, "status":I
    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    move v1, v2

    .line 325
    goto :goto_0

    .line 327
    :cond_3
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

    if-eqz v2, :cond_4

    .line 328
    new-instance v2, Lorg/xwalk/core/XWalkUpdater$1;

    invoke-direct {v2, p0}, Lorg/xwalk/core/XWalkUpdater$1;-><init>(Lorg/xwalk/core/XWalkUpdater;)V

    iput-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mDownloadCommand:Ljava/lang/Runnable;

    .line 334
    new-instance v2, Lorg/xwalk/core/XWalkUpdater$2;

    invoke-direct {v2, p0}, Lorg/xwalk/core/XWalkUpdater$2;-><init>(Lorg/xwalk/core/XWalkUpdater;)V

    iput-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mCancelCommand:Ljava/lang/Runnable;

    .line 342
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    iget-object v3, p0, Lorg/xwalk/core/XWalkUpdater;->mCancelCommand:Ljava/lang/Runnable;

    iget-object v4, p0, Lorg/xwalk/core/XWalkUpdater;->mDownloadCommand:Ljava/lang/Runnable;

    invoke-virtual {v2, v0, v3, v4}, Lorg/xwalk/core/XWalkDialogManager;->showInitializationError(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 343
    :cond_4
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mBackgroundUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    if-eqz v2, :cond_5

    .line 344
    invoke-direct {p0}, Lorg/xwalk/core/XWalkUpdater;->downloadXWalkApkSilently()V

    goto :goto_0

    .line 346
    :cond_5
    invoke-static {}, Ljunit/framework/Assert;->fail()V

    goto :goto_0
.end method
