.class final Lorg/chromium/mojom/mojo/CookieStore_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "CookieStore_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/CookieStore$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/CookieStore_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 48
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lorg/chromium/mojom/mojo/CookieStore$GetResponse;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/mojom/mojo/CookieStore$GetResponse;

    .prologue
    .line 52
    new-instance v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;-><init>()V

    .line 53
    .local v0, "_message":Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;
    iput-object p1, v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->url:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsForwardToCallback;

    invoke-direct {v3, p2}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/CookieStore$GetResponse;)V

    invoke-interface {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 62
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojom/mojo/CookieStore$SetResponse;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/chromium/mojom/mojo/CookieStore$SetResponse;

    .prologue
    const/4 v6, 0x1

    .line 66
    new-instance v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetParams;-><init>()V

    .line 67
    .local v0, "_message":Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetParams;
    iput-object p1, v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetParams;->url:Ljava/lang/String;

    .line 68
    iput-object p2, v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetParams;->cookie:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsForwardToCallback;

    invoke-direct {v3, p3}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/CookieStore$SetResponse;)V

    invoke-interface {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 77
    return-void
.end method
