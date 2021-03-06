.class Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;
.super Landroid/os/AsyncTask;
.source "XWalkLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/XWalkLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_PAUSED_COUNT:I = 0x1770

.field private static final QUERY_INTERVAL_MS:I = 0x64


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadId:J

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadUrl:Ljava/lang/String;

.field private mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 320
    iput-object p1, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

    .line 321
    iput-object p2, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mContext:Landroid/content/Context;

    .line 322
    iput-object p3, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadUrl:Ljava/lang/String;

    .line 323
    const-string v0, "download"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadManager:Landroid/app/DownloadManager;

    .line 324
    return-void
.end method

.method private isSilentDownload()Z
    .locals 4

    .prologue
    .line 434
    :try_start_0
    iget-object v2, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 435
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 437
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 441
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 439
    :catch_0
    move-exception v2

    .line 441
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 439
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadUrl:Ljava/lang/String;

    if-nez v12, :cond_0

    const/16 v12, 0x10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 390
    :goto_0
    return-object v12

    .line 360
    :cond_0
    new-instance v12, Landroid/app/DownloadManager$Query;

    invoke-direct {v12}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v13, 0x1

    new-array v13, v13, [J

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadId:J

    move-wide/from16 v16, v0

    aput-wide v16, v13, v14

    invoke-virtual {v12, v13}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v7

    .line 361
    .local v7, "query":Landroid/app/DownloadManager$Query;
    const/4 v6, 0x0

    .line 363
    .local v6, "pausedCount":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->isCancelled()Z

    move-result v12

    if-nez v12, :cond_4

    .line 365
    const-wide/16 v12, 0x64

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v12, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 371
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 373
    const-string v12, "total_size"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 374
    .local v10, "totalIdx":I
    const-string v12, "bytes_so_far"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 376
    .local v3, "downloadIdx":I
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 377
    .local v11, "totalSize":I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 378
    .local v4, "downloadSize":I
    if-lez v11, :cond_2

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 380
    :cond_2
    const-string v12, "status"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 381
    .local v9, "statusIdx":I
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 382
    .local v8, "status":I
    const/16 v12, 0x10

    if-eq v8, v12, :cond_3

    const/16 v12, 0x8

    if-ne v8, v12, :cond_5

    .line 384
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_0

    .line 366
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "downloadIdx":I
    .end local v4    # "downloadSize":I
    .end local v8    # "status":I
    .end local v9    # "statusIdx":I
    .end local v10    # "totalIdx":I
    .end local v11    # "totalSize":I
    :catch_0
    move-exception v5

    .line 390
    :cond_4
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_0

    .line 385
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "downloadIdx":I
    .restart local v4    # "downloadSize":I
    .restart local v8    # "status":I
    .restart local v9    # "statusIdx":I
    .restart local v10    # "totalIdx":I
    .restart local v11    # "totalSize":I
    :cond_5
    const/4 v12, 0x4

    if-ne v8, v12, :cond_1

    .line 386
    add-int/lit8 v6, v6, 0x1

    const/16 v12, 0x1770

    if-ne v6, v12, :cond_1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 403
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v4, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadId:J

    aput-wide v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 405
    const-string v0, "XWalkLib"

    const-string v1, "DownloadTask cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 407
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

    invoke-interface {v0}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;->onDownloadCancelled()V

    .line 408
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 308
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 412
    const-string v5, "XWalkLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DownloadTask finished, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v5, 0x0

    invoke-static {v5}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 415
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 416
    iget-object v5, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadManager:Landroid/app/DownloadManager;

    iget-wide v6, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadId:J

    invoke-virtual {v5, v6, v7}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v4

    .line 417
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

    invoke-interface {v5, v4}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;->onDownloadCompleted(Landroid/net/Uri;)V

    .line 430
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 419
    :cond_0
    const/16 v1, 0x3e8

    .line 420
    .local v1, "error":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_1

    .line 421
    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v6, 0x1

    new-array v6, v6, [J

    const/4 v7, 0x0

    iget-wide v8, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadId:J

    aput-wide v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    .line 422
    .local v2, "query":Landroid/app/DownloadManager$Query;
    iget-object v5, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 423
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 424
    const-string v5, "reason"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 425
    .local v3, "reasonIdx":I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 428
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "query":Landroid/app/DownloadManager$Query;
    .end local v3    # "reasonIdx":I
    :cond_1
    iget-object v5, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6, v1}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;->onDownloadFailed(II)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 308
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 9

    .prologue
    .line 328
    const-string v6, "XWalkLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadTask started, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {p0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 331
    const-string v5, "xwalk_download.tmp"

    .line 333
    .local v5, "savedFile":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    move-object v5, v3

    .line 341
    :cond_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 342
    .local v0, "downloadDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    .local v1, "downloadFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 345
    :cond_1
    new-instance v4, Landroid/app/DownloadManager$Request;

    iget-object v6, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 346
    .local v4, "request":Landroid/app/DownloadManager$Request;
    iget-object v6, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 348
    invoke-direct {p0}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->isSilentDownload()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 349
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 351
    :cond_2
    iget-object v6, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v6, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadId:J

    .line 353
    iget-object v6, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

    invoke-interface {v6}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;->onDownloadStarted()V

    .line 354
    .end local v0    # "downloadDir":Ljava/io/File;
    .end local v1    # "downloadFile":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "request":Landroid/app/DownloadManager$Request;
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v2

    .line 336
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const-string v6, "XWalkLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid download URL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mDownloadUrl:Ljava/lang/String;

    goto :goto_0

    .line 335
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 7
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 395
    const-string v1, "XWalkLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadTask updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "percentage":I
    aget-object v1, p1, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    aget-object v1, p1, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 398
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

    invoke-interface {v1, v0}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;->onDownloadUpdated(I)V

    .line 399
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 308
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
