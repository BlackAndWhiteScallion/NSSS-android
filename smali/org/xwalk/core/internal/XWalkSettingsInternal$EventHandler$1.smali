.class Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler$1;
.super Landroid/os/Handler;
.source "XWalkSettingsInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->bindUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler$1;->this$1:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler$1;->this$1:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler$1;->this$1:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$200(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    .line 118
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler$1;->this$1:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$302(Lorg/xwalk/core/internal/XWalkSettingsInternal;Z)Z

    .line 119
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler$1;->this$1:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
