.class Lorg/xwalk/core/XWalkLibraryDecompressor;
.super Ljava/lang/Object;
.source "XWalkLibraryDecompressor.java"


# static fields
.field private static final MANDATORY_LIBRARIES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "XWalkLib"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "libxwalkcore.so"

    aput-object v2, v0, v1

    sput-object v0, Lorg/xwalk/core/XWalkLibraryDecompressor;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeWithLzma(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 11
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    .line 110
    const/4 v5, 0x5

    .line 111
    .local v5, "propSize":I
    const/16 v4, 0x8

    .line 113
    .local v4, "outSizeLength":I
    new-array v6, v9, [B

    .line 114
    .local v6, "properties":[B
    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 115
    new-instance v8, Ljava/io/EOFException;

    const-string v9, "Input .lzma file is too short"

    invoke-direct {v8, v9}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 118
    :cond_0
    new-instance v0, LSevenZip/Compression/LZMA/Decoder;

    invoke-direct {v0}, LSevenZip/Compression/LZMA/Decoder;-><init>()V

    .line 119
    .local v0, "decoder":LSevenZip/Compression/LZMA/Decoder;
    invoke-virtual {v0, v6}, LSevenZip/Compression/LZMA/Decoder;->SetDecoderProperties([B)Z

    move-result v8

    if-nez v8, :cond_1

    .line 120
    const-string v8, "XWalkLib"

    const-string v9, "Incorrect stream properties"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    const-wide/16 v2, 0x0

    .line 124
    .local v2, "outSize":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v8, 0x8

    if-ge v1, v8, :cond_3

    .line 125
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 126
    .local v7, "v":I
    if-gez v7, :cond_2

    .line 127
    const-string v8, "XWalkLib"

    const-string v9, "Can\'t read stream size"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    int-to-long v8, v7

    mul-int/lit8 v10, v1, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v2, v8

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v7    # "v":I
    :cond_3
    invoke-virtual {v0, p0, p1, v2, v3}, LSevenZip/Compression/LZMA/Decoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    move-result v8

    if-nez v8, :cond_4

    .line 133
    const-string v8, "XWalkLib"

    const-string v9, "Error in data stream"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_4
    return-void
.end method

.method private static decompress(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libDir"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 65
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v14, 0x0

    .line 106
    :goto_0
    return v14

    .line 67
    :cond_1
    sget-object v1, Lorg/xwalk/core/XWalkLibraryDecompressor;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_a

    aget-object v8, v1, v4

    .line 68
    .local v8, "library":Ljava/lang/String;
    const/4 v12, 0x0

    .line 69
    .local v12, "tmpfile":Ljava/io/File;
    const/4 v5, 0x0

    .line 70
    .local v5, "input":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 73
    .local v10, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v9, "outfile":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".tmp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v12    # "tmpfile":Ljava/io/File;
    .local v13, "tmpfile":Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lorg/xwalk/core/XWalkLibraryDecompressor;->openRawResource(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .end local v5    # "input":Ljava/io/InputStream;
    .local v6, "input":Ljava/io/InputStream;
    :try_start_2
    new-instance v11, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    .end local v10    # "output":Ljava/io/OutputStream;
    .local v11, "output":Ljava/io/OutputStream;
    :try_start_3
    invoke-static {v6, v11}, Lorg/xwalk/core/XWalkLibraryDecompressor;->decodeWithLzma(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 78
    invoke-virtual {v13, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 86
    if-eqz v11, :cond_2

    .line 88
    :try_start_4
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 92
    :goto_2
    :try_start_5
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 96
    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    .line 98
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 102
    :cond_3
    :goto_4
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v9    # "outfile":Ljava/io/File;
    .end local v11    # "output":Ljava/io/OutputStream;
    .end local v13    # "tmpfile":Ljava/io/File;
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v10    # "output":Ljava/io/OutputStream;
    .restart local v12    # "tmpfile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_5
    :try_start_7
    const-string v14, "XWalkLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not find resource: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 81
    const/4 v14, 0x0

    .line 86
    if-eqz v10, :cond_4

    .line 88
    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 92
    :goto_6
    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 96
    :cond_4
    :goto_7
    if-eqz v5, :cond_5

    .line 98
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 102
    :cond_5
    :goto_8
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 82
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_b
    const-string v14, "XWalkLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Decompress failed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 84
    const/4 v14, 0x0

    .line 86
    if-eqz v10, :cond_6

    .line 88
    :try_start_c
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 92
    :goto_a
    :try_start_d
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 96
    :cond_6
    :goto_b
    if-eqz v5, :cond_7

    .line 98
    :try_start_e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 102
    :cond_7
    :goto_c
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 86
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_d
    if-eqz v10, :cond_8

    .line 88
    :try_start_f
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 92
    :goto_e
    :try_start_10
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 96
    :cond_8
    :goto_f
    if-eqz v5, :cond_9

    .line 98
    :try_start_11
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 102
    :cond_9
    :goto_10
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    throw v14

    .line 106
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v8    # "library":Ljava/lang/String;
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v12    # "tmpfile":Ljava/io/File;
    :cond_a
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 89
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v8    # "library":Ljava/lang/String;
    .restart local v9    # "outfile":Ljava/io/File;
    .restart local v11    # "output":Ljava/io/OutputStream;
    .restart local v13    # "tmpfile":Ljava/io/File;
    :catch_2
    move-exception v14

    goto/16 :goto_2

    .line 93
    :catch_3
    move-exception v14

    goto/16 :goto_3

    .line 99
    :catch_4
    move-exception v14

    goto/16 :goto_4

    .line 89
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v9    # "outfile":Ljava/io/File;
    .end local v11    # "output":Ljava/io/OutputStream;
    .end local v13    # "tmpfile":Ljava/io/File;
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v10    # "output":Ljava/io/OutputStream;
    .restart local v12    # "tmpfile":Ljava/io/File;
    :catch_5
    move-exception v15

    goto :goto_6

    .line 93
    :catch_6
    move-exception v15

    goto :goto_7

    .line 99
    :catch_7
    move-exception v15

    goto :goto_8

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    :catch_8
    move-exception v15

    goto :goto_a

    .line 93
    :catch_9
    move-exception v15

    goto :goto_b

    .line 99
    :catch_a
    move-exception v15

    goto :goto_c

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v15

    goto :goto_e

    .line 93
    :catch_c
    move-exception v15

    goto :goto_f

    .line 99
    :catch_d
    move-exception v15

    goto :goto_10

    .line 86
    .end local v12    # "tmpfile":Ljava/io/File;
    .restart local v9    # "outfile":Ljava/io/File;
    .restart local v13    # "tmpfile":Ljava/io/File;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13    # "tmpfile":Ljava/io/File;
    .restart local v12    # "tmpfile":Ljava/io/File;
    goto :goto_d

    .end local v5    # "input":Ljava/io/InputStream;
    .end local v12    # "tmpfile":Ljava/io/File;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v13    # "tmpfile":Ljava/io/File;
    :catchall_2
    move-exception v14

    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "tmpfile":Ljava/io/File;
    .restart local v12    # "tmpfile":Ljava/io/File;
    goto :goto_d

    .end local v5    # "input":Ljava/io/InputStream;
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v12    # "tmpfile":Ljava/io/File;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v11    # "output":Ljava/io/OutputStream;
    .restart local v13    # "tmpfile":Ljava/io/File;
    :catchall_3
    move-exception v14

    move-object v10, v11

    .end local v11    # "output":Ljava/io/OutputStream;
    .restart local v10    # "output":Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "tmpfile":Ljava/io/File;
    .restart local v12    # "tmpfile":Ljava/io/File;
    goto :goto_d

    .line 82
    .end local v12    # "tmpfile":Ljava/io/File;
    .restart local v13    # "tmpfile":Ljava/io/File;
    :catch_e
    move-exception v2

    move-object v12, v13

    .end local v13    # "tmpfile":Ljava/io/File;
    .restart local v12    # "tmpfile":Ljava/io/File;
    goto :goto_9

    .end local v5    # "input":Ljava/io/InputStream;
    .end local v12    # "tmpfile":Ljava/io/File;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v13    # "tmpfile":Ljava/io/File;
    :catch_f
    move-exception v2

    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "tmpfile":Ljava/io/File;
    .restart local v12    # "tmpfile":Ljava/io/File;
    goto :goto_9

    .end local v5    # "input":Ljava/io/InputStream;
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v12    # "tmpfile":Ljava/io/File;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v11    # "output":Ljava/io/OutputStream;
    .restart local v13    # "tmpfile":Ljava/io/File;
    :catch_10
    move-exception v2

    move-object v10, v11

    .end local v11    # "output":Ljava/io/OutputStream;
    .restart local v10    # "output":Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "tmpfile":Ljava/io/File;
    .restart local v12    # "tmpfile":Ljava/io/File;
    goto :goto_9

    .line 79
    .end local v12    # "tmpfile":Ljava/io/File;
    .restart local v13    # "tmpfile":Ljava/io/File;
    :catch_11
    move-exception v2

    move-object v12, v13

    .end local v13    # "tmpfile":Ljava/io/File;
    .restart local v12    # "tmpfile":Ljava/io/File;
    goto/16 :goto_5

    .end local v5    # "input":Ljava/io/InputStream;
    .end local v12    # "tmpfile":Ljava/io/File;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v13    # "tmpfile":Ljava/io/File;
    :catch_12
    move-exception v2

    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "tmpfile":Ljava/io/File;
    .restart local v12    # "tmpfile":Ljava/io/File;
    goto/16 :goto_5

    .end local v5    # "input":Ljava/io/InputStream;
    .end local v10    # "output":Ljava/io/OutputStream;
    .end local v12    # "tmpfile":Ljava/io/File;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v11    # "output":Ljava/io/OutputStream;
    .restart local v13    # "tmpfile":Ljava/io/File;
    :catch_13
    move-exception v2

    move-object v10, v11

    .end local v11    # "output":Ljava/io/OutputStream;
    .restart local v10    # "output":Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "tmpfile":Ljava/io/File;
    .restart local v12    # "tmpfile":Ljava/io/File;
    goto/16 :goto_5
.end method

.method public static decompressLibrary(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v6, "xwalkcore"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "libDir":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 54
    .local v4, "start":J
    invoke-static {p0, v2}, Lorg/xwalk/core/XWalkLibraryDecompressor;->decompress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 55
    .local v3, "success":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    .local v0, "end":J
    const-string v6, "XWalkLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Decompress library cost: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " milliseconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz v3, :cond_0

    const/4 v6, 0x5

    invoke-static {p0, v6}, Lorg/xwalk/core/XWalkLibraryDecompressor;->setLocalVersion(Landroid/content/Context;I)V

    .line 59
    :cond_0
    return v3
.end method

.method private static getLocalVersion(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 146
    const-string v1, "libxwalkcore"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static isCompressed(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lorg/xwalk/core/XWalkLibraryDecompressor;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 30
    .local v5, "library":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v5}, Lorg/xwalk/core/XWalkLibraryDecompressor;->openRawResource(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 32
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "XWalkLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Closing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "has failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 36
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 37
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v6, 0x0

    .line 41
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "library":Ljava/lang/String;
    :goto_2
    return v6

    :cond_0
    const/4 v6, 0x1

    goto :goto_2
.end method

.method public static isDecompressed(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p0}, Lorg/xwalk/core/XWalkLibraryDecompressor;->getLocalVersion(Landroid/content/Context;)I

    move-result v0

    .line 46
    .local v0, "version":I
    if-lez v0, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static openRawResource(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "library"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 140
    .local v2, "res":Landroid/content/res/Resources;
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 141
    .local v1, "libraryName":Ljava/lang/String;
    const-string v3, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, "id":I
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    return-object v3
.end method

.method private static setLocalVersion(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # I

    .prologue
    .line 151
    const-string v1, "libxwalkcore"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-void
.end method
