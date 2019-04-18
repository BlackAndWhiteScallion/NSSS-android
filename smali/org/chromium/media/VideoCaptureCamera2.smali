.class public Lorg/chromium/media/VideoCaptureCamera2;
.super Lorg/chromium/media/VideoCapture;
.source "VideoCaptureCamera2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCaptureCamera2$1;,
        Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cr.media"

.field private static final kNanoSecondsToFps:D = 1.0E-9


# instance fields
.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCapturedData:[B

.field private mConfiguringCamera:Z

.field private mImageReader:Landroid/media/ImageReader;

.field private mOpeningCamera:Z

.field private mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "nativeVideoCaptureDeviceAndroid"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 384
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/VideoCapture;-><init>(Landroid/content/Context;IJ)V

    .line 130
    iput-boolean v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mOpeningCamera:Z

    .line 134
    iput-boolean v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mConfiguringCamera:Z

    .line 136
    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 137
    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 138
    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 139
    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 385
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$102(Lorg/chromium/media/VideoCaptureCamera2;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mOpeningCamera:Z

    return p1
.end method

.method static synthetic access$202(Lorg/chromium/media/VideoCaptureCamera2;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mConfiguringCamera:Z

    return p1
.end method

.method static synthetic access$300(Lorg/chromium/media/VideoCaptureCamera2;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/media/VideoCaptureCamera2;->createCaptureObjects()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$500(Lorg/chromium/media/VideoCaptureCamera2;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/media/VideoCaptureCamera2;->createCaptureRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/media/VideoCaptureCamera2;)[B
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/Image;[B)V
    .locals 0
    .param p0, "x0"    # Landroid/media/Image;
    .param p1, "x1"    # [B

    .prologue
    .line 42
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->readImageIntoBuffer(Landroid/media/Image;[B)V

    return-void
.end method

.method private createCaptureObjects()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 157
    const-string v9, "cr.media"

    const-string v10, "createCaptureObjects"

    invoke-static {v9, v10}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v9, :cond_0

    .line 221
    :goto_0
    return v7

    .line 162
    :cond_0
    const/4 v4, 0x2

    .line 163
    .local v4, "maxImages":I
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v9}, Lorg/chromium/media/VideoCaptureFormat;->getWidth()I

    move-result v9

    iget-object v10, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v10}, Lorg/chromium/media/VideoCaptureFormat;->getHeight()I

    move-result v10

    iget-object v11, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v11}, Lorg/chromium/media/VideoCaptureFormat;->getPixelFormat()I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v9, v10, v11, v12}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v9

    iput-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 167
    new-instance v6, Landroid/os/HandlerThread;

    const-string v9, "CameraPreview"

    invoke-direct {v6, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 168
    .local v6, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    .local v0, "backgroundHandler":Landroid/os/Handler;
    new-instance v3, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;

    invoke-direct {v3, p0, v13}, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 171
    .local v3, "imageReaderListener":Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9, v3, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 177
    :try_start_0
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v9

    iput-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 188
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v9, :cond_1

    .line 189
    const-string v8, "cr.media"

    const-string v9, "mPreviewBuilder error"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v8, "cr.media"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureRequest: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    .end local v2    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v2

    .line 182
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v8, "cr.media"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureRequest: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 184
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 185
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v8, "cr.media"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureRequest: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 193
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :cond_1
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v10, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 196
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 198
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 200
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 201
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 205
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v5, "surfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;

    invoke-direct {v1, p0, v13}, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 209
    .local v1, "captureSessionListener":Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;
    :try_start_1
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v1, v10}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5

    move v7, v8

    .line 221
    goto/16 :goto_0

    .line 210
    :catch_3
    move-exception v2

    .line 211
    .local v2, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v8, "cr.media"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureSession: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 213
    .end local v2    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catch_4
    move-exception v2

    .line 214
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v8, "cr.media"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureSession: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 216
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v2

    .line 217
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v8, "cr.media"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureSession: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private createCaptureRequest()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 225
    const-string v2, "cr.media"

    const-string v3, "createCaptureRequest"

    invoke-static {v2, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 243
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRepeatingRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    .end local v0    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v0

    .line 236
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRepeatingRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 238
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 239
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRepeatingRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 146
    const-string v2, "camera"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 149
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 153
    :goto_0
    return-object v2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumberOfCameras: getCameraIdList(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getCaptureApiType(ILandroid/content/Context;)I
    .locals 4
    .param p0, "id"    # I
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 306
    invoke-static {p1, p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 308
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v0, :cond_0

    .line 309
    const/4 v2, 0x5

    .line 322
    :goto_0
    return v2

    .line 312
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 314
    .local v1, "supportedHWLevel":I
    packed-switch v1, :pswitch_data_0

    move v2, v3

    .line 322
    goto :goto_0

    :pswitch_0
    move v2, v3

    .line 316
    goto :goto_0

    .line 318
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    .line 320
    :pswitch_2
    const/4 v2, 0x3

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getDeviceSupportedFormats(Landroid/content/Context;I)[Lorg/chromium/media/VideoCaptureFormat;
    .locals 27
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 336
    invoke-static/range {p0 .. p1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 338
    .local v4, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v4, :cond_0

    const/16 v22, 0x0

    .line 378
    :goto_0
    return-object v22

    .line 340
    :cond_0
    sget-object v22, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 344
    .local v6, "capabilities":[I
    const/16 v16, 0x0

    .line 345
    .local v16, "minFrameDurationAvailable":Z
    move-object v2, v6

    .local v2, "arr$":[I
    array-length v12, v2

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v12, :cond_1

    aget v5, v2, v10

    .line 346
    .local v5, "cap":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_3

    .line 347
    const/16 v16, 0x1

    .line 352
    .end local v5    # "cap":I
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v8, "formatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/media/VideoCaptureFormat;>;"
    sget-object v22, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 356
    .local v21, "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v9

    .line 357
    .local v9, "formats":[I
    move-object v2, v9

    array-length v12, v2

    const/4 v10, 0x0

    move v11, v10

    .end local v2    # "arr$":[I
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_2
    if-ge v11, v12, :cond_7

    aget v7, v2, v11

    .line 358
    .local v7, "format":I
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v20

    .line 359
    .local v20, "sizes":[Landroid/util/Size;
    if-nez v20, :cond_4

    .line 357
    .end local v11    # "i$":I
    :cond_2
    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_2

    .line 345
    .end local v7    # "format":I
    .end local v8    # "formatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/media/VideoCaptureFormat;>;"
    .end local v9    # "formats":[I
    .end local v11    # "i$":I
    .end local v20    # "sizes":[Landroid/util/Size;
    .end local v21    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v2    # "arr$":[I
    .restart local v5    # "cap":I
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 360
    .end local v2    # "arr$":[I
    .end local v5    # "cap":I
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .restart local v7    # "format":I
    .restart local v8    # "formatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/media/VideoCaptureFormat;>;"
    .restart local v9    # "formats":[I
    .restart local v11    # "i$":I
    .restart local v20    # "sizes":[Landroid/util/Size;
    .restart local v21    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_4
    move-object/from16 v3, v20

    .local v3, "arr$":[Landroid/util/Size;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_3
    if-ge v10, v13, :cond_2

    aget-object v17, v3, v10

    .line 361
    .local v17, "size":Landroid/util/Size;
    const-wide/16 v18, 0x0

    .line 362
    .local v18, "minFrameRate":D
    if-eqz v16, :cond_6

    .line 363
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v14

    .line 365
    .local v14, "minFrameDuration":J
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-nez v22, :cond_5

    const-wide/16 v18, 0x0

    .line 372
    .end local v14    # "minFrameDuration":J
    :goto_4
    new-instance v22, Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v24

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-direct/range {v22 .. v26}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 365
    .restart local v14    # "minFrameDuration":J
    :cond_5
    const-wide v22, 0x41cdcd64ffffffffL    # 9.999999999999999E8

    long-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v18, v22, v24

    goto :goto_4

    .line 370
    .end local v14    # "minFrameDuration":J
    :cond_6
    const-wide/16 v18, 0x0

    goto :goto_4

    .line 378
    .end local v3    # "arr$":[Landroid/util/Size;
    .end local v7    # "format":I
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v17    # "size":Landroid/util/Size;
    .end local v18    # "minFrameRate":D
    .end local v20    # "sizes":[Landroid/util/Size;
    .restart local v11    # "i$":I
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Lorg/chromium/media/VideoCaptureFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lorg/chromium/media/VideoCaptureFormat;

    goto/16 :goto_0
.end method

.method static getName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 327
    invoke-static {p1, p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 329
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 331
    :goto_0
    return-object v2

    .line 330
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 331
    .local v1, "facing":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", facing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_1

    const-string v2, "front"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "back"

    goto :goto_1
.end method

.method static getNumberOfCameras(Landroid/content/Context;)I
    .locals 6
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 295
    const-string v3, "camera"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 298
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return v2

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v3, "cr.media"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumberOfCameras: getCameraIdList(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static isLegacyDevice(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 287
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 289
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readImageIntoBuffer(Landroid/media/Image;[B)V
    .locals 17
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "data"    # [B

    .prologue
    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 248
    .local v4, "imageWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 249
    .local v3, "imageHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v11

    .line 251
    .local v11, "planes":[Landroid/media/Image$Plane;
    const/4 v5, 0x0

    .line 252
    .local v5, "offset":I
    const/4 v8, 0x0

    .local v8, "plane":I
    :goto_0
    array-length v15, v11

    if-ge v8, v15, :cond_5

    .line 253
    aget-object v15, v11, v8

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 254
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    aget-object v15, v11, v8

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    .line 258
    .local v14, "rowStride":I
    aget-object v15, v11, v8

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    .line 259
    .local v7, "pixelStride":I
    if-nez v8, :cond_0

    move v10, v4

    .line 260
    .local v10, "planeWidth":I
    :goto_1
    if-nez v8, :cond_1

    move v9, v3

    .line 262
    .local v9, "planeHeight":I
    :goto_2
    const/4 v15, 0x1

    if-ne v7, v15, :cond_2

    if-ne v14, v10, :cond_2

    .line 264
    mul-int v15, v10, v9

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v5, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 265
    mul-int v15, v10, v9

    add-int/2addr v5, v15

    .line 252
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 259
    .end local v9    # "planeHeight":I
    .end local v10    # "planeWidth":I
    :cond_0
    div-int/lit8 v10, v4, 0x2

    goto :goto_1

    .line 260
    .restart local v10    # "planeWidth":I
    :cond_1
    div-int/lit8 v9, v3, 0x2

    goto :goto_2

    .line 268
    .restart local v9    # "planeHeight":I
    :cond_2
    new-array v13, v14, [B

    .line 269
    .local v13, "rowData":[B
    const/4 v12, 0x0

    .local v12, "row":I
    :goto_4
    add-int/lit8 v15, v9, -0x1

    if-ge v12, v15, :cond_4

    .line 270
    const/4 v15, 0x0

    invoke-virtual {v1, v13, v15, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 271
    const/4 v2, 0x0

    .local v2, "col":I
    move v6, v5

    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_5
    if-ge v2, v10, :cond_3

    .line 272
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    mul-int v15, v2, v7

    aget-byte v15, v13, v15

    aput-byte v15, p1, v6

    .line 271
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_5

    .line 269
    :cond_3
    add-int/lit8 v12, v12, 0x1

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_4

    .line 278
    .end local v2    # "col":I
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v13, v15, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 279
    const/4 v2, 0x0

    .restart local v2    # "col":I
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :goto_6
    if-ge v2, v10, :cond_6

    .line 280
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    mul-int v15, v2, v7

    aget-byte v15, v13, v15

    aput-byte v15, p1, v6

    .line 279
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_6

    .line 284
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "col":I
    .end local v6    # "offset":I
    .end local v7    # "pixelStride":I
    .end local v9    # "planeHeight":I
    .end local v10    # "planeWidth":I
    .end local v12    # "row":I
    .end local v13    # "rowData":[B
    .end local v14    # "rowStride":I
    .restart local v5    # "offset":I
    :cond_5
    return-void

    .end local v5    # "offset":I
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "col":I
    .restart local v6    # "offset":I
    .restart local v7    # "pixelStride":I
    .restart local v9    # "planeHeight":I
    .restart local v10    # "planeWidth":I
    .restart local v12    # "row":I
    .restart local v13    # "rowData":[B
    .restart local v14    # "rowStride":I
    :cond_6
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_3
.end method


# virtual methods
.method public allocate(III)Z
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 389
    const-string v2, "cr.media"

    const-string v5, "allocate: requested (%d x %d) @%dfps"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v5, v6, v7, v8}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    iget-boolean v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mOpeningCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mConfiguringCamera:Z

    if-eqz v2, :cond_1

    .line 391
    :cond_0
    const-string v2, "cr.media"

    const-string v3, "allocate() invoked while Camera is busy opening/configuring."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 408
    :goto_0
    return v3

    .line 395
    :cond_1
    new-instance v2, Lorg/chromium/media/VideoCaptureFormat;

    const/16 v5, 0x23

    invoke-direct {v2, p1, p2, p3, v5}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    iput-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    .line 396
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v2, v2, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v5, v5, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    mul-int/2addr v2, v5

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v5, v5, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    invoke-static {v5}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v5

    mul-int/2addr v2, v5

    div-int/lit8 v1, v2, 0x8

    .line 398
    .local v1, "expectedFrameSize":I
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B

    .line 399
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mId:I

    invoke-static {v2, v5}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 401
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraNativeOrientation:I

    .line 405
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mInvertDeviceOrientationReadings:Z

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method public deallocate()V
    .locals 2

    .prologue
    .line 456
    const-string v0, "cr.media"

    const-string v1, "deallocate"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public startCapture()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 413
    const-string v6, "cr.media"

    const-string v7, "startCapture"

    invoke-static {v6, v7}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iput-boolean v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mOpeningCamera:Z

    .line 415
    iput-boolean v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mConfiguringCamera:Z

    .line 416
    iget-object v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    const-string v7, "camera"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 418
    .local v2, "manager":Landroid/hardware/camera2/CameraManager;
    new-instance v1, Landroid/os/Handler;

    iget-object v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 419
    .local v1, "mainHandler":Landroid/os/Handler;
    new-instance v3, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 421
    .local v3, "stateListener":Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;
    :try_start_0
    iget v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v3, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 432
    :goto_0
    return v4

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v4, "cr.media"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allocate: manager.openCamera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v5

    .line 424
    goto :goto_0

    .line 425
    .end local v0    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v0

    .line 426
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v4, "cr.media"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allocate: manager.openCamera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v5

    .line 427
    goto :goto_0

    .line 428
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 429
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v4, "cr.media"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allocate: manager.openCamera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v5

    .line 430
    goto :goto_0
.end method

.method public stopCapture()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 437
    const-string v2, "cr.media"

    const-string v3, "stopCapture"

    invoke-static {v2, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v1

    .line 440
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 448
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_0

    .line 449
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 451
    const/4 v1, 0x1

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abortCaptures: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 444
    .end local v0    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v0

    .line 445
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abortCaptures: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
