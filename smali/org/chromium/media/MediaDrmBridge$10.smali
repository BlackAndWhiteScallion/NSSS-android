.class Lorg/chromium/media/MediaDrmBridge$10;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onLegacySessionError([BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$sessionId:[B


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$10;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$10;->val$sessionId:[B

    iput-object p3, p0, Lorg/chromium/media/MediaDrmBridge$10;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 931
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$10;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->access$1000(Lorg/chromium/media/MediaDrmBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$10;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$10;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->access$1100(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$10;->val$sessionId:[B

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge$10;->val$errorMessage:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, v4}, Lorg/chromium/media/MediaDrmBridge;->access$2000(Lorg/chromium/media/MediaDrmBridge;J[BLjava/lang/String;)V

    .line 934
    :cond_0
    return-void
.end method
