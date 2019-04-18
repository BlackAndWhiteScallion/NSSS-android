.class public Lorg/xwalk/core/internal/XWalkSettingsBridge;
.super Lorg/xwalk/core/internal/XWalkSettingsInternal;
.source "XWalkSettingsBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

.field private setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;-><init>()V

    .line 48
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUseWideViewPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 70
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUseWideViewPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 89
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 111
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 130
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 152
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 171
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setInitialPageScale"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 190
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setTextZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 212
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getTextZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 231
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDefaultFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 253
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getDefaultFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 272
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDefaultFixedFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 294
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getDefaultFixedFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 313
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSupportZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 335
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "supportZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 354
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBuiltInZoomControls"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 376
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getBuiltInZoomControls"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 398
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "supportsMultiTouchZoomForTest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 27
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .line 28
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->reflectionInit()V

    .line 29
    return-void
.end method


# virtual methods
.method public getAcceptLanguages()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesSuper()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAcceptLanguagesSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_1

    .line 144
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAcceptLanguages()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 149
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 146
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAcceptLanguages()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getBuiltInZoomControls()Z
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsSuper()Z

    move-result v0

    .line 361
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getBuiltInZoomControlsSuper()Z
    .locals 2

    .prologue
    .line 367
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 368
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBuiltInZoomControls()Z

    move-result v0

    .line 373
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 370
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBuiltInZoomControls()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getDefaultFixedFontSize()I
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeSuper()I

    move-result v0

    .line 279
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultFixedFontSizeSuper()I
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 286
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDefaultFixedFontSize()I

    move-result v0

    .line 291
    .local v0, "ret":I
    :goto_0
    return v0

    .line 288
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDefaultFixedFontSize()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getDefaultFontSize()I
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeSuper()I

    move-result v0

    .line 238
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultFontSizeSuper()I
    .locals 2

    .prologue
    .line 244
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 245
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDefaultFontSize()I

    move-result v0

    .line 250
    .local v0, "ret":I
    :goto_0
    return v0

    .line 247
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDefaultFontSize()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getTextZoom()I
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomSuper()I

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getTextZoomSuper()I
    .locals 2

    .prologue
    .line 203
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 204
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getTextZoom()I

    move-result v0

    .line 209
    .local v0, "ret":I
    :goto_0
    return v0

    .line 206
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getTextZoom()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getUseWideViewPort()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortSuper()Z

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getUseWideViewPortSuper()Z
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 62
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUseWideViewPort()Z

    move-result v0

    .line 67
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 64
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUseWideViewPort()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringSuper()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserAgentStringSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_1

    .line 103
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 105
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 402
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 403
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v2, "XWalkSettings"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 407
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectConstructor;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v6

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    .line 410
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "setUseWideViewPort"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 412
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getUseWideViewPort"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 414
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "setUserAgentString"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 416
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getUserAgentString"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 418
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "setAcceptLanguages"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 420
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getAcceptLanguages"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 422
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "setInitialPageScale"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 424
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "setTextZoom"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 426
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getTextZoom"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 428
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "setDefaultFontSize"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 430
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getDefaultFontSize"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 432
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "setDefaultFixedFontSize"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 434
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getDefaultFixedFontSize"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 436
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "setSupportZoom"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 438
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "supportZoom"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 440
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "setBuiltInZoomControls"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 442
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getBuiltInZoomControls"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 444
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "supportsMultiTouchZoomForTest"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 3
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesSuper(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAcceptLanguagesSuper(Ljava/lang/String;)V
    .locals 1
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 124
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAcceptLanguages(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAcceptLanguages(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsSuper(Z)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBuiltInZoomControlsSuper(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 347
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 348
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBuiltInZoomControls(Z)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBuiltInZoomControls(Z)V

    goto :goto_0
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeSuper(I)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDefaultFixedFontSizeSuper(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 266
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDefaultFixedFontSize(I)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDefaultFixedFontSize(I)V

    goto :goto_0
.end method

.method public setDefaultFontSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeSuper(I)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDefaultFontSizeSuper(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 225
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDefaultFontSize(I)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDefaultFontSize(I)V

    goto :goto_0
.end method

.method public setInitialPageScale(F)V
    .locals 4
    .param p1, "scaleInPercent"    # F

    .prologue
    .line 156
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScaleSuper(F)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setInitialPageScaleSuper(F)V
    .locals 1
    .param p1, "scaleInPercent"    # F

    .prologue
    .line 164
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 165
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setInitialPageScale(F)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setInitialPageScale(F)V

    goto :goto_0
.end method

.method public setSupportZoom(Z)V
    .locals 4
    .param p1, "support"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoomSuper(Z)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSupportZoomSuper(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 307
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportZoom(Z)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportZoom(Z)V

    goto :goto_0
.end method

.method public setTextZoom(I)V
    .locals 4
    .param p1, "textZoom"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomSuper(I)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTextZoomSuper(I)V
    .locals 1
    .param p1, "textZoom"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 184
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setTextZoom(I)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setTextZoom(I)V

    goto :goto_0
.end method

.method public setUseWideViewPort(Z)V
    .locals 4
    .param p1, "use"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortSuper(Z)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUseWideViewPortSuper(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 41
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 42
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUseWideViewPort(Z)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUseWideViewPort(Z)V

    goto :goto_0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringSuper(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUserAgentStringSuper(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 83
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUserAgentString(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public supportZoom()Z
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomSuper()Z

    move-result v0

    .line 320
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public supportZoomSuper()Z
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 327
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportZoom()Z

    move-result v0

    .line 332
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 329
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportZoom()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public supportsMultiTouchZoomForTest()Z
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestSuper()Z

    move-result v0

    .line 383
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public supportsMultiTouchZoomForTestSuper()Z
    .locals 2

    .prologue
    .line 389
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 390
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomForTest()Z

    move-result v0

    .line 395
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 392
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomForTest()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method
