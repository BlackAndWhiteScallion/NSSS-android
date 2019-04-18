.class Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;
.super Ljava/lang/Object;
.source "VideoCaptureCamera2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrImageReaderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p2, "x1"    # Lorg/chromium/media/VideoCaptureCamera2$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 8
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 99
    const/4 v7, 0x0

    .line 101
    .local v7, "image":Landroid/media/Image;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 102
    if-nez v7, :cond_1

    .line 119
    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2

    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 105
    :cond_2
    const-string v1, "cr.media"

    const-string v2, "Unexpected image format: %d or #planes: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/media/Image;->getFormat()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 110
    :cond_3
    :try_start_2
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$600(Lorg/chromium/media/VideoCaptureCamera2;)[B

    move-result-object v1

    invoke-static {v7, v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$700(Landroid/media/Image;[B)V

    .line 111
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, v2, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->access$600(Lorg/chromium/media/VideoCaptureCamera2;)[B

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v5}, Lorg/chromium/media/VideoCaptureCamera2;->access$600(Lorg/chromium/media/VideoCaptureCamera2;)[B

    move-result-object v5

    array-length v5, v5

    iget-object v6, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-virtual {v6}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraRotation()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnFrameAvailable(J[BII)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "ex":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v1, "cr.media"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireLatestImage():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    goto/16 :goto_0

    .line 119
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 120
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    :cond_4
    throw v1
.end method
