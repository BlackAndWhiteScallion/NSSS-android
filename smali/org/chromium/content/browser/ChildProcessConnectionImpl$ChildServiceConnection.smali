.class Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;
.super Ljava/lang/Object;
.source "ChildProcessConnectionImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ChildProcessConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildServiceConnection"
.end annotation


# instance fields
.field private final mBindFlags:I

.field private mBound:Z

.field final synthetic this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ChildProcessConnectionImpl;I)V
    .locals 1
    .param p2, "bindFlags"    # I

    .prologue
    .line 115
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z

    .line 116
    iput p2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBindFlags:I

    .line 117
    return-void
.end method

.method private createServiceBindIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$000(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v3}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$100(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v3}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$200(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$000(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    return-object v0
.end method


# virtual methods
.method bind([Ljava/lang/String;)Z
    .locals 3
    .param p1, "commandLine"    # [Ljava/lang/String;

    .prologue
    .line 120
    iget-boolean v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z

    if-nez v1, :cond_2

    .line 122
    :try_start_0
    const-string v1, "ChildProcessConnectionImpl.ChildServiceConnection.bind"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->createServiceBindIntent()Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 125
    const-string v1, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$300(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$300(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/content/app/ChromiumLinkerParams;->addIntentExtras(Landroid/content/Intent;)V

    .line 130
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$000(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBindFlags:I

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const-string v1, "ChildProcessConnectionImpl.ChildServiceConnection.bind"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 135
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z

    return v1

    .line 132
    :catchall_0
    move-exception v1

    const-string v2, "ChildProcessConnectionImpl.ChildServiceConnection.bind"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v1
.end method

.method isBound()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$400(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$500(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_0
    return-void

    .line 158
    :cond_0
    :try_start_1
    const-string v0, "ChildProcessConnectionImpl.ChildServiceConnection.onServiceConnected"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$502(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Z)Z

    .line 161
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {p2}, Lorg/chromium/content/common/IChildProcessService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/chromium/content/common/IChildProcessService;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$602(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Lorg/chromium/content/common/IChildProcessService;)Lorg/chromium/content/common/IChildProcessService;

    .line 164
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$700(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$800(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    :cond_1
    :try_start_2
    const-string v0, "ChildProcessConnectionImpl.ChildServiceConnection.onServiceConnected"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 171
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 168
    :catchall_1
    move-exception v0

    :try_start_3
    const-string v2, "ChildProcessConnectionImpl.ChildServiceConnection.onServiceConnected"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$400(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$900(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    monitor-exit v1

    .line 197
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1100(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Z

    move-result v2

    invoke-static {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1002(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Z)Z

    .line 186
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$902(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Z)Z

    .line 187
    const-string v0, "cr.ChildProcessConnect"

    const-string v2, "onServiceDisconnected (crash or killed by oom): pid=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v5}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1200(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->stop()V

    .line 189
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1300(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-interface {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;->onChildProcessDied(Lorg/chromium/content/browser/ChildProcessConnection;)V

    .line 192
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1400(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1400(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;->onConnected(I)V

    .line 195
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$1402(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;)Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    .line 196
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unbind()V
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->this$0:Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->access$000(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->mBound:Z

    .line 143
    :cond_0
    return-void
.end method
