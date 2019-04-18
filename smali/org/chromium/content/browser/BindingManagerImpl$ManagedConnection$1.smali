.class Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;
.super Ljava/lang/Object;
.source "BindingManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeStrongBinding(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

.field final synthetic val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

.field final synthetic val$keepsAsModerate:Z


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;Lorg/chromium/content/browser/ChildProcessConnection;Z)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->this$1:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    iput-object p2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    iput-boolean p3, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->val$keepsAsModerate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v1}, Lorg/chromium/content/browser/ChildProcessConnection;->isStrongBindingBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v1}, Lorg/chromium/content/browser/ChildProcessConnection;->removeStrongBinding()V

    .line 223
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->this$1:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    iget-object v1, v1, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManagerImpl;->access$500(Lorg/chromium/content/browser/BindingManagerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 224
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->this$1:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    iget-object v1, v1, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManagerImpl;->access$600(Lorg/chromium/content/browser/BindingManagerImpl;)Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    move-result-object v0

    .line 225
    .local v0, "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v1}, Lorg/chromium/content/browser/ChildProcessConnection;->isStrongBindingBound()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->val$keepsAsModerate:Z

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->this$1:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->addConnection(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    .line 231
    .end local v0    # "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    :cond_0
    return-void

    .line 225
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
