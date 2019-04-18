.class public Lorg/chromium/content_public/browser/LoadUrlParams;
.super Ljava/lang/Object;
.source "LoadUrlParams.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field mBaseUrlForDataUrl:Ljava/lang/String;

.field mCanLoadLocalResources:Z

.field private mExtraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mHasUserGesture:Z

.field mIntentReceivedTimestamp:J

.field mIsRendererInitiated:Z

.field mLoadUrlType:I

.field mPostData:[B

.field mReferrer:Lorg/chromium/content_public/common/Referrer;

.field mShouldReplaceCurrentEntry:Z

.field mTransitionType:I

.field mUaOverrideOption:I

.field mUrl:Ljava/lang/String;

.field private mVerbatimHeaders:Ljava/lang/String;

.field mVirtualUrlForDataUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "transitionType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    .line 60
    iput p2, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mTransitionType:I

    .line 64
    iput v1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    .line 65
    iput v1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUaOverrideOption:I

    .line 66
    iput-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mPostData:[B

    .line 67
    iput-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVirtualUrlForDataUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static createLoadDataParams(Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "isBase64Encoded"    # Z

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->createLoadDataParams(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    return-object v0
.end method

.method public static createLoadDataParams(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "isBase64Encoded"    # Z
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "data:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "dataUrl":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_0
    if-eqz p2, :cond_1

    .line 98
    const-string v2, ";base64"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setLoadType(I)V

    .line 105
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 106
    return-object v1
.end method

.method public static createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "isBase64Encoded"    # Z
    .param p3, "baseUrl"    # Ljava/lang/String;
    .param p4, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    return-object v0
.end method

.method public static createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "isBase64Encoded"    # Z
    .param p3, "baseUrl"    # Ljava/lang/String;
    .param p4, "historyUrl"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0, p1, p2, p5}, Lorg/chromium/content_public/browser/LoadUrlParams;->createLoadDataParams(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    .line 153
    .local v0, "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    if-eqz p3, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    if-eqz p3, :cond_2

    .end local p3    # "baseUrl":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p3}, Lorg/chromium/content_public/browser/LoadUrlParams;->setBaseUrlForDataUrl(Ljava/lang/String;)V

    .line 155
    if-eqz p4, :cond_3

    .end local p4    # "historyUrl":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, p4}, Lorg/chromium/content_public/browser/LoadUrlParams;->setVirtualUrlForDataUrl(Ljava/lang/String;)V

    .line 157
    :cond_1
    return-object v0

    .line 154
    .restart local p3    # "baseUrl":Ljava/lang/String;
    .restart local p4    # "historyUrl":Ljava/lang/String;
    :cond_2
    const-string p3, "about:blank"

    goto :goto_0

    .line 155
    .end local p3    # "baseUrl":Ljava/lang/String;
    :cond_3
    const-string p4, "about:blank"

    goto :goto_1
.end method

.method public static createLoadHttpPostParams(Ljava/lang/String;[B)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "postData"    # [B
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 168
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setLoadType(I)V

    .line 170
    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 171
    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setPostData([B)V

    .line 172
    return-object v0
.end method

.method private getExtraHeadersString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "addTerminator"    # Z

    .prologue
    .line 270
    iget-object v3, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 283
    :goto_0
    return-object v3

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v1, "headerBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 274
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 281
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static native nativeIsDataScheme(Ljava/lang/String;)Z
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCanLoadLocalResources()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mCanLoadLocalResources:Z

    return v0
.end method

.method public getExtraHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getExtraHeadersString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    const-string v0, "\n"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getExtraHeadersString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraHttpRequestHeadersString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    const-string v0, "\r\n"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getExtraHeadersString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasUserGesture()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mHasUserGesture:Z

    return v0
.end method

.method public getIntentReceivedTimestamp()J
    .locals 2

    .prologue
    .line 429
    iget-wide v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIntentReceivedTimestamp:J

    return-wide v0
.end method

.method public getIsRendererInitiated()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIsRendererInitiated:Z

    return v0
.end method

.method public getLoadUrlType()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    return v0
.end method

.method public getPostData()[B
    .locals 1
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mPostData:[B

    return-object v0
.end method

.method public getReferrer()Lorg/chromium/content_public/common/Referrer;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mReferrer:Lorg/chromium/content_public/common/Referrer;

    return-object v0
.end method

.method public getShouldReplaceCurrentEntry()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mShouldReplaceCurrentEntry:Z

    return v0
.end method

.method public getTransitionType()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mTransitionType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentOverrideOption()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUaOverrideOption:I

    return v0
.end method

.method public getVerbatimHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVerbatimHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualUrlForDataUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVirtualUrlForDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isBaseUrlDataScheme()Z
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 452
    const/4 v0, 0x1

    .line 454
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->nativeIsDataScheme(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBaseUrlForDataUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setCanLoadLocalResources(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 368
    iput-boolean p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mCanLoadLocalResources:Z

    .line 369
    return-void
.end method

.method public setExtraHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    .line 240
    return-void
.end method

.method public setHasUserGesture(Z)V
    .locals 0
    .param p1, "hasUserGesture"    # Z

    .prologue
    .line 438
    iput-boolean p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mHasUserGesture:Z

    .line 439
    return-void
.end method

.method public setIntentReceivedTimestamp(J)V
    .locals 1
    .param p1, "intentReceivedTimestamp"    # J

    .prologue
    .line 422
    iput-wide p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIntentReceivedTimestamp:J

    .line 423
    return-void
.end method

.method public setIsRendererInitiated(Z)V
    .locals 0
    .param p1, "rendererInitiated"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIsRendererInitiated:Z

    .line 388
    return-void
.end method

.method public setLoadType(I)V
    .locals 0
    .param p1, "loadType"    # I

    .prologue
    .line 201
    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    .line 202
    return-void
.end method

.method public setOverrideUserAgent(I)V
    .locals 0
    .param p1, "uaOption"    # I

    .prologue
    .line 306
    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUaOverrideOption:I

    .line 307
    return-void
.end method

.method public setPostData([B)V
    .locals 0
    .param p1, "postData"    # [B
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .prologue
    .line 324
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mPostData:[B

    .line 325
    return-void
.end method

.method public setReferrer(Lorg/chromium/content_public/common/Referrer;)V
    .locals 0
    .param p1, "referrer"    # Lorg/chromium/content_public/common/Referrer;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mReferrer:Lorg/chromium/content_public/common/Referrer;

    .line 224
    return-void
.end method

.method public setShouldReplaceCurrentEntry(Z)V
    .locals 0
    .param p1, "shouldReplaceCurrentEntry"    # Z

    .prologue
    .line 406
    iput-boolean p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mShouldReplaceCurrentEntry:Z

    .line 407
    return-void
.end method

.method public setTransitionType(I)V
    .locals 0
    .param p1, "transitionType"    # I

    .prologue
    .line 209
    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mTransitionType:I

    .line 210
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setVerbatimHeaders(Ljava/lang/String;)V
    .locals 0
    .param p1, "headers"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVerbatimHeaders:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setVirtualUrlForDataUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "virtualUrl"    # Ljava/lang/String;

    .prologue
    .line 360
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVirtualUrlForDataUrl:Ljava/lang/String;

    .line 361
    return-void
.end method
