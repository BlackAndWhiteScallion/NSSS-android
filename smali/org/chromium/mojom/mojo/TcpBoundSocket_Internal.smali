.class Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal;
.super Ljava/lang/Object;
.source "TcpBoundSocket_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketConnectResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketConnectResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketConnectResponseParams;,
        Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketConnectParams;,
        Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParams;,
        Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningParams;,
        Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$Stub;,
        Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final CONNECT_ORDINAL:I = 0x1

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/TcpBoundSocket;",
            "Lorg/chromium/mojom/mojo/TcpBoundSocket$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final START_LISTENING_ORDINAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    return-void
.end method
