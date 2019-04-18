.class Lorg/chromium/media/MediaDrmBridge$9;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onSessionExpirationUpdate([BJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$expirationTime:J

.field final synthetic val$sessionId:[B


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;[BJ)V
    .locals 1

    .prologue
    .line 915
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$9;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$9;->val$sessionId:[B

    iput-wide p3, p0, Lorg/chromium/media/MediaDrmBridge$9;->val$expirationTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 918
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$9;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->access$1000(Lorg/chromium/media/MediaDrmBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$9;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$9;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->access$1100(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$9;->val$sessionId:[B

    iget-wide v4, p0, Lorg/chromium/media/MediaDrmBridge$9;->val$expirationTime:J

    invoke-static/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->access$1900(Lorg/chromium/media/MediaDrmBridge;J[BJ)V

    .line 922
    :cond_0
    return-void
.end method
