.class Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "UdpSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/UdpSocket_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UdpSocketConnectResponseParamsProxyToResponder"
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
    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput-object p1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 859
    iput-object p2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 860
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->mRequestId:J

    .line 861
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 848
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkError;

    check-cast p2, Lorg/chromium/mojom/mojo/NetAddress;

    check-cast p3, Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/NetworkError;Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/NetworkError;Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 7
    .param p1, "result"    # Lorg/chromium/mojom/mojo/NetworkError;
    .param p2, "localAddr"    # Lorg/chromium/mojom/mojo/NetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojom/mojo/NetworkError;",
            "Lorg/chromium/mojom/mojo/NetAddress;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/mojo/UdpSocketReceiver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "receiver":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<Lorg/chromium/mojom/mojo/UdpSocketReceiver;>;"
    const/4 v6, 0x2

    .line 865
    new-instance v1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;-><init>()V

    .line 866
    .local v1, "_response":Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;
    iput-object p1, v1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 867
    iput-object p2, v1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->localAddr:Lorg/chromium/mojom/mojo/NetAddress;

    .line 868
    iput-object p3, v1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 869
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    iget-wide v4, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v6, v6, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 876
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 877
    return-void
.end method
