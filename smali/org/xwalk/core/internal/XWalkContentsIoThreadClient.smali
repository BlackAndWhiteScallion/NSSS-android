.class public abstract Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;
.super Ljava/lang/Object;
.source "XWalkContentsIoThreadClient.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCacheMode()I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract newLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract shouldBlockContentUrls()Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract shouldBlockFileUrls()Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract shouldBlockNetworkLoads()Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method protected shouldInterceptRequest(Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isMainFrame"    # Z
    .param p3, "hasUserGesture"    # Z
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "requestHeaderNames"    # [Ljava/lang/String;
    .param p6, "requestHeaderValues"    # [Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 47
    new-instance v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    invoke-direct {v1}, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;-><init>()V

    .line 49
    .local v1, "request":Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;
    iput-object p1, v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->url:Ljava/lang/String;

    .line 50
    iput-boolean p2, v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->isMainFrame:Z

    .line 51
    iput-boolean p3, v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->hasUserGesture:Z

    .line 52
    iput-object p4, v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->method:Ljava/lang/String;

    .line 53
    new-instance v2, Ljava/util/HashMap;

    array-length v3, p5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->requestHeaders:Ljava/util/HashMap;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p5

    if-ge v0, v2, :cond_0

    .line 55
    iget-object v2, v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->requestHeaders:Ljava/util/HashMap;

    aget-object v3, p5, v0

    aget-object v4, p6, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, v1}, Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;->shouldInterceptRequest(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v2

    return-object v2
.end method

.method public abstract shouldInterceptRequest(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
.end method
