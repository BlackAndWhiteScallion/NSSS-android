.class Lorg/chromium/media/MediaDrmBridge$8;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange([B[Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$hasAdditionalUsableKey:Z

.field final synthetic val$keysInfo:[Ljava/lang/Object;

.field final synthetic val$sessionId:[B


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;[B[Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$8;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$8;->val$sessionId:[B

    iput-object p3, p0, Lorg/chromium/media/MediaDrmBridge$8;->val$keysInfo:[Ljava/lang/Object;

    iput-boolean p4, p0, Lorg/chromium/media/MediaDrmBridge$8;->val$hasAdditionalUsableKey:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 906
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$8;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->access$1000(Lorg/chromium/media/MediaDrmBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$8;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$8;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->access$1100(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge$8;->val$sessionId:[B

    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge$8;->val$keysInfo:[Ljava/lang/Object;

    iget-boolean v6, p0, Lorg/chromium/media/MediaDrmBridge$8;->val$hasAdditionalUsableKey:Z

    invoke-static/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge;->access$1800(Lorg/chromium/media/MediaDrmBridge;J[B[Ljava/lang/Object;Z)V

    .line 910
    :cond_0
    return-void
.end method
