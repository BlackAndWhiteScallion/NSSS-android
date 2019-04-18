.class public Lorg/chromium/content/browser/ContentViewClient;
.super Ljava/lang/Object;
.source "ContentViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "cr.ContentViewClient"

.field private static final UNSPECIFIED_MEASURE_SPEC:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lorg/chromium/content/browser/ContentViewClient;->UNSPECIFIED_MEASURE_SPEC:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldPropagateKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 187
    const/16 v0, 0x52

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-eq p0, v0, :cond_0

    const/16 v0, 0x19

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x18

    if-ne p0, v0, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doesPerformWebSearch()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getContentVideoViewClient()Lorg/chromium/content/browser/ContentVideoViewClient;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesiredHeightMeasureSpec()I
    .locals 1

    .prologue
    .line 223
    sget v0, Lorg/chromium/content/browser/ContentViewClient;->UNSPECIFIED_MEASURE_SPEC:I

    return v0
.end method

.method public getDesiredWidthMeasureSpec()I
    .locals 1

    .prologue
    .line 212
    sget v0, Lorg/chromium/content/browser/ContentViewClient;->UNSPECIFIED_MEASURE_SPEC:I

    return v0
.end method

.method public getWebActionModeCallback(Landroid/content/Context;Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;)Lorg/chromium/content/browser/WebActionModeCallback;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionHandler"    # Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    .prologue
    .line 93
    new-instance v0, Lorg/chromium/content/browser/WebActionModeCallback;

    invoke-direct {v0, p1, p2}, Lorg/chromium/content/browser/WebActionModeCallback;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;)V

    return-object v0
.end method

.method public isExternalScrollActive()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public isJavascriptEnabled()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public onBackgroundColorChanged(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 44
    return-void
.end method

.method public onContextualActionBarHidden()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onContextualActionBarShown()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onFocusedNodeEditabilityChanged(Z)V
    .locals 0
    .param p1, "editable"    # Z

    .prologue
    .line 84
    return-void
.end method

.method public onImeEvent()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onOffsetsForFullscreenChanged(FFF)V
    .locals 0
    .param p1, "topControlsOffsetYPix"    # F
    .param p2, "contentOffsetYPix"    # F
    .param p3, "overdrawBottomHeightPix"    # F

    .prologue
    .line 54
    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentUrl"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 133
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p2, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "cr.ContentViewClient"

    const-string v3, "Bad URI %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v6

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "cr.ContentViewClient"

    const-string v3, "No application can handle %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 37
    return-void
.end method

.method public performWebSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public shouldBlockMediaRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 59
    .local v0, "keyCode":I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewClient;->shouldPropagateKey(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x33

    if-eq v0, v2, :cond_0

    const/16 v2, 0x86

    if-eq v0, v2, :cond_0

    .line 68
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
