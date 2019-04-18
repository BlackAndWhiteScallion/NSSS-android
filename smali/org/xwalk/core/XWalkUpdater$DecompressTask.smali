.class Lorg/xwalk/core/XWalkUpdater$DecompressTask;
.super Ljava/lang/Object;
.source "XWalkUpdater.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/XWalkUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecompressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDestDir:Ljava/lang/String;

.field private final mEntryName:Ljava/lang/String;

.field private final mLibFile:Ljava/lang/String;

.field private final mResource:Ljava/lang/String;

.field final synthetic this$0:Lorg/xwalk/core/XWalkUpdater;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/XWalkUpdater;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "libFile"    # Ljava/lang/String;
    .param p3, "destDir"    # Ljava/lang/String;
    .param p4, "entryName"    # Ljava/lang/String;
    .param p5, "resource"    # Ljava/lang/String;

    .prologue
    .line 632
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-object p2, p0, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->mLibFile:Ljava/lang/String;

    .line 634
    iput-object p3, p0, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->mDestDir:Ljava/lang/String;

    .line 635
    iput-object p4, p0, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->mEntryName:Ljava/lang/String;

    .line 636
    iput-object p5, p0, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->mResource:Ljava/lang/String;

    .line 637
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 18

    .prologue
    .line 641
    const-string v12, "XWalkLib"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Extract from Apk (lzma compressed) "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->mLibFile:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 643
    .local v8, "startTime":J
    const/4 v10, 0x0

    .line 645
    .local v10, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v11, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->mLibFile:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 646
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    .local v11, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    const-string v12, "XWalkLib"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unzip/decompress "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->mEntryName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 647
    const/4 v4, 0x0

    .line 648
    .local v4, "input":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 651
    .local v6, "output":Ljava/io/OutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->mEntryName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 652
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v11, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 653
    .end local v4    # "input":Ljava/io/InputStream;
    .local v5, "input":Ljava/io/InputStream;
    :try_start_3
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->mDestDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->mResource:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_17
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 655
    .end local v6    # "output":Ljava/io/OutputStream;
    .local v7, "output":Ljava/io/OutputStream;
    :try_start_4
    invoke-static {v5, v7}, Lorg/xwalk/core/XWalkLibraryDecompressor;->decodeWithLzma(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_18
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 659
    if-eqz v7, :cond_0

    .line 661
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_15
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 665
    :goto_0
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_15
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 669
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 671
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_15
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 680
    :cond_1
    :goto_2
    :try_start_8
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_11

    .line 684
    :goto_3
    const-string v12, "XWalkLib"

    const-string v13, "Time to extract LZMA compressed %s: %d ms"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->mEntryName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object v10, v11

    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "output":Ljava/io/OutputStream;
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_4
    return-object v12

    .line 656
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v12

    :goto_5
    move-object v2, v12

    .line 657
    .local v2, "e":Ljava/lang/Exception;
    :goto_6
    const/4 v12, 0x0

    :try_start_9
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v12

    .line 659
    if-eqz v6, :cond_2

    .line 661
    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_15
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 665
    :goto_7
    :try_start_b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_15
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 669
    :cond_2
    :goto_8
    if-eqz v4, :cond_3

    .line 671
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_15
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 680
    :cond_3
    :goto_9
    :try_start_d
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_c

    :goto_a
    move-object v10, v11

    .line 682
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 659
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v12

    :goto_b
    if-eqz v6, :cond_4

    .line 661
    :try_start_e
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_15
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 665
    :goto_c
    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_15
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 669
    :cond_4
    :goto_d
    if-eqz v4, :cond_5

    .line 671
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 673
    :cond_5
    :goto_e
    :try_start_11
    throw v12
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_15
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 676
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "output":Ljava/io/OutputStream;
    :catch_1
    move-exception v12

    move-object v10, v11

    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_f
    move-object v2, v12

    .line 677
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_10
    const/4 v12, 0x0

    :try_start_12
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-result-object v12

    .line 680
    :try_start_13
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_12

    goto :goto_4

    .line 681
    :catch_2
    move-exception v13

    goto :goto_4

    .line 679
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    .line 680
    :goto_11
    :try_start_14
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_14

    .line 682
    :goto_12
    throw v12

    .line 676
    :catch_3
    move-exception v12

    :goto_13
    move-object v2, v12

    goto :goto_10

    .line 656
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v12

    :goto_14
    move-object v2, v12

    goto :goto_6

    .line 662
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v7    # "output":Ljava/io/OutputStream;
    :catch_5
    move-exception v12

    goto :goto_0

    .line 666
    :catch_6
    move-exception v12

    goto :goto_1

    .line 672
    :catch_7
    move-exception v12

    goto :goto_2

    .line 662
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "output":Ljava/io/OutputStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    :catch_8
    move-exception v13

    goto :goto_7

    .line 666
    :catch_9
    move-exception v13

    goto :goto_8

    .line 672
    :catch_a
    move-exception v13

    goto :goto_9

    .line 681
    :catch_b
    move-exception v13

    goto :goto_a

    :catch_c
    move-exception v13

    goto :goto_a

    .line 662
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v13

    goto :goto_c

    .line 666
    :catch_e
    move-exception v13

    goto :goto_d

    .line 672
    :catch_f
    move-exception v13

    goto :goto_e

    .line 681
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v7    # "output":Ljava/io/OutputStream;
    :catch_10
    move-exception v12

    goto/16 :goto_3

    :catch_11
    move-exception v12

    goto/16 :goto_3

    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "output":Ljava/io/OutputStream;
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v10    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_12
    move-exception v13

    goto :goto_4

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v13

    goto :goto_12

    :catch_14
    move-exception v13

    goto :goto_12

    .line 679
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v12

    move-object v10, v11

    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_11

    .line 676
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_15
    move-exception v12

    move-object v10, v11

    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_13

    :catch_16
    move-exception v12

    goto :goto_f

    .line 659
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v12

    move-object v4, v5

    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_b

    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v7    # "output":Ljava/io/OutputStream;
    :catchall_4
    move-exception v12

    move-object v6, v7

    .end local v7    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_b

    .line 656
    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    :catch_17
    move-exception v12

    move-object v4, v5

    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_14

    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v7    # "output":Ljava/io/OutputStream;
    :catch_18
    move-exception v12

    move-object v6, v7

    .end local v7    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_14

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    :catch_19
    move-exception v12

    move-object v4, v5

    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_5

    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v7    # "output":Ljava/io/OutputStream;
    :catch_1a
    move-exception v12

    move-object v6, v7

    .end local v7    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_5
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 625
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkUpdater$DecompressTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
