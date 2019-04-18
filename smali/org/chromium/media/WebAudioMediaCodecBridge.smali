.class Lorg/chromium/media/WebAudioMediaCodecBridge;
.super Ljava/lang/Object;
.source "WebAudioMediaCodecBridge.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cr.media"

.field static final TIMEOUT_MICROSECONDS:J = 0x1f4L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createTempFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 33
    .local v0, "outputDirectory":Ljava/io/File;
    const-string v2, "webaudio"

    const-string v3, ".dat"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 34
    .local v1, "outputFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static decodeAudioFile(Landroid/content/Context;JIJ)Z
    .locals 42
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "nativeMediaCodecBridge"    # J
    .param p3, "inputFD"    # I
    .param p4, "dataSize"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 44
    const-wide/16 v10, 0x0

    cmp-long v3, p4, v10

    if-ltz v3, :cond_0

    const-wide/32 v10, 0x7fffffff

    cmp-long v3, p4, v10

    if-lez v3, :cond_1

    .line 45
    :cond_0
    const/16 v30, 0x0

    .line 287
    :goto_0
    return v30

    .line 47
    :cond_1
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 50
    .local v2, "extractor":Landroid/media/MediaExtractor;
    invoke-static/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v34

    .line 52
    .local v34, "encodedFD":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual/range {v34 .. v34}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-gtz v3, :cond_2

    .line 60
    invoke-virtual/range {v34 .. v34}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 61
    const/16 v30, 0x0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v33

    .line 54
    .local v33, "e":Ljava/lang/Exception;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    invoke-virtual/range {v34 .. v34}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 56
    const/16 v30, 0x0

    goto :goto_0

    .line 64
    .end local v33    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v35

    .line 73
    .local v35, "format":Landroid/media/MediaFormat;
    :try_start_1
    const-string v3, "channel-count"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    .line 84
    .local v18, "inputChannelCount":I
    move/from16 v27, v18

    .line 88
    .local v27, "outputChannelCount":I
    :try_start_2
    const-string v3, "sample-rate"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v19

    .line 98
    .local v19, "sampleRate":I
    :try_start_3
    const-string v3, "mime"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v14

    .line 106
    .local v14, "mime":Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 107
    .local v20, "durationMicroseconds":J
    const-string v3, "durationUs"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    :try_start_4
    const-string v3, "durationUs"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v20

    .line 119
    :cond_3
    :goto_1
    const-wide/32 v10, 0x7fffffff

    cmp-long v3, v20, v10

    if-lez v3, :cond_4

    .line 120
    const-wide/16 v20, 0x0

    .line 123
    :cond_4
    const-string v3, "cr.media"

    const-string v6, "Initial: Tracks: %d Format: %s"

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-static {v3, v6, v10, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    :try_start_5
    invoke-static {v14}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v4

    .line 136
    .local v4, "codec":Landroid/media/MediaCodec;
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    :try_start_6
    move-object/from16 v0, v35

    invoke-virtual {v4, v0, v3, v6, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 143
    :try_start_7
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 152
    :try_start_8
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v28

    .line 160
    .local v28, "codecInputBuffers":[Ljava/nio/ByteBuffer;
    :try_start_9
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v29

    .line 168
    .local v29, "codecOutputBuffers":[Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 170
    const/16 v39, 0x0

    .line 171
    .local v39, "sawInputEOS":Z
    const/16 v40, 0x0

    .line 172
    .local v40, "sawOutputEOS":Z
    const/16 v31, 0x0

    .line 173
    .local v31, "destinationInitialized":Z
    const/16 v30, 0x1

    .line 176
    .local v30, "decodedSuccessfully":Z
    :cond_5
    :goto_2
    if-nez v40, :cond_9

    .line 177
    if-nez v39, :cond_6

    .line 181
    const-wide/16 v10, 0x1f4

    :try_start_a
    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-result v5

    .line 188
    .local v5, "inputBufIndex":I
    if-ltz v5, :cond_6

    .line 189
    aget-object v32, v28, v5

    .line 193
    .local v32, "dstBuf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    :try_start_b
    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result v7

    .line 200
    .local v7, "sampleSize":I
    const-wide/16 v8, 0x0

    .line 202
    .local v8, "presentationTimeMicroSec":J
    if-gez v7, :cond_a

    .line 203
    const/16 v39, 0x1

    .line 204
    const/4 v7, 0x0

    .line 210
    :goto_3
    const/4 v6, 0x0

    if-eqz v39, :cond_b

    const/4 v10, 0x4

    :goto_4
    :try_start_c
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 223
    if-nez v39, :cond_6

    .line 224
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    .line 230
    .end local v5    # "inputBufIndex":I
    .end local v7    # "sampleSize":I
    .end local v8    # "presentationTimeMicroSec":J
    .end local v32    # "dstBuf":Ljava/nio/ByteBuffer;
    :cond_6
    new-instance v36, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v36 .. v36}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 234
    .local v36, "info":Landroid/media/MediaCodec$BufferInfo;
    const-wide/16 v10, 0x1f4

    :try_start_d
    move-object/from16 v0, v36

    invoke-virtual {v4, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    move-result v38

    .line 242
    .local v38, "outputBufIndex":I
    if-ltz v38, :cond_d

    .line 243
    aget-object v24, v29, v38

    .line 245
    .local v24, "buf":Ljava/nio/ByteBuffer;
    if-nez v31, :cond_7

    .line 250
    const-string v10, "cr.media"

    const-string v11, "Final:  Rate: %d Channels: %d Mime: %s Duration: %d microsec"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {v10 .. v15}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v16, p1

    .line 253
    invoke-static/range {v16 .. v21}, Lorg/chromium/media/WebAudioMediaCodecBridge;->nativeInitializeDestination(JIIJ)V

    .line 257
    const/16 v31, 0x1

    .line 260
    :cond_7
    if-eqz v31, :cond_8

    move-object/from16 v0, v36

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_8

    .line 261
    move-object/from16 v0, v36

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v25, v0

    move-wide/from16 v22, p1

    move/from16 v26, v18

    invoke-static/range {v22 .. v27}, Lorg/chromium/media/WebAudioMediaCodecBridge;->nativeOnChunkDecoded(JLjava/nio/ByteBuffer;III)V

    .line 265
    :cond_8
    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 266
    const/4 v3, 0x0

    move/from16 v0, v38

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 268
    move-object/from16 v0, v36

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 269
    const/16 v40, 0x1

    goto :goto_2

    .line 74
    .end local v4    # "codec":Landroid/media/MediaCodec;
    .end local v14    # "mime":Ljava/lang/String;
    .end local v18    # "inputChannelCount":I
    .end local v19    # "sampleRate":I
    .end local v20    # "durationMicroseconds":J
    .end local v24    # "buf":Ljava/nio/ByteBuffer;
    .end local v27    # "outputChannelCount":I
    .end local v28    # "codecInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v29    # "codecOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v30    # "decodedSuccessfully":Z
    .end local v31    # "destinationInitialized":Z
    .end local v36    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v38    # "outputBufIndex":I
    .end local v39    # "sawInputEOS":Z
    .end local v40    # "sawOutputEOS":Z
    :catch_1
    move-exception v33

    .line 76
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v3, "cr.media"

    const-string v6, "Unable to determine number of channels"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3, v6, v10}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual/range {v34 .. v34}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 78
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 89
    .end local v33    # "e":Ljava/lang/Exception;
    .restart local v18    # "inputChannelCount":I
    .restart local v27    # "outputChannelCount":I
    :catch_2
    move-exception v33

    .line 91
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v3, "cr.media"

    const-string v6, "Unable to determine sample rate"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3, v6, v10}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-virtual/range {v34 .. v34}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 93
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 99
    .end local v33    # "e":Ljava/lang/Exception;
    .restart local v19    # "sampleRate":I
    :catch_3
    move-exception v33

    .line 101
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v3, "cr.media"

    const-string v6, "Unable to determine type of encoding used by the file"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3, v6, v10}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-virtual/range {v34 .. v34}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 103
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 110
    .end local v33    # "e":Ljava/lang/Exception;
    .restart local v14    # "mime":Ljava/lang/String;
    .restart local v20    # "durationMicroseconds":J
    :catch_4
    move-exception v33

    .line 111
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v3, "cr.media"

    const-string v6, "Cannot get duration"

    invoke-static {v3, v6}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 129
    .end local v33    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v33

    .line 130
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v3, "cr.media"

    const-string v6, "Failed to create MediaCodec for mime type: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v14, v10, v11

    invoke-static {v3, v6, v10}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-virtual/range {v34 .. v34}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 132
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 137
    .end local v33    # "e":Ljava/lang/Exception;
    .restart local v4    # "codec":Landroid/media/MediaCodec;
    :catch_6
    move-exception v33

    .line 138
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v3, "cr.media"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to configure codec for format "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v33, v10, v11

    invoke-static {v3, v6, v10}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-virtual/range {v34 .. v34}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 140
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 144
    .end local v33    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v33

    .line 145
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v3, "cr.media"

    const-string v6, "Unable to start()"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v33, v10, v11

    invoke-static {v3, v6, v10}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual/range {v34 .. v34}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 147
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 153
    .end local v33    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v33

    .line 154
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v3, "cr.media"

    const-string v6, "getInputBuffers() failed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v33, v10, v11

    invoke-static {v3, v6, v10}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-virtual/range {v34 .. v34}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 156
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 161
    .end local v33    # "e":Ljava/lang/Exception;
    .restart local v28    # "codecInputBuffers":[Ljava/nio/ByteBuffer;
    :catch_9
    move-exception v33

    .line 162
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v3, "cr.media"

    const-string v6, "getOutputBuffers() failed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v33, v10, v11

    invoke-static {v3, v6, v10}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-virtual/range {v34 .. v34}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 164
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 182
    .end local v33    # "e":Ljava/lang/Exception;
    .restart local v29    # "codecOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v30    # "decodedSuccessfully":Z
    .restart local v31    # "destinationInitialized":Z
    .restart local v39    # "sawInputEOS":Z
    .restart local v40    # "sawOutputEOS":Z
    :catch_a
    move-exception v33

    .line 183
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v3, "cr.media"

    const-string v6, "dequeueInputBuffer(%d) failed."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v12, 0x1f4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v33, v10, v11

    invoke-static {v3, v6, v10}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    const/16 v30, 0x0

    .line 281
    .end local v33    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_5
    invoke-virtual/range {v34 .. v34}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 283
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 284
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 285
    const/4 v4, 0x0

    .line 287
    goto/16 :goto_0

    .line 194
    .restart local v5    # "inputBufIndex":I
    .restart local v32    # "dstBuf":Ljava/nio/ByteBuffer;
    :catch_b
    move-exception v33

    .line 195
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v3, "cr.media"

    const-string v6, "readSampleData failed."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3, v6, v10}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    const/16 v30, 0x0

    .line 197
    goto :goto_5

    .line 206
    .end local v33    # "e":Ljava/lang/Exception;
    .restart local v7    # "sampleSize":I
    .restart local v8    # "presentationTimeMicroSec":J
    :cond_a
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    goto/16 :goto_3

    .line 210
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 215
    :catch_c
    move-exception v33

    .line 216
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v6, "cr.media"

    const-string v10, "queueInputBuffer(%d, 0, %d, %d, %d) failed."

    const/4 v3, 0x5

    new-array v11, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    const/4 v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    const/4 v3, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v3

    const/4 v12, 0x3

    if-eqz v39, :cond_c

    const/4 v3, 0x4

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v12

    const/4 v3, 0x4

    aput-object v33, v11, v3

    invoke-static {v6, v10, v11}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    const/16 v30, 0x0

    .line 220
    goto :goto_5

    .line 216
    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    .line 235
    .end local v5    # "inputBufIndex":I
    .end local v7    # "sampleSize":I
    .end local v8    # "presentationTimeMicroSec":J
    .end local v32    # "dstBuf":Ljava/nio/ByteBuffer;
    .end local v33    # "e":Ljava/lang/Exception;
    .restart local v36    # "info":Landroid/media/MediaCodec$BufferInfo;
    :catch_d
    move-exception v33

    .line 236
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string v3, "cr.media"

    const-string v6, "dequeueOutputBuffer(%s, %d) failed"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v36, v10, v11

    const/4 v11, 0x1

    const-wide/16 v12, 0x1f4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v3, v6, v10}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    const/16 v30, 0x0

    .line 239
    goto :goto_5

    .line 271
    .end local v33    # "e":Ljava/lang/Exception;
    .restart local v38    # "outputBufIndex":I
    :cond_d
    const/4 v3, -0x3

    move/from16 v0, v38

    if-ne v0, v3, :cond_e

    .line 272
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v29

    goto/16 :goto_2

    .line 273
    :cond_e
    const/4 v3, -0x2

    move/from16 v0, v38

    if-ne v0, v3, :cond_5

    .line 274
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v37

    .line 275
    .local v37, "newFormat":Landroid/media/MediaFormat;
    const-string v3, "channel-count"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v27

    .line 276
    const-string v3, "sample-rate"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v19

    .line 277
    const-string v3, "cr.media"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "output format changed to "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static native nativeInitializeDestination(JIIJ)V
.end method

.method private static native nativeOnChunkDecoded(JLjava/nio/ByteBuffer;III)V
.end method
