.class Lorg/chromium/mojom/mojo/WebSocketClient_Internal;
.super Ljava/lang/Object;
.source "WebSocketClient_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;,
        Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;,
        Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;,
        Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;,
        Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;,
        Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Stub;,
        Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final DID_CLOSE_ORDINAL:I = 0x4

.field private static final DID_CONNECT_ORDINAL:I = 0x0

.field private static final DID_FAIL_ORDINAL:I = 0x3

.field private static final DID_RECEIVE_DATA_ORDINAL:I = 0x1

.field private static final DID_RECEIVE_FLOW_CONTROL_ORDINAL:I = 0x2

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/WebSocketClient;",
            "Lorg/chromium/mojom/mojo/WebSocketClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    return-void
.end method
