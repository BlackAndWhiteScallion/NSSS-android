.class final Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "WebSocketClient_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/WebSocketClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/WebSocketClient_Internal;
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
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 51
    return-void
.end method


# virtual methods
.method public didClose(ZSLjava/lang/String;)V
    .locals 5
    .param p1, "wasClean"    # Z
    .param p2, "code"    # S
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;-><init>()V

    .line 100
    .local v0, "_message":Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;
    iput-boolean p1, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->wasClean:Z

    .line 101
    iput-short p2, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->code:S

    .line 102
    iput-object p3, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->reason:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 107
    return-void
.end method

.method public didConnect(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;)V
    .locals 5
    .param p1, "selectedSubprotocol"    # Ljava/lang/String;
    .param p2, "extensions"    # Ljava/lang/String;
    .param p3, "receiveStream"    # Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .prologue
    .line 55
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;-><init>()V

    .line 56
    .local v0, "_message":Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;
    iput-object p1, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->selectedSubprotocol:Ljava/lang/String;

    .line 57
    iput-object p2, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->extensions:Ljava/lang/String;

    .line 58
    iput-object p3, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 59
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 63
    return-void
.end method

.method public didFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;-><init>()V

    .line 90
    .local v0, "_message":Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;
    iput-object p1, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;->message:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 95
    return-void
.end method

.method public didReceiveData(ZII)V
    .locals 5
    .param p1, "fin"    # Z
    .param p2, "type"    # I
    .param p3, "numBytes"    # I

    .prologue
    .line 67
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;-><init>()V

    .line 68
    .local v0, "_message":Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;
    iput-boolean p1, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;->fin:Z

    .line 69
    iput p2, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;->type:I

    .line 70
    iput p3, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;->numBytes:I

    .line 71
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 75
    return-void
.end method

.method public didReceiveFlowControl(J)V
    .locals 5
    .param p1, "quota"    # J

    .prologue
    .line 79
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;-><init>()V

    .line 80
    .local v0, "_message":Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;
    iput-wide p1, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->quota:J

    .line 81
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 85
    return-void
.end method
