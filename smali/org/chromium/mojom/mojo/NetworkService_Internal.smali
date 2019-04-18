.class Lorg/chromium/mojom/mojo/NetworkService_Internal;
.super Ljava/lang/Object;
.source "NetworkService_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParams;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerResponseParams;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParams;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;,
        Lorg/chromium/mojom/mojo/NetworkService_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final CREATE_HTTP_SERVER_ORDINAL:I = 0x3

.field private static final CREATE_TCP_BOUND_SOCKET_ORDINAL:I = 0x0

.field private static final CREATE_TCP_CONNECTED_SOCKET_ORDINAL:I = 0x1

.field private static final CREATE_UDP_SOCKET_ORDINAL:I = 0x2

.field private static final GET_MIME_TYPE_FROM_FILE_ORDINAL:I = 0x4

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/NetworkService;",
            "Lorg/chromium/mojom/mojo/NetworkService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    return-void
.end method
