.class Lorg/chromium/media/MediaDrmBridge$6;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onSessionMessage([BLandroid/media/MediaDrm$KeyRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$request:Landroid/media/MediaDrm$KeyRequest;

.field final synthetic val$sessionId:[B


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;Landroid/media/MediaDrm$KeyRequest;[B)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$6;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$6;->val$request:Landroid/media/MediaDrm$KeyRequest;

    iput-object p3, p0, Lorg/chromium/media/MediaDrmBridge$6;->val$sessionId:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$6;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->access$1000(Lorg/chromium/media/MediaDrmBridge;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    :goto_0
    return-void

    .line 873
    :cond_0
    const/4 v5, 0x0

    .line 874
    .local v5, "requestType":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 875
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$6;->val$request:Landroid/media/MediaDrm$KeyRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result v5

    .line 884
    :goto_1
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$6;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$6;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->access$1100(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge$6;->val$sessionId:[B

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$6;->val$request:Landroid/media/MediaDrm$KeyRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v6

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$6;->val$request:Landroid/media/MediaDrm$KeyRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lorg/chromium/media/MediaDrmBridge;->access$1600(Lorg/chromium/media/MediaDrmBridge;J[BI[BLjava/lang/String;)V

    goto :goto_0

    .line 879
    :cond_1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$6;->val$request:Landroid/media/MediaDrm$KeyRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    :goto_2
    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    goto :goto_2
.end method
