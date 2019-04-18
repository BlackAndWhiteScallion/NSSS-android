.class Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "UrlLoader_Internal.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/UrlLoader_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UrlLoaderStartResponseParamsForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/mojom/mojo/UrlLoader$StartResponse;


# direct methods
.method constructor <init>(Lorg/chromium/mojom/mojo/UrlLoader$StartResponse;)V
    .locals 0
    .param p1, "callback"    # Lorg/chromium/mojom/mojo/UrlLoader$StartResponse;

    .prologue
    .line 302
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 303
    iput-object p1, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/UrlLoader$StartResponse;

    .line 304
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 7
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v4, 0x0

    .line 309
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    .line 311
    .local v2, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    .line 312
    .local v1, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 320
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v4

    .line 316
    .restart local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;

    move-result-object v3

    .line 317
    .local v3, "response":Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;
    iget-object v5, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/UrlLoader$StartResponse;

    iget-object v6, v3, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    invoke-interface {v5, v6}, Lorg/chromium/mojom/mojo/UrlLoader$StartResponse;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    const/4 v4, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    .end local v3    # "response":Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    goto :goto_0
.end method
