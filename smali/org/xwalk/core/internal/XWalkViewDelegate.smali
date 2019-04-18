.class Lorg/xwalk/core/internal/XWalkViewDelegate;
.super Ljava/lang/Object;
.source "XWalkViewDelegate.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation


# static fields
.field private static final COMMAND_LINE_FILE:Ljava/lang/String; = "xwalk-command-line"

.field private static final MANDATORY_LIBRARIES:[Ljava/lang/String;

.field private static final MANDATORY_PAKS:[Ljava/lang/String;

.field private static final META_XWALK_ENABLE_DOWNLOAD_MODE:Ljava/lang/String; = "xwalk_enable_download_mode"

.field private static final PRIVATE_DATA_DIRECTORY_SUFFIX:Ljava/lang/String; = "xwalkcore"

.field private static final TAG:Ljava/lang/String; = "XWalkViewDelegate"

.field private static final XWALK_CORE_EXTRACTED_DIR:Ljava/lang/String; = "extracted_xwalkcore"

.field private static final XWALK_PAK_NAME:Ljava/lang/String; = "xwalk.pak"

.field private static final XWALK_RESOURCES_LIST_RES_NAME:Ljava/lang/String; = "xwalk_resources_list"

.field private static sInitialized:Z

.field private static sLibraryLoaded:Z

.field private static sLoadedByHoudini:Z

.field private static sRunningOnIA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sInitialized:Z

    .line 46
    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLibraryLoaded:Z

    .line 47
    sput-boolean v6, Lorg/xwalk/core/internal/XWalkViewDelegate;->sRunningOnIA:Z

    .line 48
    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLoadedByHoudini:Z

    .line 55
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "xwalk.pak"

    aput-object v8, v7, v5

    const-string v8, "icudtl.dat"

    aput-object v8, v7, v6

    sput-object v7, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_PAKS:[Ljava/lang/String;

    .line 64
    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "xwalkcore"

    aput-object v8, v7, v5

    sput-object v7, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    .line 318
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v8, "x86"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v8, "x86_64"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v5, v6

    :cond_1
    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sRunningOnIA:Z

    .line 319
    sget-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sRunningOnIA:Z

    if-nez v5, :cond_2

    .line 324
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "getprop ro.product.cpu.abi"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 325
    .local v4, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 326
    .local v3, "ir":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 327
    .local v2, "input":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "abi":Ljava/lang/String;
    const-string v5, "x86"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sRunningOnIA:Z

    .line 329
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 330
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    :cond_2
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "XWalkViewDelegate"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewDelegate;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 304
    .local v0, "resourceId":I
    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 308
    :cond_0
    return v0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkViewDelegate;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v0, "xwalkcore"

    invoke-static {v0, p0}, Lorg/chromium/base/PathUtils;->setPrivateDataDirectorySuffix(Ljava/lang/String;Landroid/content/Context;)V

    .line 160
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkInternalResources;->resetIds(Landroid/content/Context;)V

    .line 166
    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkViewDelegate;->readCommandLine(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    .line 170
    :cond_1
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkViewDelegate;->setupResourceInterceptor(Landroid/content/Context;)V

    .line 174
    invoke-static {p0}, Lorg/chromium/base/ResourceExtractor;->get(Landroid/content/Context;)Lorg/chromium/base/ResourceExtractor;

    .line 176
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkViewDelegate;->startBrowserProcess(Landroid/content/Context;)V

    .line 177
    const/4 v0, 0x1

    sput-boolean v0, Lorg/xwalk/core/internal/XWalkViewDelegate;->sInitialized:Z

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2
    .param p0, "libContext"    # Landroid/content/Context;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/xwalk/core/internal/XWalkViewDelegate;->loadXWalkLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljunit/framework/Assert;->fail()V

    .line 106
    :cond_0
    if-nez p0, :cond_1

    .line 107
    :try_start_0
    invoke-static {p1}, Lorg/xwalk/core/internal/XWalkViewDelegate;->init(Landroid/content/Context;)V

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v1, Lorg/xwalk/core/internal/MixedContext;

    invoke-direct {v1, p0, p1}, Lorg/xwalk/core/internal/MixedContext;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkViewDelegate;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isDownloadModeEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 212
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 214
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "xwalk_enable_download_mode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "enableStr":Ljava/lang/String;
    const-string v3, "enable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 218
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "enableStr":Ljava/lang/String;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 216
    :catch_0
    move-exception v3

    .line 218
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 216
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static isRunningOnIA()Z
    .locals 1

    .prologue
    .line 312
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkViewDelegate;->sRunningOnIA:Z

    return v0
.end method

.method public static loadXWalkLibrary(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/xwalk/core/internal/XWalkViewDelegate;->loadXWalkLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static loadXWalkLibrary(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 124
    sget-boolean v6, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLibraryLoaded:Z

    if-eqz v6, :cond_0

    .line 151
    :goto_0
    return v5

    .line 126
    :cond_0
    if-eqz p1, :cond_1

    sget-boolean v6, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLoadedByHoudini:Z

    if-nez v6, :cond_1

    .line 127
    sget-object v0, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 128
    .local v3, "library":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "library":Ljava/lang/String;
    :cond_1
    sget-object v0, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 132
    .restart local v3    # "library":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 139
    .end local v3    # "library":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    :try_start_0
    invoke-static {v6}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v4

    .line 140
    .local v4, "libraryLoader":Lorg/chromium/base/library_loader/LibraryLoader;
    invoke-virtual {v4, p0}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v4    # "libraryLoader":Lorg/chromium/base/library_loader/LibraryLoader;
    :goto_3
    sget-boolean v6, Lorg/xwalk/core/internal/XWalkViewDelegate;->sRunningOnIA:Z

    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewDelegate;->nativeIsLibraryBuiltForIA()Z

    move-result v7

    if-eq v6, v7, :cond_3

    .line 146
    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLoadedByHoudini:Z

    .line 147
    const/4 v5, 0x0

    goto :goto_0

    .line 150
    :cond_3
    sput-boolean v5, Lorg/xwalk/core/internal/XWalkViewDelegate;->sLibraryLoaded:Z

    goto :goto_0

    .line 141
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method private static native nativeIsLibraryBuiltForIA()Z
.end method

.method private static readCommandLine(Landroid/content/Context;)[Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v5, 0x0

    .line 77
    .local v5, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "xwalk-command-line"

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 80
    .local v3, "input":Ljava/io/InputStream;
    const/16 v7, 0x400

    .line 81
    .local v7, "size":I
    new-array v0, v7, [C

    .line 82
    .local v0, "buffer":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v6, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .local v6, "reader":Ljava/io/InputStreamReader;
    :goto_0
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v6, v0, v8, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    .local v4, "length":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 86
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 91
    .end local v4    # "length":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 92
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .end local v7    # "size":I
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :goto_1
    const/4 v8, 0x0

    .line 95
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 98
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v8

    .line 89
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "size":I
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v8}, Lorg/chromium/base/CommandLine;->tokenizeQuotedAruments([C)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 95
    if-eqz v6, :cond_2

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    move-object v5, v6

    .line 98
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 96
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 97
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "XWalkViewDelegate"

    const-string v10, "Unable to close file reader."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 96
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .end local v7    # "size":I
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v2

    .line 97
    const-string v9, "XWalkViewDelegate"

    const-string v10, "Unable to close file reader."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 94
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 95
    :goto_4
    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 98
    :cond_3
    :goto_5
    throw v8

    .line 96
    :catch_3
    move-exception v2

    .line 97
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "XWalkViewDelegate"

    const-string v10, "Unable to close file reader."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 94
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "size":I
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 91
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v7    # "size":I
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private static setupResourceInterceptor(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 230
    .local v2, "isSharedMode":Z
    :goto_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkViewDelegate;->isDownloadModeEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 236
    .local v5, "isDownloadMode":Z
    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v4, "xwalk.pak"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 239
    .local v3, "isTestApk":Z
    :goto_1
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v12, "resourceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/chromium/base/ResourceExtractor$ResourceEntry;>;"
    :try_start_0
    const-string v0, "xwalk_resources_list"

    const-string v4, "array"

    invoke-static {p0, v0, v4}, Lorg/xwalk/core/internal/XWalkViewDelegate;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 242
    .local v13, "resourceListId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "crosswalkResources":[Ljava/lang/String;
    move-object v6, v7

    .local v6, "arr$":[Ljava/lang/String;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v10, :cond_2

    aget-object v11, v6, v9

    .line 244
    .local v11, "resource":Ljava/lang/String;
    new-instance v0, Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    const/4 v4, 0x0

    const-string v14, ""

    invoke-direct {v0, v4, v14, v11}, Lorg/chromium/base/ResourceExtractor$ResourceEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 228
    .end local v2    # "isSharedMode":Z
    .end local v3    # "isTestApk":Z
    .end local v5    # "isDownloadMode":Z
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v7    # "crosswalkResources":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "resource":Ljava/lang/String;
    .end local v12    # "resourceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/chromium/base/ResourceExtractor$ResourceEntry;>;"
    .end local v13    # "resourceListId":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 236
    .restart local v2    # "isSharedMode":Z
    .restart local v5    # "isDownloadMode":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 246
    .restart local v3    # "isTestApk":Z
    .restart local v12    # "resourceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/chromium/base/ResourceExtractor$ResourceEntry;>;"
    :catch_0
    move-exception v8

    .line 247
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v6, Lorg/xwalk/core/internal/XWalkViewDelegate;->MANDATORY_PAKS:[Ljava/lang/String;

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v10, v6

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_3
    if-ge v9, v10, :cond_2

    aget-object v11, v6, v9

    .line 248
    .restart local v11    # "resource":Ljava/lang/String;
    new-instance v0, Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    const/4 v4, 0x0

    const-string v14, ""

    invoke-direct {v0, v4, v14, v11}, Lorg/chromium/base/ResourceExtractor$ResourceEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 251
    .end local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v11    # "resource":Ljava/lang/String;
    :cond_2
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor;->setResourcesToExtract([Lorg/chromium/base/ResourceExtractor$ResourceEntry;)V

    .line 255
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 259
    .local v1, "interceptableResources":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkViewDelegate$2;-><init>(Ljava/util/HashSet;ZZLandroid/content/Context;Z)V

    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor;->setResourceInterceptor(Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;)V

    .line 293
    return-void
.end method

.method private static startBrowserProcess(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    new-instance v0, Lorg/xwalk/core/internal/XWalkViewDelegate$1;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkViewDelegate$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method
