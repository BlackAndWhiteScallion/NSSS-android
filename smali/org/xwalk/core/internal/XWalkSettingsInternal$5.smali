.class Lorg/xwalk/core/internal/XWalkSettingsInternal$5;
.super Ljava/lang/Object;
.source "XWalkSettingsInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkSettingsInternal;->onGestureZoomSupportChanged(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

.field final synthetic val$supportsDoubleTapZoom:Z

.field final synthetic val$supportsMultiTouchZoom:Z


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;ZZ)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    iput-boolean p2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;->val$supportsDoubleTapZoom:Z

    iput-boolean p3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;->val$supportsMultiTouchZoom:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 938
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 939
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$1100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 943
    :goto_0
    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$1100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;

    move-result-object v0

    iget-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;->val$supportsDoubleTapZoom:Z

    iget-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;->val$supportsMultiTouchZoom:Z

    invoke-interface {v0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;->onGestureZoomSupportChanged(ZZ)V

    .line 942
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
