.class Lorg/chromium/content/app/ChildProcessService$2;
.super Ljava/lang/Object;
.source "ChildProcessService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/app/ChildProcessService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/app/ChildProcessService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const-class v0, Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/app/ChildProcessService$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/app/ChildProcessService;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "DM_EXIT"
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_2 .. :try_end_2} :catch_1

    .line 212
    :catch_0
    move-exception v9

    .line 213
    .local v9, "e":Ljava/lang/InterruptedException;
    const-string v2, "cr.ChildProcessService"

    const-string v3, "%s startup failed: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ChildProcessMain"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    return-void

    .line 138
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v14

    .line 141
    .local v14, "linker":Lorg/chromium/base/library_loader/Linker;
    invoke-virtual {v14}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v17

    .line 142
    .local v17, "useLinker":Z
    const/16 v16, 0x0

    .line 143
    .local v16, "requestedSharedRelro":Z
    if-eqz v17, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_4 .. :try_end_4} :catch_1

    .line 145
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 148
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_6 .. :try_end_6} :catch_1

    .line 214
    .end local v14    # "linker":Lorg/chromium/base/library_loader/Linker;
    .end local v16    # "requestedSharedRelro":Z
    .end local v17    # "useLinker":Z
    :catch_1
    move-exception v9

    .line 215
    .local v9, "e":Lorg/chromium/base/library_loader/ProcessInitException;
    const-string v2, "cr.ChildProcessService"

    const-string v3, "%s startup failed: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ChildProcessMain"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 148
    .end local v9    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    .restart local v14    # "linker":Lorg/chromium/base/library_loader/Linker;
    .restart local v16    # "requestedSharedRelro":Z
    .restart local v17    # "useLinker":Z
    :cond_2
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 149
    :try_start_8
    sget-boolean v2, Lorg/chromium/content/app/ChildProcessService$2;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$700(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 150
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$700(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v2

    iget-boolean v2, v2, Lorg/chromium/content/app/ChromiumLinkerParams;->mWaitForSharedRelro:Z

    if-eqz v2, :cond_8

    .line 151
    const/16 v16, 0x1

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$700(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v2

    iget-wide v2, v2, Lorg/chromium/content/app/ChromiumLinkerParams;->mBaseLoadAddress:J

    invoke-virtual {v14, v2, v3}, Lorg/chromium/base/library_loader/Linker;->initServiceProcess(J)V

    .line 156
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$700(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v2

    iget-object v2, v2, Lorg/chromium/content/app/ChromiumLinkerParams;->mTestRunnerClassName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/chromium/base/library_loader/Linker;->setTestRunnerClassName(Ljava/lang/String;)V

    .line 158
    :cond_4
    const/4 v12, 0x0

    .line 159
    .local v12, "isLoaded":Z
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string v3, "renderer-wait-for-java-debugger"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_8 .. :try_end_8} :catch_1

    .line 164
    :cond_5
    const/4 v15, 0x0

    .line 166
    .local v15, "loadAtFixedAddressFailed":Z
    const/4 v2, 0x2

    :try_start_9
    invoke-static {v2}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v3}, Lorg/chromium/content/app/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;)V
    :try_end_9
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    .line 168
    const/4 v12, 0x1

    .line 178
    :goto_4
    if-nez v12, :cond_6

    if-eqz v16, :cond_6

    .line 179
    :try_start_a
    invoke-virtual {v14}, Lorg/chromium/base/library_loader/Linker;->disableSharedRelros()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_a .. :try_end_a} :catch_1

    .line 181
    const/4 v2, 0x2

    :try_start_b
    invoke-static {v2}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v3}, Lorg/chromium/content/app/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;)V
    :try_end_b
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    .line 183
    const/4 v12, 0x1

    .line 188
    :cond_6
    :goto_5
    if-nez v12, :cond_7

    .line 189
    const/4 v2, -0x1

    :try_start_c
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 191
    :cond_7
    const/4 v2, 0x2

    invoke-static {v2}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lorg/chromium/base/library_loader/LibraryLoader;->registerRendererProcessHistogram(ZZ)V

    .line 194
    const/4 v2, 0x2

    invoke-static {v2}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/base/library_loader/LibraryLoader;->initialize()V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_c .. :try_end_c} :catch_1

    .line 196
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/chromium/content/app/ChildProcessService;->access$802(Lorg/chromium/content/app/ChildProcessService;Z)Z

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 198
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)[Lorg/chromium/content/browser/FileDescriptorInfo;

    move-result-object v2

    if-nez v2, :cond_a

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_6

    .line 201
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v2

    .line 154
    .end local v12    # "isLoaded":Z
    .end local v15    # "loadAtFixedAddressFailed":Z
    :cond_8
    invoke-virtual {v14}, Lorg/chromium/base/library_loader/Linker;->disableSharedRelros()V

    goto/16 :goto_3

    .line 169
    .restart local v12    # "isLoaded":Z
    .restart local v15    # "loadAtFixedAddressFailed":Z
    :catch_2
    move-exception v9

    .line 170
    .restart local v9    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    if-eqz v16, :cond_9

    .line 171
    const-string v2, "cr.ChildProcessService"

    const-string v3, "Failed to load native library with shared RELRO, retrying without"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const/4 v15, 0x1

    goto :goto_4

    .line 175
    :cond_9
    const-string v2, "cr.ChildProcessService"

    const-string v3, "Failed to load native library"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 184
    .end local v9    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    :catch_3
    move-exception v9

    .line 185
    .restart local v9    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    const-string v2, "cr.ChildProcessService"

    const-string v3, "Failed to load native library on retry"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_5

    .line 201
    .end local v9    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    :cond_a
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 202
    :try_start_10
    invoke-static {}, Lorg/chromium/content/app/ChildProcessService;->access$900()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/content/app/ContentMain;->initApplicationContext(Landroid/content/Context;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)[Lorg/chromium/content/browser/FileDescriptorInfo;

    move-result-object v8

    .local v8, "arr$":[Lorg/chromium/content/browser/FileDescriptorInfo;
    array-length v13, v8

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_7
    if-ge v11, v13, :cond_b

    aget-object v10, v8, v11

    .line 204
    .local v10, "fdInfo":Lorg/chromium/content/browser/FileDescriptorInfo;
    iget v2, v10, Lorg/chromium/content/browser/FileDescriptorInfo;->mId:I

    iget-object v3, v10, Lorg/chromium/content/browser/FileDescriptorInfo;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    iget-wide v4, v10, Lorg/chromium/content/browser/FileDescriptorInfo;->mOffset:J

    iget-wide v6, v10, Lorg/chromium/content/browser/FileDescriptorInfo;->mSize:J

    invoke-static/range {v2 .. v7}, Lorg/chromium/content/app/ChildProcessService;->access$1000(IIJJ)V

    .line 203
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 207
    .end local v10    # "fdInfo":Lorg/chromium/content/browser/FileDescriptorInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v3}, Lorg/chromium/content/app/ChildProcessService;->access$300(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v4}, Lorg/chromium/content/app/ChildProcessService;->access$400(Lorg/chromium/content/app/ChildProcessService;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/chromium/content/app/ChildProcessService;->access$1100(Lorg/chromium/content/app/ChildProcessService;IJ)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$1200(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-static {}, Lorg/chromium/content/app/ContentMain;->start()I

    .line 210
    invoke-static {}, Lorg/chromium/content/app/ChildProcessService;->access$1300()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_1
.end method
