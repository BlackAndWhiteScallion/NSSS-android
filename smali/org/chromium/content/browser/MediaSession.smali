.class public Lorg/chromium/content/browser/MediaSession;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cr.MediaSession"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFocusType:I

.field private final mNativeMediaSession:J


# direct methods
.method private constructor <init>(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeMediaSession"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/chromium/content/browser/MediaSession;->mContext:Landroid/content/Context;

    .line 36
    iput-wide p2, p0, Lorg/chromium/content/browser/MediaSession;->mNativeMediaSession:J

    .line 37
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lorg/chromium/content/browser/MediaSession;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 54
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 55
    return-void
.end method

.method private static createMediaSession(Landroid/content/Context;J)Lorg/chromium/content/browser/MediaSession;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativeMediaSession"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lorg/chromium/content/browser/MediaSession;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/MediaSession;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private native nativeOnResume(J)V
.end method

.method private native nativeOnSuspend(JZ)V
.end method

.method private requestAudioFocus(Z)Z
    .locals 1
    .param p1, "transientFocus"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 46
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lorg/chromium/content/browser/MediaSession;->mFocusType:I

    .line 48
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaSession;->requestAudioFocusInternal()Z

    move-result v0

    return v0

    .line 46
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requestAudioFocusInternal()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 58
    iget-object v3, p0, Lorg/chromium/content/browser/MediaSession;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 60
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v3, 0x3

    iget v4, p0, Lorg/chromium/content/browser/MediaSession;->mFocusType:I

    invoke-virtual {v0, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 61
    .local v1, "result":I
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5
    .param p1, "focusChange"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 81
    :pswitch_0
    const-string v0, "cr.MediaSession"

    const-string v1, "onAudioFocusChange called with unexpected value %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 68
    :pswitch_1
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaSession;->requestAudioFocusInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSession;->mNativeMediaSession:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/MediaSession;->nativeOnResume(J)V

    goto :goto_0

    .line 74
    :pswitch_2
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSession;->mNativeMediaSession:J

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/MediaSession;->nativeOnSuspend(JZ)V

    goto :goto_0

    .line 77
    :pswitch_3
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaSession;->abandonAudioFocus()V

    .line 78
    iget-wide v0, p0, Lorg/chromium/content/browser/MediaSession;->mNativeMediaSession:J

    invoke-direct {p0, v0, v1, v4}, Lorg/chromium/content/browser/MediaSession;->nativeOnSuspend(JZ)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
