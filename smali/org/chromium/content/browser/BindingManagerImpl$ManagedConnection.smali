.class Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
.super Ljava/lang/Object;
.source "BindingManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/BindingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedConnection"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBoundForBackgroundPeriod:Z

.field private mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

.field private mInForeground:Z

.field private mWasOomProtected:Z

.field final synthetic this$0:Lorg/chromium/content/browser/BindingManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const-class v0, Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/BindingManagerImpl;Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0
    .param p2, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 267
    iput-object p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 269
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .prologue
    .line 174
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->addModerateBinding()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .prologue
    .line 174
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeModerateBinding()V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .prologue
    .line 174
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->dropBindings()V

    return-void
.end method

.method private addModerateBinding()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 250
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->addModerateBinding()V

    goto :goto_0
.end method

.method private addStrongBinding()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 198
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->addStrongBinding()V

    .line 202
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v2}, Lorg/chromium/content/browser/BindingManagerImpl;->access$500(Lorg/chromium/content/browser/BindingManagerImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 203
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v2}, Lorg/chromium/content/browser/BindingManagerImpl;->access$600(Lorg/chromium/content/browser/BindingManagerImpl;)Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    move-result-object v1

    .line 204
    .local v1, "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->removeConnection(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    goto :goto_0

    .line 204
    .end local v1    # "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private dropBindings()V
    .locals 2

    .prologue
    .line 260
    sget-boolean v1, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManagerImpl;->access$700(Lorg/chromium/content/browser/BindingManagerImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 262
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v0, :cond_1

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->dropOomBindings()V

    goto :goto_0
.end method

.method private removeInitialBinding()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isInitialBindingBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->removeInitialBinding()V

    goto :goto_0
.end method

.method private removeModerateBinding()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isModerateBindingBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->removeModerateBinding()V

    goto :goto_0
.end method

.method private removeStrongBinding(Z)V
    .locals 4
    .param p1, "keepsAsModerate"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 213
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isStrongBindingBound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    new-instance v1, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;-><init>(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;Lorg/chromium/content/browser/ChildProcessConnection;Z)V

    .line 234
    .local v1, "doUnbind":Ljava/lang/Runnable;
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v2}, Lorg/chromium/content/browser/BindingManagerImpl;->access$700(Lorg/chromium/content/browser/BindingManagerImpl;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v2}, Lorg/chromium/content/browser/BindingManagerImpl;->access$800(Lorg/chromium/content/browser/BindingManagerImpl;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method


# virtual methods
.method clearConnection()V
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v1}, Lorg/chromium/content/browser/ChildProcessConnection;->isOomProtectedOrWasWhenDied()Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mWasOomProtected:Z

    .line 316
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManagerImpl;->access$500(Lorg/chromium/content/browser/BindingManagerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 317
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManagerImpl;->access$600(Lorg/chromium/content/browser/BindingManagerImpl;)Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    move-result-object v0

    .line 318
    .local v0, "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->removeConnection(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    .line 320
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 321
    return-void

    .line 318
    .end local v0    # "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method determinedVisibility()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeInitialBinding()V

    .line 289
    return-void
.end method

.method isConnectionCleared()Z
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOomProtected()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isOomProtectedOrWasWhenDied()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mWasOomProtected:Z

    goto :goto_0
.end method

.method setBoundForBackgroundPeriod(Z)V
    .locals 1
    .param p1, "nextBound"    # Z

    .prologue
    .line 296
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mBoundForBackgroundPeriod:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 297
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->addStrongBinding()V

    .line 302
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mBoundForBackgroundPeriod:Z

    .line 303
    return-void

    .line 298
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mBoundForBackgroundPeriod:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeStrongBinding(Z)V

    goto :goto_0
.end method

.method setInForeground(Z)V
    .locals 1
    .param p1, "nextInForeground"    # Z

    .prologue
    .line 275
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mInForeground:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 276
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->addStrongBinding()V

    .line 281
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mInForeground:Z

    .line 282
    return-void

    .line 277
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mInForeground:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeStrongBinding(Z)V

    goto :goto_0
.end method
