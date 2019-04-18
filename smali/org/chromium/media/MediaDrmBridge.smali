.class public Lorg/chromium/media/MediaDrmBridge;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaDrmBridge$PostRequestTask;,
        Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;,
        Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;,
        Lorg/chromium/media/MediaDrmBridge$EventListener;,
        Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;,
        Lorg/chromium/media/MediaDrmBridge$KeyStatus;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DUMMY_KEY_ID:[B

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final HEX_CHAR_LOOKUP:[C

.field private static final INVALID_NATIVE_MEDIA_DRM_BRIDGE:J = 0x0L

.field private static final INVALID_SESSION_ID:I = 0x0

.field private static final PRIVACY_MODE:Ljava/lang/String; = "privacyMode"

.field private static final SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field private static final SERVER_CERTIFICATE:Ljava/lang/String; = "serviceCertificate"

.field private static final SESSION_SHARING:Ljava/lang/String; = "sessionSharing"

.field private static final TAG:Ljava/lang/String; = "cr.media"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaCrypto:Landroid/media/MediaCrypto;

.field private mMediaCryptoSession:[B

.field private mMediaDrm:Landroid/media/MediaDrm;

.field private mNativeMediaDrmBridge:J

.field private mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;",
            ">;"
        }
    .end annotation
.end field

.field private mProvisioningPending:Z

.field private mResetDeviceCredentialsPending:Z

.field private mSchemeUUID:Ljava/util/UUID;

.field private mSessionIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    const-class v0, Lorg/chromium/media/MediaDrmBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    .line 68
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/chromium/media/MediaDrmBridge;->HEX_CHAR_LOOKUP:[C

    .line 74
    new-array v0, v1, [B

    aput-byte v2, v0, v2

    sput-object v0, Lorg/chromium/media/MediaDrmBridge;->DUMMY_KEY_ID:[B

    return-void

    :cond_0
    move v0, v2

    .line 36
    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/UUID;J)V
    .locals 4
    .param p1, "schemeUUID"    # Ljava/util/UUID;
    .param p2, "nativeMediaDrmBridge"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->mSchemeUUID:Ljava/util/UUID;

    .line 207
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    .line 209
    iput-wide p2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    .line 210
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 212
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    .line 214
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    .line 215
    iput-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 216
    iput-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    .line 218
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$EventListener;

    invoke-direct {v1, p0, v2}, Lorg/chromium/media/MediaDrmBridge$EventListener;-><init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 220
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;

    invoke-direct {v1, p0, v2}, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;-><init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V

    .line 221
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;

    invoke-direct {v1, p0, v2}, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;-><init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    .line 224
    :cond_1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "privacyMode"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "sessionSharing"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/media/MediaDrmBridge;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/chromium/media/MediaDrmBridge;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 38
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/chromium/media/MediaDrmBridge;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->nativeOnMediaCryptoReady(J)V

    return-void
.end method

.method static synthetic access$1300(Lorg/chromium/media/MediaDrmBridge;JJ)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->nativeOnPromiseResolved(JJ)V

    return-void
.end method

.method static synthetic access$1400(Lorg/chromium/media/MediaDrmBridge;JJ[B)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # [B

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->nativeOnPromiseResolvedWithSession(JJ[B)V

    return-void
.end method

.method static synthetic access$1500(Lorg/chromium/media/MediaDrmBridge;JJLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->nativeOnPromiseRejected(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/chromium/media/MediaDrmBridge;J[BI[BLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B
    .param p4, "x3"    # I
    .param p5, "x4"    # [B
    .param p6, "x5"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p6}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionMessage(J[BI[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/chromium/media/MediaDrmBridge;J[B)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionClosed(J[B)V

    return-void
.end method

.method static synthetic access$1800(Lorg/chromium/media/MediaDrmBridge;J[B[Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B
    .param p4, "x3"    # [Ljava/lang/Object;
    .param p5, "x4"    # Z

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionKeysChange(J[B[Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$1900(Lorg/chromium/media/MediaDrmBridge;J[BJ)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B
    .param p4, "x3"    # J

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionExpirationUpdate(J[BJ)V

    return-void
.end method

.method static synthetic access$2000(Lorg/chromium/media/MediaDrmBridge;J[BLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->nativeOnLegacySessionError(J[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/chromium/media/MediaDrmBridge;JZ)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->nativeOnResetDeviceCredentialsCompleted(JZ)V

    return-void
.end method

.method static synthetic access$2200(Lorg/chromium/media/MediaDrmBridge;[B)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300([B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B

    .prologue
    .line 38
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lorg/chromium/media/MediaDrmBridge;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    return v0
.end method

.method static synthetic access$2500(Lorg/chromium/media/MediaDrmBridge;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/chromium/media/MediaDrmBridge;[B[BLjava/lang/String;Ljava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->getKeyRequest([B[BLjava/lang/String;Ljava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->startProvisioning()V

    return-void
.end method

.method static synthetic access$2800(Lorg/chromium/media/MediaDrmBridge;[BLandroid/media/MediaDrm$KeyRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/media/MediaDrm$KeyRequest;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->onSessionMessage([BLandroid/media/MediaDrm$KeyRequest;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/chromium/media/MediaDrmBridge;[BLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->onLegacySessionError([BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 38
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->getDummyKeysInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lorg/chromium/media/MediaDrmBridge;[B[Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange([B[Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$3200(Lorg/chromium/media/MediaDrmBridge;[BJ)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B
    .param p2, "x2"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->onSessionExpirationUpdate([BJ)V

    return-void
.end method

.method static synthetic access$3300(Lorg/chromium/media/MediaDrmBridge;[B)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onProvisionResponse([B)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->processPendingCreateSessionData()V

    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "hexString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 193
    sget-object v2, Lorg/chromium/media/MediaDrmBridge;->HEX_CHAR_LOOKUP:[C

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    sget-object v2, Lorg/chromium/media/MediaDrmBridge;->HEX_CHAR_LOOKUP:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private closeSession([BJ)V
    .locals 6
    .param p1, "sessionId"    # [B
    .param p2, "promiseId"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 673
    const-string v1, "cr.media"

    const-string v2, "closeSession()"

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v1, :cond_0

    .line 675
    const-string v1, "closeSession() called when MediaDrm is null."

    invoke-direct {p0, p2, p3, v1}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    .line 696
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sessionId in closeSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, p3, v1}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_1
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 692
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-direct {p0, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolved(J)V

    .line 694
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionClosed([B)V

    .line 695
    const-string v1, "cr.media"

    const-string v2, "Session %s closed"

    invoke-static {p1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "cr.media"

    const-string v2, "removeKeys failed: "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static create([BJ)Lorg/chromium/media/MediaDrmBridge;
    .locals 9
    .param p0, "schemeUUID"    # [B
    .param p1, "nativeMediaDrmBridge"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 329
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->getUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    .line 330
    .local v0, "cryptoScheme":Ljava/util/UUID;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 331
    :cond_0
    const/4 v2, 0x0

    .line 346
    :goto_0
    return-object v2

    .line 334
    :cond_1
    const/4 v2, 0x0

    .line 336
    .local v2, "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :try_start_0
    new-instance v3, Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {v3, v0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;-><init>(Ljava/util/UUID;J)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 337
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .local v3, "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :try_start_1
    const-string v4, "cr.media"

    const-string v5, "MediaDrmBridge successfully created."

    invoke-static {v4, v5}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 344
    .end local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Landroid/media/UnsupportedSchemeException;
    :goto_1
    const-string v4, "cr.media"

    const-string v5, "Unsupported DRM scheme"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 340
    .end local v1    # "e":Landroid/media/UnsupportedSchemeException;
    :catch_1
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    const-string v4, "cr.media"

    const-string v5, "Failed to create MediaDrmBridge"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/IllegalStateException;
    :goto_3
    const-string v4, "cr.media"

    const-string v5, "Failed to create MediaDrmBridge"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    goto :goto_3

    .line 340
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    goto :goto_2

    .line 338
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    goto :goto_1
.end method

.method private createMediaCrypto()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 240
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v3, :cond_0

    .line 272
    :goto_0
    return v1

    .line 243
    :cond_0
    sget-boolean v3, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 244
    :cond_1
    sget-boolean v3, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-eqz v3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 245
    :cond_2
    sget-boolean v3, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 248
    :cond_3
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->openSession()[B

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    .line 249
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-nez v3, :cond_4

    .line 250
    const-string v2, "cr.media"

    const-string v3, "Cannot create MediaCrypto Session."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_4
    const-string v3, "cr.media"

    const-string v4, "MediaCrypto Session created: %s"

    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    invoke-static {v5}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    :try_start_0
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mSchemeUUID:Ljava/util/UUID;

    invoke-static {v3}, Landroid/media/MediaCrypto;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 259
    new-instance v3, Landroid/media/MediaCrypto;

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSchemeUUID:Ljava/util/UUID;

    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    invoke-direct {v3, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    .line 260
    const-string v3, "cr.media"

    const-string v4, "MediaCrypto successfully created!"

    invoke-static {v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->onMediaCryptoReady()V

    move v1, v2

    .line 263
    goto :goto_0

    .line 265
    :cond_5
    const-string v3, "cr.media"

    const-string v4, "Cannot create MediaCrypto for unsupported scheme."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_1
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/media/MediaCryptoException;
    const-string v3, "cr.media"

    const-string v4, "Cannot create MediaCrypto"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private createSession([BLjava/lang/String;Ljava/util/HashMap;J)V
    .locals 8
    .param p1, "initData"    # [B
    .param p2, "mime"    # Ljava/lang/String;
    .param p4, "promiseId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p3, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 594
    const-string v4, "cr.media"

    const-string v5, "createSession()"

    invoke-static {v4, v5}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v4, :cond_0

    .line 596
    const-string v4, "cr.media"

    const-string v5, "createSession() called when MediaDrm is null."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-boolean v4, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v4, :cond_2

    .line 601
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 602
    :cond_1
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->savePendingCreateSessionData([BLjava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0

    .line 606
    :cond_2
    const/4 v1, 0x0

    .line 607
    .local v1, "newSessionOpened":Z
    const/4 v3, 0x0

    .line 610
    .local v3, "sessionId":[B
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-nez v4, :cond_4

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->createMediaCrypto()Z

    move-result v4

    if-nez v4, :cond_4

    .line 611
    const-string v4, "MediaCrypto creation failed."

    invoke-direct {p0, p4, p5, v4}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Landroid/media/NotProvisionedException;
    const-string v4, "cr.media"

    const-string v5, "Device not provisioned"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    if-eqz v1, :cond_3

    .line 641
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v4, v3}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 643
    :cond_3
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->savePendingCreateSessionData([BLjava/lang/String;Ljava/util/HashMap;J)V

    .line 644
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->startProvisioning()V

    goto :goto_0

    .line 614
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :cond_4
    :try_start_1
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 615
    :cond_5
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 617
    :cond_6
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->openSession()[B

    move-result-object v3

    .line 618
    if-nez v3, :cond_7

    .line 619
    const-string v4, "Open session failed."

    invoke-direct {p0, p4, p5, v4}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_7
    const/4 v1, 0x1

    .line 623
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    invoke-direct {p0, v3}, Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 625
    :cond_8
    const/4 v2, 0x0

    .line 626
    .local v2, "request":Landroid/media/MediaDrm$KeyRequest;
    invoke-direct {p0, v3, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->getKeyRequest([B[BLjava/lang/String;Ljava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v2

    .line 627
    if-nez v2, :cond_9

    .line 628
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v4, v3}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 629
    const-string v4, "Generate request failed."

    invoke-direct {p0, p4, p5, v4}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 634
    :cond_9
    const-string v4, "cr.media"

    const-string v5, "createSession(): Session (%s) created."

    invoke-static {v3}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    invoke-direct {p0, p4, p5, v3}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolvedWithSession(J[B)V

    .line 636
    invoke-direct {p0, v3, v2}, Lorg/chromium/media/MediaDrmBridge;->onSessionMessage([BLandroid/media/MediaDrm$KeyRequest;)V

    .line 637
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private createSessionFromNative([BLjava/lang/String;[Ljava/lang/String;J)V
    .locals 8
    .param p1, "initData"    # [B
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "optionalParamsArray"    # [Ljava/lang/String;
    .param p4, "promiseId"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 571
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 572
    .local v3, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    .line 573
    array-length v0, p3

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Additional data array doesn\'t have equal keys/values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p3

    if-ge v6, v0, :cond_1

    .line 578
    aget-object v0, p3, v6

    add-int/lit8 v1, v6, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .end local v6    # "i":I
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 581
    invoke-direct/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->createSession([BLjava/lang/String;Ljava/util/HashMap;J)V

    .line 582
    return-void
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 429
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    .line 430
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    .line 433
    :cond_0
    return-void
.end method

.method private static getDummyKeysInfo(I)Ljava/util/List;
    .locals 4
    .param p0, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/media/MediaDrmBridge$KeyStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "keysInfo":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/media/MediaDrmBridge$KeyStatus;>;"
    new-instance v1, Lorg/chromium/media/MediaDrmBridge$KeyStatus;

    sget-object v2, Lorg/chromium/media/MediaDrmBridge;->DUMMY_KEY_ID:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/chromium/media/MediaDrmBridge$KeyStatus;-><init>([BILorg/chromium/media/MediaDrmBridge$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-object v0
.end method

.method private getKeyRequest([B[BLjava/lang/String;Ljava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .locals 10
    .param p1, "sessionId"    # [B
    .param p2, "data"    # [B
    .param p3, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    .local p4, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 488
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 489
    :cond_0
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 490
    :cond_1
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 492
    :cond_2
    if-nez p4, :cond_3

    .line 493
    new-instance p4, Ljava/util/HashMap;

    .end local p4    # "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 496
    .restart local p4    # "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const/4 v7, 0x0

    .line 499
    .local v7, "request":Landroid/media/MediaDrm$KeyRequest;
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 509
    :cond_4
    :goto_0
    if-eqz v7, :cond_5

    const-string v8, "successed"

    .line 510
    .local v8, "result":Ljava/lang/String;
    :goto_1
    const-string v0, "cr.media"

    const-string v1, "getKeyRequest %s!"

    invoke-static {v0, v1, v8}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 512
    return-object v7

    .line 501
    .end local v8    # "result":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 502
    .local v6, "e":Ljava/lang/IllegalStateException;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    instance-of v0, v6, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v0, :cond_4

    .line 505
    const-string v0, "cr.media"

    const-string v1, "MediaDrmStateException fired during getKeyRequest()."

    new-array v2, v9, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 509
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    const-string v8, "failed"

    goto :goto_1
.end method

.method private getMediaCrypto()Landroid/media/MediaCrypto;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method private getSecurityLevel()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 751
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    .line 752
    const-string v0, "cr.media"

    const-string v1, "getSecurityLevel() called when MediaDrm is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    const/4 v0, 0x0

    .line 755
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "securityLevel"

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUUIDFromBytes([B)Ljava/util/UUID;
    .locals 12
    .param p0, "data"    # [B

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x8

    .line 172
    array-length v1, p0

    if-eq v1, v11, :cond_0

    .line 173
    const/4 v1, 0x0

    .line 183
    :goto_0
    return-object v1

    .line 175
    :cond_0
    const-wide/16 v4, 0x0

    .line 176
    .local v4, "mostSigBits":J
    const-wide/16 v2, 0x0

    .line 177
    .local v2, "leastSigBits":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_1

    .line 178
    shl-long v6, v4, v10

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    or-long v4, v6, v8

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_1
    const/16 v0, 0x8

    :goto_2
    if-ge v0, v11, :cond_2

    .line 181
    shl-long v6, v2, v10

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    or-long v2, v6, v8

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 183
    :cond_2
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0
.end method

.method private static isCryptoSchemeSupported([BLjava/lang/String;)Z
    .locals 2
    .param p0, "schemeUUID"    # [B
    .param p1, "containerMimeType"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 312
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->getUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    .line 314
    .local v0, "cryptoScheme":Ljava/util/UUID;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v1

    .line 318
    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isNativeMediaDrmBridgeValid()Z
    .locals 4

    .prologue
    .line 200
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeOnLegacySessionError(J[BLjava/lang/String;)V
.end method

.method private native nativeOnMediaCryptoReady(J)V
.end method

.method private native nativeOnPromiseRejected(JJLjava/lang/String;)V
.end method

.method private native nativeOnPromiseResolved(JJ)V
.end method

.method private native nativeOnPromiseResolvedWithSession(JJ[B)V
.end method

.method private native nativeOnResetDeviceCredentialsCompleted(JZ)V
.end method

.method private native nativeOnSessionClosed(J[B)V
.end method

.method private native nativeOnSessionExpirationUpdate(J[BJ)V
.end method

.method private native nativeOnSessionKeysChange(J[B[Ljava/lang/Object;Z)V
.end method

.method private native nativeOnSessionMessage(J[BI[BLjava/lang/String;)V
.end method

.method private onLegacySessionError([BLjava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # [B
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 927
    const-string v0, "cr.media"

    const-string v1, "onLegacySessionError: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 928
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$10;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge$10;-><init>(Lorg/chromium/media/MediaDrmBridge;[BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 936
    return-void
.end method

.method private onMediaCryptoReady()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$2;

    invoke-direct {v1, p0}, Lorg/chromium/media/MediaDrmBridge$2;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 828
    return-void
.end method

.method private onPromiseRejected(JLjava/lang/String;)V
    .locals 5
    .param p1, "promiseId"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 853
    const-string v0, "cr.media"

    const-string v1, "onPromiseRejected: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge$5;-><init>(Lorg/chromium/media/MediaDrmBridge;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 862
    return-void
.end method

.method private onPromiseResolved(J)V
    .locals 3
    .param p1, "promiseId"    # J

    .prologue
    .line 831
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge$3;-><init>(Lorg/chromium/media/MediaDrmBridge;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    return-void
.end method

.method private onPromiseResolvedWithSession(J[B)V
    .locals 3
    .param p1, "promiseId"    # J
    .param p3, "sessionId"    # [B

    .prologue
    .line 842
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge$4;-><init>(Lorg/chromium/media/MediaDrmBridge;J[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 850
    return-void
.end method

.method private onProvisionResponse([B)V
    .locals 4
    .param p1, "response"    # [B

    .prologue
    const/4 v3, 0x0

    .line 774
    const-string v1, "cr.media"

    const-string v2, "onProvisionResponse()"

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    sget-boolean v1, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 776
    :cond_0
    iput-boolean v3, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    .line 779
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v1, :cond_2

    .line 793
    :cond_1
    :goto_0
    return-void

    .line 783
    :cond_2
    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->provideProvisionResponse([B)Z

    move-result v0

    .line 785
    .local v0, "success":Z
    iget-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    if-eqz v1, :cond_3

    .line 786
    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->onResetDeviceCredentialsCompleted(Z)V

    .line 787
    iput-boolean v3, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 790
    :cond_3
    if-eqz v0, :cond_1

    .line 791
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->resumePendingOperations()V

    goto :goto_0
.end method

.method private onResetDeviceCredentialsCompleted(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 939
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$11;

    invoke-direct {v1, p0, p1}, Lorg/chromium/media/MediaDrmBridge$11;-><init>(Lorg/chromium/media/MediaDrmBridge;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 947
    return-void
.end method

.method private onSessionClosed([B)V
    .locals 2
    .param p1, "sessionId"    # [B

    .prologue
    .line 891
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$7;

    invoke-direct {v1, p0, p1}, Lorg/chromium/media/MediaDrmBridge$7;-><init>(Lorg/chromium/media/MediaDrmBridge;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 899
    return-void
.end method

.method private onSessionExpirationUpdate([BJ)V
    .locals 2
    .param p1, "sessionId"    # [B
    .param p2, "expirationTime"    # J

    .prologue
    .line 915
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge$9;-><init>(Lorg/chromium/media/MediaDrmBridge;[BJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 924
    return-void
.end method

.method private onSessionKeysChange([B[Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "sessionId"    # [B
    .param p2, "keysInfo"    # [Ljava/lang/Object;
    .param p3, "hasAdditionalUsableKey"    # Z

    .prologue
    .line 903
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge$8;-><init>(Lorg/chromium/media/MediaDrmBridge;[B[Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 912
    return-void
.end method

.method private onSessionMessage([BLandroid/media/MediaDrm$KeyRequest;)V
    .locals 2
    .param p1, "sessionId"    # [B
    .param p2, "request"    # Landroid/media/MediaDrm$KeyRequest;

    .prologue
    .line 865
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$6;

    invoke-direct {v1, p0, p2, p1}, Lorg/chromium/media/MediaDrmBridge$6;-><init>(Lorg/chromium/media/MediaDrmBridge;Landroid/media/MediaDrm$KeyRequest;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 888
    return-void
.end method

.method private openSession()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 281
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 283
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    .line 285
    .local v1, "sessionId":[B
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 298
    .end local v1    # "sessionId":[B
    :goto_0
    return-object v2

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "cr.media"

    const-string v4, "Cannot open a new session"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    move-object v2, v3

    .line 289
    goto :goto_0

    .line 290
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 292
    .local v0, "e":Landroid/media/NotProvisionedException;
    throw v0

    .line 293
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :catch_2
    move-exception v0

    .line 296
    .local v0, "e":Landroid/media/MediaDrmException;
    const-string v2, "cr.media"

    const-string v4, "Cannot open a new session"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    move-object v2, v3

    .line 298
    goto :goto_0
.end method

.method private processPendingCreateSessionData()V
    .locals 8

    .prologue
    .line 535
    const-string v0, "cr.media"

    const-string v7, "processPendingCreateSessionData()"

    invoke-static {v0, v7}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 542
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .line 544
    .local v6, "pendingData":Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
    invoke-static {v6}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$600(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)[B

    move-result-object v1

    .line 545
    .local v1, "initData":[B
    invoke-static {v6}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$700(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "mime":Ljava/lang/String;
    invoke-static {v6}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$800(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)Ljava/util/HashMap;

    move-result-object v3

    .line 547
    .local v3, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v6}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$400(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)J

    move-result-wide v4

    .local v4, "promiseId":J
    move-object v0, p0

    .line 548
    invoke-direct/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->createSession([BLjava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0

    .line 550
    .end local v1    # "initData":[B
    .end local v2    # "mime":Ljava/lang/String;
    .end local v3    # "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "promiseId":J
    .end local v6    # "pendingData":Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
    :cond_1
    return-void
.end method

.method private release()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 442
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .line 443
    .local v0, "data":Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$400(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)J

    move-result-wide v4

    const-string v6, "Create session aborted."

    invoke-direct {p0, v4, v5, v6}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto :goto_0

    .line 445
    .end local v0    # "data":Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
    :cond_0
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 446
    iput-object v8, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    .line 448
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 451
    .local v3, "sessionId":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_2
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 456
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/chromium/media/MediaDrmBridge;->onSessionClosed([B)V

    goto :goto_1

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "cr.media"

    const-string v5, "removeKeys failed: "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 458
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "sessionId":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 459
    iput-object v8, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    .line 462
    iput-object v8, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    .line 464
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v4, :cond_2

    .line 465
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v4}, Landroid/media/MediaCrypto;->release()V

    .line 466
    iput-object v8, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    .line 469
    :cond_2
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v4, :cond_3

    .line 470
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v4}, Landroid/media/MediaDrm;->release()V

    .line 471
    iput-object v8, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    .line 473
    :cond_3
    return-void
.end method

.method private resetDeviceCredentials()V
    .locals 6
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 418
    iput-boolean v3, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 419
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v1

    .line 420
    .local v1, "request":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;-><init>(Lorg/chromium/media/MediaDrmBridge;[B)V

    .line 421
    .local v0, "postTask":Lorg/chromium/media/MediaDrmBridge$PostRequestTask;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 422
    return-void
.end method

.method private resumePendingOperations()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$1;

    invoke-direct {v1, p0}, Lorg/chromium/media/MediaDrmBridge$1;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    return-void
.end method

.method private savePendingCreateSessionData([BLjava/lang/String;Ljava/util/HashMap;J)V
    .locals 8
    .param p1, "initData"    # [B
    .param p2, "mime"    # Ljava/lang/String;
    .param p4, "promiseId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p3, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "cr.media"

    const-string v1, "savePendingCreateSessionData()"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v7, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    new-instance v0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;-><init>([BLjava/lang/String;Ljava/util/HashMap;JLorg/chromium/media/MediaDrmBridge$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 529
    return-void
.end method

.method private sessionExists([B)Z
    .locals 4
    .param p1, "sessionId"    # [B

    .prologue
    const/4 v0, 0x0

    .line 656
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-nez v1, :cond_2

    .line 657
    sget-boolean v1, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 658
    :cond_0
    const-string v1, "cr.media"

    const-string v2, "Session doesn\'t exist because media crypto session is not created."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setSecurityLevel(Ljava/lang/String;)Z
    .locals 8
    .param p1, "securityLevel"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 359
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 382
    :cond_1
    :goto_0
    return v2

    .line 363
    :cond_2
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v5, "securityLevel"

    invoke-virtual {v4, v5}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "currentSecurityLevel":Ljava/lang/String;
    const-string v4, "cr.media"

    const-string v5, "Security level: current %s, new %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object p1, v6, v2

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 373
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v5, "securityLevel"

    invoke-virtual {v4, v5, p1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "cr.media"

    const-string v5, "Failed to set security level %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object v1, v6, v2

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const-string v4, "cr.media"

    const-string v5, "Security level %s not supported!"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v4, v5, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 382
    goto :goto_0

    .line 377
    :catch_1
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v4, "cr.media"

    const-string v5, "Failed to set security level %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object v1, v6, v2

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setServerCertificate([B)Z
    .locals 5
    .param p1, "certificate"    # [B
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 394
    :try_start_0
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v4, "serviceCertificate"

    invoke-virtual {v3, v4, p1}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 402
    :goto_0
    return v1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "cr.media"

    const-string v4, "Failed to set server certificate"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    move v1, v2

    .line 402
    goto :goto_0

    .line 398
    :catch_1
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "cr.media"

    const-string v4, "Failed to set server certificate"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private startProvisioning()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 759
    const-string v2, "cr.media"

    const-string v3, "startProvisioning"

    invoke-static {v2, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 761
    :cond_0
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 762
    :cond_1
    iput-boolean v4, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    .line 763
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v1

    .line 764
    .local v1, "request":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;-><init>(Lorg/chromium/media/MediaDrmBridge;[B)V

    .line 765
    .local v0, "postTask":Lorg/chromium/media/MediaDrmBridge$PostRequestTask;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 766
    return-void
.end method

.method private updateSession([B[BJ)V
    .locals 7
    .param p1, "sessionId"    # [B
    .param p2, "response"    # [B
    .param p3, "promiseId"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 707
    const-string v1, "cr.media"

    const-string v2, "updateSession()"

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v1, :cond_1

    .line 709
    const-string v1, "updateSession() called when MediaDrm is null."

    invoke-direct {p0, p3, p4, v1}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session in updateSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, p4, v1}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto :goto_0

    .line 722
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 729
    :goto_1
    :try_start_1
    const-string v1, "cr.media"

    const-string v2, "Key successfully added for session %s"

    invoke-static {p1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 730
    invoke-direct {p0, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolved(J)V

    .line 731
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 732
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->getDummyKeysInfo(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange([B[Ljava/lang/Object;Z)V
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Landroid/media/NotProvisionedException;
    const-string v1, "cr.media"

    const-string v2, "failed to provide key response"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :goto_2
    const-string v1, "Update session failed."

    invoke-direct {p0, p3, p4, v1}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    .line 743
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    goto :goto_0

    .line 723
    :catch_1
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v1, "cr.media"

    const-string v2, "Exception intentionally caught when calling provideKeyResponse()"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 739
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 740
    .local v0, "e":Landroid/media/DeniedByServerException;
    const-string v1, "cr.media"

    const-string v2, "failed to provide key response"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method provideProvisionResponse([B)Z
    .locals 5
    .param p1, "response"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 801
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 802
    :cond_0
    const-string v1, "cr.media"

    const-string v3, "Invalid provision response."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 814
    :goto_0
    return v1

    .line 807
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Landroid/media/DeniedByServerException;
    const-string v3, "cr.media"

    const-string v4, "failed to provide provision response"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v0    # "e":Landroid/media/DeniedByServerException;
    :goto_1
    move v1, v2

    .line 814
    goto :goto_0

    .line 811
    :catch_1
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "cr.media"

    const-string v4, "failed to provide provision response"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
