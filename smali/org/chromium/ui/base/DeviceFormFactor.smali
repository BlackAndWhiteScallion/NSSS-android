.class public Lorg/chromium/ui/base/DeviceFormFactor;
.super Ljava/lang/Object;
.source "DeviceFormFactor.java"


# static fields
.field private static final MINIMUM_LARGE_TABLET_WIDTH_DP:I = 0x2d0

.field private static final MINIMUM_TABLET_WIDTH_DP:I = 0x258

.field private static sIsLargeTablet:Ljava/lang/Boolean;

.field private static sIsTablet:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    .line 23
    sput-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLargeTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 46
    .local v0, "minimumScreenWidthDp":I
    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    .line 48
    .end local v0    # "minimumScreenWidthDp":I
    :cond_0
    sget-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 46
    .restart local v0    # "minimumScreenWidthDp":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 31
    sget-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 34
    .local v0, "minimumScreenWidthDp":I
    const/16 v1, 0x258

    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    .line 36
    .end local v0    # "minimumScreenWidthDp":I
    :cond_0
    sget-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 34
    .restart local v0    # "minimumScreenWidthDp":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
