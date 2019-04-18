.class Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "UrlLoader_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/UrlLoader$FollowRedirectResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/UrlLoader_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UrlLoaderFollowRedirectResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;
    .param p3, "requestId"    # J

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p1, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 522
    iput-object p2, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 523
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->mRequestId:J

    .line 524
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 511
    check-cast p1, Lorg/chromium/mojom/mojo/UrlResponse;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/UrlResponse;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/UrlResponse;)V
    .locals 8
    .param p1, "response"    # Lorg/chromium/mojom/mojo/UrlResponse;

    .prologue
    .line 528
    new-instance v1, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParams;-><init>()V

    .line 529
    .local v1, "_response":Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParams;
    iput-object p1, v1, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    .line 530
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 537
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 538
    return-void
.end method
