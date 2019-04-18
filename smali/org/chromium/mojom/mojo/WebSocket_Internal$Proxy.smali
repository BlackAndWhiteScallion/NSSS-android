.class final Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "WebSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/WebSocket$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/WebSocket_Internal;
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
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 50
    return-void
.end method


# virtual methods
.method public close(SLjava/lang/String;)V
    .locals 5
    .param p1, "code"    # S
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;-><init>()V

    .line 91
    .local v0, "_message":Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;
    iput-short p1, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->code:S

    .line 92
    iput-object p2, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->reason:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 97
    return-void
.end method

.method public connect(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojom/mojo/WebSocketClient;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "protocols"    # [Ljava/lang/String;
    .param p3, "origin"    # Ljava/lang/String;
    .param p4, "sendStream"    # Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .param p5, "client"    # Lorg/chromium/mojom/mojo/WebSocketClient;

    .prologue
    .line 54
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;-><init>()V

    .line 55
    .local v0, "_message":Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;
    iput-object p1, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    .line 56
    iput-object p2, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    .line 57
    iput-object p3, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    .line 58
    iput-object p4, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 59
    iput-object p5, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    .line 60
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 64
    return-void
.end method

.method public flowControl(J)V
    .locals 5
    .param p1, "quota"    # J

    .prologue
    .line 80
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;-><init>()V

    .line 81
    .local v0, "_message":Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;
    iput-wide p1, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->quota:J

    .line 82
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 86
    return-void
.end method

.method public send(ZII)V
    .locals 5
    .param p1, "fin"    # Z
    .param p2, "type"    # I
    .param p3, "numBytes"    # I

    .prologue
    .line 68
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;-><init>()V

    .line 69
    .local v0, "_message":Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;
    iput-boolean p1, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    .line 70
    iput p2, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    .line 71
    iput p3, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    .line 72
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 76
    return-void
.end method
