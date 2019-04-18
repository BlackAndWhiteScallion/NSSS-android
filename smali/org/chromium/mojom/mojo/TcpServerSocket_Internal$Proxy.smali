.class final Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "TcpServerSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/TcpServerSocket$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/TcpServerSocket_Internal;
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
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 47
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/TcpServerSocket$AcceptResponse;)V
    .locals 8
    .param p1, "sendStream"    # Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .param p2, "receiveStream"    # Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .param p4, "callback"    # Lorg/chromium/mojom/mojo/TcpServerSocket$AcceptResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;",
            "Lorg/chromium/mojo/system/DataPipe$ProducerHandle;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/mojo/TcpConnectedSocket;",
            ">;",
            "Lorg/chromium/mojom/mojo/TcpServerSocket$AcceptResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "clientSocket":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<Lorg/chromium/mojom/mojo/TcpConnectedSocket;>;"
    new-instance v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;-><init>()V

    .line 52
    .local v0, "_message":Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;
    iput-object p1, v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 53
    iput-object p2, v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    .line 54
    iput-object p3, v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 55
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParamsForwardToCallback;

    invoke-direct {v3, p4}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/TcpServerSocket$AcceptResponse;)V

    invoke-interface {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 63
    return-void
.end method
