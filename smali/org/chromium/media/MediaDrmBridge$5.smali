.class Lorg/chromium/media/MediaDrmBridge$5;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$promiseId:J


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$5;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-wide p2, p0, Lorg/chromium/media/MediaDrmBridge$5;->val$promiseId:J

    iput-object p4, p0, Lorg/chromium/media/MediaDrmBridge$5;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 857
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$5;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->access$1000(Lorg/chromium/media/MediaDrmBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$5;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$5;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->access$1100(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v2

    iget-wide v4, p0, Lorg/chromium/media/MediaDrmBridge$5;->val$promiseId:J

    iget-object v6, p0, Lorg/chromium/media/MediaDrmBridge$5;->val$errorMessage:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge;->access$1500(Lorg/chromium/media/MediaDrmBridge;JJLjava/lang/String;)V

    .line 860
    :cond_0
    return-void
.end method
