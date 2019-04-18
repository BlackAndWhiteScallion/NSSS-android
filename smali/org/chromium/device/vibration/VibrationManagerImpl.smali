.class public Lorg/chromium/device/vibration/VibrationManagerImpl;
.super Ljava/lang/Object;
.source "VibrationManagerImpl.java"

# interfaces
.implements Lorg/chromium/mojom/device/VibrationManager;


# static fields
.field private static final MAXIMUM_VIBRATION_DURATION_MS:J = 0x2710L

.field private static final MINIMUM_VIBRATION_DURATION_MS:J = 0x1L

.field private static final TAG:Ljava/lang/String; = "VibrationManagerImpl"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHasVibratePermission:Z

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 32
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mVibrator:Landroid/os/Vibrator;

    .line 33
    const-string v0, "android.permission.VIBRATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mHasVibratePermission:Z

    .line 36
    iget-boolean v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mHasVibratePermission:Z

    if-nez v0, :cond_0

    .line 37
    const-string v0, "VibrationManagerImpl"

    const-string v1, "Failed to use vibrate API, requires VIBRATE permission."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mHasVibratePermission:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 63
    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0
    .param p1, "e"    # Lorg/chromium/mojo/system/MojoException;

    .prologue
    .line 45
    return-void
.end method

.method public vibrate(J)V
    .locals 7
    .param p1, "milliseconds"    # J

    .prologue
    .line 51
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x2710

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 54
    .local v0, "sanitizedMilliseconds":J
    iget-object v2, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mHasVibratePermission:Z

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 58
    :cond_0
    return-void
.end method
