.class Lorg/chromium/base/ResourceExtractor$ExtractTask;
.super Landroid/os/AsyncTask;
.source "ResourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ResourceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtractTask"
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


# static fields
.field private static final BUFFER_SIZE:I = 0x4000


# instance fields
.field private final mCompletionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/chromium/base/ResourceExtractor;


# direct methods
.method private constructor <init>(Lorg/chromium/base/ResourceExtractor;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/ResourceExtractor;Lorg/chromium/base/ResourceExtractor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/base/ResourceExtractor;
    .param p2, "x1"    # Lorg/chromium/base/ResourceExtractor$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;-><init>(Lorg/chromium/base/ResourceExtractor;)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/base/ResourceExtractor$ExtractTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/ResourceExtractor$ExtractTask;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    return-object v0
.end method

.method private beginTraceSection(Ljava/lang/String;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkPakTimestamp(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p1, "outputDir"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x0

    .line 218
    const-string v4, "pak_timestamp-"

    .line 219
    .local v4, "timestampPrefix":Ljava/lang/String;
    iget-object v6, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v6}, Lorg/chromium/base/ResourceExtractor;->access$600(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 220
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 223
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v6}, Lorg/chromium/base/ResourceExtractor;->access$600(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 228
    if-nez v2, :cond_1

    .line 229
    const-string v1, "pak_timestamp-"

    .line 252
    :cond_0
    :goto_0
    return-object v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "pak_timestamp-"

    goto :goto_0

    .line 232
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pak_timestamp-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "expectedTimestamp":Ljava/lang/String;
    new-instance v6, Lorg/chromium/base/ResourceExtractor$ExtractTask$1;

    invoke-direct {v6, p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask$1;-><init>(Lorg/chromium/base/ResourceExtractor$ExtractTask;)V

    invoke-virtual {p1, v6}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "timestamps":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 247
    aget-object v6, v5, v10

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doInBackgroundImpl()V
    .locals 18

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v13}, Lorg/chromium/base/ResourceExtractor;->access$000(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;

    move-result-object v11

    .line 108
    .local v11, "outputDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v13}, Lorg/chromium/base/ResourceExtractor;->access$100(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;

    move-result-object v1

    .line 109
    .local v1, "appDataDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-nez v13, :cond_1

    .line 110
    const-string v13, "cr.base"

    const-string v14, "Unable to create pak resources directory!"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v12, 0x0

    .line 115
    .local v12, "timestampFile":Ljava/lang/String;
    const-string v13, "checkPakTimeStamp"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 117
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->checkPakTimestamp(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 119
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 121
    if-eqz v12, :cond_2

    .line 122
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v13}, Lorg/chromium/base/ResourceExtractor;->access$200(Lorg/chromium/base/ResourceExtractor;)V

    .line 125
    :cond_2
    const-string v13, "WalkAssets"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 126
    const/16 v13, 0x4000

    new-array v3, v13, [B

    .line 129
    .local v3, "buffer":[B
    :try_start_1
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$300()[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    move-result-object v2

    .local v2, "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_6

    aget-object v6, v2, v7

    .line 135
    .local v6, "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    iget-object v13, v6, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    invoke-static {v13}, Lorg/chromium/base/ResourceExtractor;->access$400(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v4, v1

    .line 136
    .local v4, "dir":Ljava/io/File;
    :goto_2
    new-instance v10, Ljava/io/File;

    iget-object v13, v6, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    invoke-direct {v10, v4, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v10, "output":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v13

    if-eqz v13, :cond_4

    .line 129
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 119
    .end local v2    # "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .end local v3    # "buffer":[B
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "output":Ljava/io/File;
    :catchall_0
    move-exception v13

    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v13

    .restart local v2    # "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .restart local v3    # "buffer":[B
    .restart local v6    # "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    :cond_3
    move-object v4, v11

    .line 135
    goto :goto_2

    .line 140
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v10    # "output":Ljava/io/File;
    :cond_4
    :try_start_2
    const-string v13, "ExtractResource"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$500()Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$500()Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;

    move-result-object v13

    iget-object v14, v6, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    invoke-interface {v13, v14}, Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;->shouldInterceptLoadRequest(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 144
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$500()Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;

    move-result-object v13

    iget-object v14, v6, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    invoke-interface {v13, v14}, Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;->openRawResource(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 149
    .local v8, "inputStream":Ljava/io/InputStream;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v3}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->extractResourceHelper(Ljava/io/InputStream;Ljava/io/File;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 154
    .end local v2    # "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .end local v7    # "i$":I
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "len$":I
    .end local v10    # "output":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 159
    .local v5, "e":Ljava/io/IOException;
    :try_start_5
    const-string v13, "cr.base"

    const-string v14, "Exception unpacking required pak resources: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v13}, Lorg/chromium/base/ResourceExtractor;->access$200(Lorg/chromium/base/ResourceExtractor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 163
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    goto/16 :goto_0

    .line 146
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v6    # "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    .restart local v10    # "output":Ljava/io/File;
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v13}, Lorg/chromium/base/ResourceExtractor;->access$600(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget v14, v6, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->resourceId:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 151
    :catchall_1
    move-exception v13

    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 163
    .end local v2    # "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .end local v7    # "i$":I
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "len$":I
    .end local v10    # "output":Ljava/io/File;
    :catchall_2
    move-exception v13

    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v13

    .restart local v2    # "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 167
    if-eqz v12, :cond_0

    .line 169
    :try_start_7
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 170
    :catch_1
    move-exception v5

    .line 173
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v13, "cr.base"

    const-string v14, "Failed to write resource pak timestamp!"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private endTraceSection()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0
.end method

.method private extractResourceHelper(Ljava/io/InputStream;Ljava/io/File;[B)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "outFile"    # Ljava/io/File;
    .param p3, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 81
    .end local v1    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_1
    const-string v3, "cr.base"

    const-string v4, "Extracting resource %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "count":I
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x4000

    invoke-virtual {p1, p3, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 85
    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v0    # "count":I
    :catchall_0
    move-exception v3

    move-object v1, v2

    .line 95
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :goto_1
    if-eqz p1, :cond_0

    .line 96
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    :cond_0
    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v3

    .line 87
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "count":I
    .restart local v2    # "os":Ljava/io/OutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 90
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 91
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " extracted with 0 length!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    :cond_3
    if-eqz p1, :cond_4

    .line 96
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 99
    :cond_4
    if-eqz v2, :cond_5

    .line 100
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 104
    :cond_5
    return-void

    .line 99
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_6

    .line 100
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_6
    throw v3

    .line 99
    .end local v0    # "count":I
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v3

    if-eqz v1, :cond_7

    .line 100
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_7
    throw v3

    .line 94
    :catchall_3
    move-exception v3

    goto :goto_1
.end method

.method private onPostExecuteImpl()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 198
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 184
    const-string v0, "ResourceExtractor.ExtractTask.doInBackground"

    invoke-direct {p0, v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 186
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->doInBackgroundImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 202
    const-string v0, "ResourceExtractor.ExtractTask.onPostExecute"

    invoke-direct {p0, v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 204
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->onPostExecuteImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 208
    return-void

    .line 206
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v0
.end method
