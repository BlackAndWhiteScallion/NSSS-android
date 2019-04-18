.class Lorg/chromium/content/app/ChildProcessService$1;
.super Lorg/chromium/content/common/IChildProcessService$Stub;
.source "ChildProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/app/ChildProcessService;
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
    .line 73
    const-class v0, Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/app/ChildProcessService$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/app/ChildProcessService;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-direct {p0}, Lorg/chromium/content/common/IChildProcessService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public crashIntentionallyForTesting()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 111
    return-void
.end method

.method public setupConnection(Landroid/os/Bundle;Lorg/chromium/content/common/IChildProcessCallback;)I
    .locals 7
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lorg/chromium/content/common/IChildProcessCallback;

    .prologue
    .line 77
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2, p2}, Lorg/chromium/content/app/ChildProcessService;->access$002(Lorg/chromium/content/app/ChildProcessService;Lorg/chromium/content/common/IChildProcessCallback;)Lorg/chromium/content/common/IChildProcessCallback;

    .line 79
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v2}, Lorg/chromium/content/app/ChildProcessService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 80
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3

    .line 83
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 84
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    const-string v4, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/chromium/content/app/ChildProcessService;->access$202(Lorg/chromium/content/app/ChildProcessService;[Ljava/lang/String;)[Ljava/lang/String;

    .line 88
    :cond_0
    sget-boolean v2, Lorg/chromium/content/app/ChildProcessService$1;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 104
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 89
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    const-string v4, "com.google.android.apps.chrome.extra.cpu_count"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lorg/chromium/content/app/ChildProcessService;->access$302(Lorg/chromium/content/app/ChildProcessService;I)I

    .line 90
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    const-string v4, "com.google.android.apps.chrome.extra.cpu_features"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/chromium/content/app/ChildProcessService;->access$402(Lorg/chromium/content/app/ChildProcessService;J)J

    .line 91
    sget-boolean v2, Lorg/chromium/content/app/ChildProcessService$1;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$300(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v2

    if-gtz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 92
    :cond_2
    const-string v2, "com.google.android.apps.chrome.extra.extraFiles"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 96
    .local v0, "fdInfosAsParcelable":[Landroid/os/Parcelable;
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    array-length v4, v0

    new-array v4, v4, [Lorg/chromium/content/browser/FileDescriptorInfo;

    invoke-static {v2, v4}, Lorg/chromium/content/app/ChildProcessService;->access$502(Lorg/chromium/content/app/ChildProcessService;[Lorg/chromium/content/browser/FileDescriptorInfo;)[Lorg/chromium/content/browser/FileDescriptorInfo;

    .line 97
    const/4 v2, 0x0

    iget-object v4, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v4}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)[Lorg/chromium/content/browser/FileDescriptorInfo;

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const-string v2, "org.chromium.base.android.linker.shared_relros"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 99
    .local v1, "sharedRelros":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 100
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/chromium/base/library_loader/Linker;->useSharedRelros(Landroid/os/Bundle;)V

    .line 101
    const/4 v1, 0x0

    .line 103
    :cond_3
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 104
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    return v2
.end method
