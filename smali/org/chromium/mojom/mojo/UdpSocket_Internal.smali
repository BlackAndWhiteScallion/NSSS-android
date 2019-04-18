.class Lorg/chromium/mojom/mojo/UdpSocket_Internal;
.super Ljava/lang/Object;
.source "UdpSocket_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketReceiveMoreParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeResponseParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseResponseParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseParams;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;,
        Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final ALLOW_ADDRESS_REUSE_ORDINAL:I = 0x0

.field private static final BIND_ORDINAL:I = 0x1

.field private static final CONNECT_ORDINAL:I = 0x2

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/UdpSocket;",
            "Lorg/chromium/mojom/mojo/UdpSocket$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final NEGOTIATE_MAX_PENDING_SEND_REQUESTS_ORDINAL:I = 0x5

.field private static final RECEIVE_MORE_ORDINAL:I = 0x6

.field private static final SEND_TO_ORDINAL:I = 0x7

.field private static final SET_RECEIVE_BUFFER_SIZE_ORDINAL:I = 0x4

.field private static final SET_SEND_BUFFER_SIZE_ORDINAL:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1711
    return-void
.end method
