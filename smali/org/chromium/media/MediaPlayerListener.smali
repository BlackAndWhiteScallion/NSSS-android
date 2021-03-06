.class Lorg/chromium/media/MediaPlayerListener;
.super Ljava/lang/Object;
.source "MediaPlayerListener.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media"
.end annotation


# static fields
.field private static final MEDIA_ERROR_DECODE:I = 0x1

.field private static final MEDIA_ERROR_FORMAT:I = 0x0

.field private static final MEDIA_ERROR_INVALID_CODE:I = 0x3

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field private static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0x2

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNativeMediaPlayerListener:J


# direct methods
.method private constructor <init>(JLandroid/content/Context;)V
    .locals 3
    .param p1, "nativeMediaPlayerListener"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    .line 38
    iput-wide p1, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    .line 39
    iput-object p3, p0, Lorg/chromium/media/MediaPlayerListener;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private static create(JLandroid/content/Context;Lorg/chromium/media/MediaPlayerBridge;)Lorg/chromium/media/MediaPlayerListener;
    .locals 2
    .param p0, "nativeMediaPlayerListener"    # J
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mediaPlayerBridge"    # Lorg/chromium/media/MediaPlayerBridge;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lorg/chromium/media/MediaPlayerListener;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/media/MediaPlayerListener;-><init>(JLandroid/content/Context;)V

    .line 107
    .local v0, "listener":Lorg/chromium/media/MediaPlayerListener;
    if-eqz p3, :cond_0

    .line 108
    invoke-virtual {p3, v0}, Lorg/chromium/media/MediaPlayerBridge;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 109
    invoke-virtual {p3, v0}, Lorg/chromium/media/MediaPlayerBridge;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 110
    invoke-virtual {p3, v0}, Lorg/chromium/media/MediaPlayerBridge;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 111
    invoke-virtual {p3, v0}, Lorg/chromium/media/MediaPlayerBridge;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 112
    invoke-virtual {p3, v0}, Lorg/chromium/media/MediaPlayerBridge;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 113
    invoke-virtual {p3, v0}, Lorg/chromium/media/MediaPlayerBridge;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 115
    :cond_0
    return-object v0
.end method

.method private native nativeOnBufferingUpdate(JI)V
.end method

.method private native nativeOnMediaError(JI)V
.end method

.method private native nativeOnMediaInterrupted(J)V
.end method

.method private native nativeOnMediaPrepared(J)V
.end method

.method private native nativeOnPlaybackComplete(J)V
.end method

.method private native nativeOnSeekComplete(J)V
.end method

.method private native nativeOnVideoSizeChanged(JII)V
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    invoke-direct {p0, v0, v1, p2}, Lorg/chromium/media/MediaPlayerListener;->nativeOnBufferingUpdate(JI)V

    .line 90
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/media/MediaPlayerListener;->nativeOnPlaybackComplete(J)V

    .line 95
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 45
    sparse-switch p2, :sswitch_data_0

    .line 70
    const/4 v0, 0x3

    .line 73
    .local v0, "errorType":I
    :goto_0
    iget-wide v2, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/media/MediaPlayerListener;->nativeOnMediaError(JI)V

    .line 74
    const/4 v1, 0x1

    return v1

    .line 47
    .end local v0    # "errorType":I
    :sswitch_0
    sparse-switch p3, :sswitch_data_1

    .line 55
    const/4 v0, 0x0

    .line 56
    .restart local v0    # "errorType":I
    goto :goto_0

    .line 49
    .end local v0    # "errorType":I
    :sswitch_1
    const/4 v0, 0x1

    .line 50
    .restart local v0    # "errorType":I
    goto :goto_0

    .line 52
    .end local v0    # "errorType":I
    :sswitch_2
    const/4 v0, 0x3

    .line 53
    .restart local v0    # "errorType":I
    goto :goto_0

    .line 60
    .end local v0    # "errorType":I
    :sswitch_3
    const/4 v0, 0x1

    .line 61
    .restart local v0    # "errorType":I
    goto :goto_0

    .line 63
    .end local v0    # "errorType":I
    :sswitch_4
    const/4 v0, 0x2

    .line 64
    .restart local v0    # "errorType":I
    goto :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_4
    .end sparse-switch

    .line 47
    :sswitch_data_1
    .sparse-switch
        -0x3ef -> :sswitch_1
        -0x6e -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/media/MediaPlayerListener;->nativeOnMediaPrepared(J)V

    .line 100
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/media/MediaPlayerListener;->nativeOnSeekComplete(J)V

    .line 85
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:J

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/chromium/media/MediaPlayerListener;->nativeOnVideoSizeChanged(JII)V

    .line 80
    return-void
.end method
